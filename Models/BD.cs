using System.Data.SqlClient;
using Dapper;


public static class BD
{
    private static string _ConnectionString = @"Server=localhost; DataBase=PreguntadOrt; Trusted_Connection=True;";


    private static List<Categoria> _ListadoCategorias = new List<Categoria>();


    public static List<Categoria> ObtenerCategorias()
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string SQL = "SELECT * From Categorias";
            _ListadoCategorias = db.Query<Categoria>(SQL).ToList();
        }
        return _ListadoCategorias;
    }


    private static List<Dificultad> _ListadoDificultades = new List<Dificultad>();


    public static List<Dificultad> ObtenerDificultades()
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string SQL = "SELECT * FROM Dificultades";
            _ListadoDificultades = db.Query<Dificultad>(SQL).ToList();
        }
        return _ListadoDificultades;
    }


    private static List<Pregunta> _ListadoPreguntas = new List<Pregunta>();


    public static List<Pregunta> ObtenerPreguntas(int dificultad, int categoria)
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string SQL = ""


            if (dificultad == -1 && categoria == -1)
            {
                // Si se recibió -1 para ambas categorías, traer todas las preguntas
                SQL = "SELECT * From Preguntas";
                _ListadoPreguntas = db.Query<Pregunta>(SQL).ToList();
                return _ListadoPreguntas;
            }
            else if (dificultad != -1 && categoria == -1)
            {
                // Si se recibió -1 para categoría pero un ID válido para dificultad, traer preguntas de todas las categorías que tengan esa dificultad
                SQL = "SELECT * FROM Preguntas WHERE IdDificultad = @Dificultad";
                _ListadoPreguntas = db.Query<Pregunta>(SQL, new { Dificultad = dificultad}).ToList();
                return _ListadoPreguntas;
            }
            else if (dificultad == -1 && categoria != -1)
            {
                // Si se recibió -1 para dificultad pero un ID válido para categoría, traer preguntas de todas las dificultades que pertenezcan a esa categoría
                SQL = "SELECT * FROM Preguntas WHERE IdCategoria = @Categoria";
                _ListadoPreguntas = db.Query<Pregunta>(SQL, new { Categoria = categoria}).ToList();
                return _ListadoPreguntas;
            }
            else
            {
                // Si se recibieron IDs válidos para ambas categorías, traer preguntas que tengan esa dificultad y categoría
                SQL = "SELECT * FROM Preguntas WHERE IdDificultad = @Dificultad AND IdCategoria = @Categoria";
                _ListadoPreguntas = db.Query<Pregunta>(SQL, new { Dificultad = dificultad, Categoria = categoria}).ToList();
                return _ListadoPreguntas;
            }
        }
    }


    private static List<Respuesta> _ListadoRespuestas = new List<Respuesta>();


    public static List<Respuesta> ObtenerRespuestas(List<Pregunta> _ListadoPreguntas)
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            foreach (Pregunta pregunta in _ListadoPreguntas)
            {
                string SQL = "SELECT * FROM Respuestas WHERE IdPregunta = @idPregunta;";
                List<Respuesta> respuestasPregunta = db.Query<Respuesta>(SQL, new { idPregunta = pregunta.IdPregunta }).ToList();
                _ListadoRespuestas.AddRange(respuestasPregunta);
            }
        }
        return _ListadoRespuestas;
    }
}
