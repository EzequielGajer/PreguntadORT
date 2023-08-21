public class Puntaje
{
    public int IdPuntaje { get; set; }
    public string UserName { get; set; }

    public int Puntos { get; set; }
    public DateTime FechaHora { get; set; }
    public int Tiempo { get; set; }

    public Puntaje()
    {

    }

    public Puntaje(int idPuntaje, string username, int puntos, DateTime fechaHora, int tiempo)
    {
        IdPuntaje = idPuntaje;
        UserName = username;
        Puntos = puntos;
        FechaHora = fechaHora;
        Tiempo = tiempo;
    }
}