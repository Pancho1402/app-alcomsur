using AlcomsurApp.Modelo;
using Newtonsoft.Json;
using SQLite;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AlcomsurApp.datos
{
    public class Ddevolucion
    {
        SQLiteConnection database;

        public Ddevolucion(string dbPath)
        {
            database = new SQLiteConnection(dbPath);
            database.CreateTable<BDdevolucion>();
        }

        public List<BDdevolucion> ObtenerDevolucion()
        {
            List<BDdevolucion> listaDev = database.Table<BDdevolucion>().ToList();
            return listaDev;
        }

        public int AgregarDevolucion(BDdevolucion item)
        {
            return database.Insert(item);
        }

        public int EliminarTodosLosRegistros()
        {
            string query = "DELETE FROM BDdevolucion";
            return database.Execute(query);
        }

        public async Task EnviarSolicitud(List<BDdevolucion> data)
        {
            string url = $"{App._url}api/devolucion";
            var json = JsonConvert.SerializeObject(data);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            using (var httpClient = new HttpClient())
            {
                try
                {
                    var response = await httpClient.PostAsync(url, content);

                    if (response.IsSuccessStatusCode)
                    {
                        var responseBody = await response.Content.ReadAsStringAsync();

                        EliminarTodosLosRegistros();
                    }
                    else
                    {
                        Console.WriteLine($"Error en la solicitud: {(int)response.StatusCode} - {response.ReasonPhrase}");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error en la solicitud: {ex.ToString()}");
                }
            }
        }
    }
}
