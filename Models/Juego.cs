public static class Juego
{
    private static string _username;
    private static int _puntajeActual;
    private static int _cantidadPreguntasCorrectas;
    private static List<Pregunta> _preguntas;
    private static List<Respuesta> _respuestas;


    public static void InicializarJuego()
    {
        _username = null;
        _puntajeActual = 0;
        _cantidadPreguntasCorrectas = 0;
    }




}