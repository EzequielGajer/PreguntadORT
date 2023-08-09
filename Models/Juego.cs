public static class Juego
{
    private static string _username = "";
    private static int _puntajeActual = 0;
    private static int _cantidadPreguntasCorrectas = 0;
    private static List<Pregunta> _preguntas = new List<Pregunta>();
    private static List<Respuesta> _respuestas = new List<Respuesta>();
  
    public static void InicializarJuego()
    {
        _username = "";
        _puntajeActual = 0;
        _cantidadPreguntasCorrectas = 0;
        _preguntas.Clear();      
        _respuestas.Clear();   
    }

    public static List<Categoria> ObtenerCategorias()
    {
        return BD.ObtenerCategorias();
    }

    public static List<Dificultad> ObtenerDificultades()
    {
        return BD.ObtenerDificultades();
    }

    public static void CargarPartida(string username, int dificultad, int categoria)
    {
        _username = username;
        _preguntas = BD.ObtenerPreguntas(dificultad, categoria);
        _respuestas = BD.ObtenerRespuestas(_preguntas);
    }

    public static Pregunta ObtenerProximaPregunta()
    {            
        if (_preguntas.Count() > 0)
        {
            Random random = new Random();
            int Azar = random.Next(0, _preguntas.Count);
            return _preguntas[Azar];
        }
        return null;            
    }

    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta)
    {
        List<Respuesta> respuestasPregunta = _respuestas.Where(respuesta => respuesta.IdPregunta == idPregunta).ToList();
        return respuestasPregunta;
    }

    public static bool VerificarRespuesta(int idPregunta, int idRespuesta)
    {    
        bool esCorrecta = false;

        Pregunta preguntaSeleccionada = _preguntas.FirstOrDefault(p => p.IdPregunta == idPregunta);
        Respuesta respuestaSeleccionada = _respuestas.FirstOrDefault(r => r.IdRespuesta == idRespuesta);

        if (preguntaSeleccionada != null && respuestaSeleccionada != null)
        {
            esCorrecta = respuestaSeleccionada.Correcta;

            if (esCorrecta)
            {
                _puntajeActual += 500;
                _cantidadPreguntasCorrectas++;
            }

            _preguntas.Remove(preguntaSeleccionada);
        }

        return esCorrecta;         
    }
}
