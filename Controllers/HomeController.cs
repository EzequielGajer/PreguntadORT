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


        List<Categoria> categorias = Juego.ObtenerCategorias();
        List<Dificultad> dificultades = Juego.ObtenerDificultades();


        ViewBag.Categorias = categorias;
        ViewBag.Dificultades = dificultades;


        return View("ConfigurarJuego");
    }


    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);
        
        return RedirectToAction("Jugar" , "Home");
    }


    public IActionResult Jugar()
    {
        Pregunta PreguntaActual = Juego.ObtenerProximaPregunta();
        
        if (PreguntaActual == null)
        {
            return View("Fin");
        }
    
        List<Respuesta> respuestas = Juego.ObtenerProximasRespuestas(PreguntaActual.IdPregunta);
        ViewBag.Foto = Juego.ObtenerProximaPregunta().Foto;
        ViewBag.Dificultad = Juego.ObtenerProximaPregunta().IdDificultad;
        ViewBag.Enunciado = Juego.ObtenerProximaPregunta().Enunciado;
        ViewBag.Pregunta = PreguntaActual;
        ViewBag.Respuestas = respuestas;
        return View("Jugar");
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


    [HttpPost]
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        bool respuestaCorrecta = Juego.VerificarRespuesta(idPregunta, idRespuesta);

        if (respuestaCorrecta)
        {
            return View("RespuestaCorrecta");
        }
        else
        {
            return View("RespuestaIncorrecta");
        }
    }

    public IActionResult RespuestaCorrecta()
    {
        ViewBag.MensajeRespuestaCorrecta = "¡Respuesta Correcta!";
        return View("RespuestaCorrecta");
    }

    public IActionResult RespuestaIncorrecta()
    {
        ViewBag.MensajeRespuestaCorrecta = "¡Respuesta Incorrecta!";
        return View("RespuestaIncorrecta");
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
