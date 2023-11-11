using SQLite;
namespace AlcomsurApp.Modelo
{
    public class BDprestamo
    {

        [PrimaryKey, AutoIncrement]
        public int id_prestamo { get; set; }
        public string codigo { get; set; }
        public string hora { get; set; }
        public string fecha { get; set; }

    }
}