using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace AlcomsurApp.Modelo
{
    public class BDdevolucion
    {
        [PrimaryKey, AutoIncrement]
        public int id_devolucion { get; set; }
        public string codigo { get; set; }
        public string hora { get; set; }
        public string fecha { get; set; }

    }
}
