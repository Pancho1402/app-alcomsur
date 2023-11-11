using AlcomsurApp.modelo;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using ZXing;

namespace AlcomsurApp.datos
{
    public class Dreportar
    {

        public async Task EnviarReporte(Mreporte data)
        {
            try
            {
                string apiUrl = $"{App._url}api/reportar";

                var json = JsonConvert.SerializeObject(data);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                using (var httpClient = new HttpClient())
                {
                    try
                    {
                        var response = await httpClient.PostAsync(apiUrl, content);

                        if (response.IsSuccessStatusCode)
                        {
                            var responseBody = await response.Content.ReadAsStringAsync();
                            Console.WriteLine(JsonConvert.SerializeObject(data).ToString());
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
            catch (Exception)
            {

                throw;
            }
        }
    }
}
