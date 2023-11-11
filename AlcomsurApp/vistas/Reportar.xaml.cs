using AlcomsurApp.modelo;
using AlcomsurApp.datos;
using System;
using Xamarin.Forms;
using AlcomsurApp.vistaModelo;
using Xamarin.Forms.Xaml;
using Acr.UserDialogs;
using System.Threading.Tasks;

namespace AlcomsurApp.vistas
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Reportar : ContentPage
    {
        Dreportar dreportar = new Dreportar();

        public Reportar()
        {
            InitializeComponent();
            BindingContext = new VMApp(Navigation);
        }


        private async void btnReportar_Clicked(object sender, EventArgs e)
        {
            if (cboEmpresa.SelectedItem is Mempresa selectedEmpresa)
            {
                if (selectedEmpresa.id != "0")
                {
                    bool cancelar = false;

                    using (var dialog = UserDialogs.Instance.Progress("Enviando Reporte",
                        () => cancelar = true, "Cancelar")){
                        for (int i = 1; i <= 10; i++)
                        {
                            await Task.Delay(1000);
                            if (!cancelar)
                            {
                                dialog.PercentComplete = i * 10;

                            }
                        }
                    }

                    if (!cancelar)
                    {
                        Mreporte item = new Mreporte()
                        {
                            descripcion = txtDescripcion.Text,
                            fecha = ObtenerFecha(),
                            idEmpresa = Convert.ToInt32(selectedEmpresa.id)
                        };

                        await dreportar.EnviarReporte(item);
                    }

                }
                else
                {
                    await DisplayAlert("Error", "Por favor, selecciona una empresa válida.", "OK");
                }
            }
            else
            {
                await DisplayAlert("Error", "Por favor, selecciona una empresa.", "OK");
            }
        }

        private string ObtenerFecha()
        {
            DateTime fechaActual = DateTime.Now;
            return fechaActual.Date.ToString("yyyy-MM-dd");
        }

        private void cboEmpresa_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
