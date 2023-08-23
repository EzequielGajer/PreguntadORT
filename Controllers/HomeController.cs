using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using PreguntadORT.Models;


namespace PreguntadORT.Controllers;


public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;


    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }


    public IActionResult Index()
    {
        return View("Index");
    }


    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        Juego.ReiniciarVidas();


        List<Categoria> categorias = Juego.ObtenerCategorias();
        List<Dificultad> dificultades = Juego.ObtenerDificultades();


        ViewBag.Categorias = categorias;
        ViewBag.Dificultades = dificultades;


        return View("ConfigurarJuego");
    }


    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);

        return RedirectToAction("Jugar", "Home");
    }


    public IActionResult Jugar()
    {
        ViewBag.Username = Juego.username;
        ViewBag.Puntaje = Juego.PuntajeActual;

        Pregunta PreguntaActual = Juego.ObtenerProximaPregunta();
        ViewBag.EsUltimaPregunta = (Juego.ObtenerProximaPregunta() == null);

        if (PreguntaActual == null)
        {
            return View("Fin");
        }

        List<Respuesta> respuestas = Juego.ObtenerProximasRespuestas(PreguntaActual.IdPregunta);
        ViewBag.Foto = PreguntaActual.Foto; // Usar PreguntaActual en lugar de ObtenerProximaPregunta()
        ViewBag.Dificultad = PreguntaActual.IdDificultad;
        ViewBag.Enunciado = PreguntaActual.Enunciado;
        ViewBag.Pregunta = PreguntaActual;
        ViewBag.Respuestas = respuestas;
        return View("Jugar");
    }


    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta, int idDificultad)
    {
        Pregunta pregunta = Juego.ObtenerProximaPregunta();
        List<Respuesta> _ListaRespuestas = Juego.ObtenerProximasRespuestas(pregunta.IdPregunta);

        if (Juego.VerificarRespuesta(idPregunta, idRespuesta, idDificultad))
        {
            ViewBag.Puntaje = Juego.PuntajeActual;
            ViewBag.Resultado = "La respuesta es Correcta!";
        }
        else
        {
            ViewBag.Puntaje = Juego.PuntajeActual;
            ViewBag.Resultado = "La respuesta es Incorrecta!";

            Juego.RestarVida();

            if (Juego.ObtenerVidas() <= 0)
            {
                return View("Derrota");
            }

            foreach (Respuesta recorrerRespuestas in Juego.ObtenerProximasRespuestas(idPregunta))
            {
                if (recorrerRespuestas.Correcta)
                {
                    ViewBag.RespuestaCorrecta = recorrerRespuestas.Contenido;
                }
            }
        }

        ViewBag.ContenidoRespuesta = _ListaRespuestas;
        ViewBag.ContenidoPregunta = pregunta;

        if (Juego.ObtenerProximaPregunta() == null)
    {
        return View("Fin");
    }

    return View("Respuesta");

    }

    public IActionResult RespuestaIncorrecta(int idPregunta, bool esUltimaPregunta)
{
    ViewBag.Resultado = "La respuesta es Incorrecta!";
    ViewBag.Puntaje = Juego.PuntajeActual;

    foreach (Respuesta recorrerRespuestas in Juego.ObtenerProximasRespuestas(idPregunta))
            {
                if (recorrerRespuestas.Correcta)
                {
                    ViewBag.RespuestaCorrecta = recorrerRespuestas.Contenido;
                }
            }

    if (esUltimaPregunta)
    {
        return View("Fin");
    }

    return View("Respuesta"); // Esta es la vista de respuesta incorrecta
}


    public IActionResult Privacy()
    {
        return View();
    }

    public IActionResult Fin()
    {
        return View();
    }


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    public IActionResult HighScores()
    {
        List<Puntaje> puntajes = BD.ObtenerPuntajes();
        return View("HighScores", puntajes);
    }

    [HttpPost]
    public IActionResult InsertarPuntaje(string username, int puntaje)
    {
        BD.InsertarPuntaje(username, puntaje);
        return View("HighScores");
    }
}
