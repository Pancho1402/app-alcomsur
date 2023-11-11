
using Acr.UserDialogs;
using AlcomsurApp.datos;
using AlcomsurApp.Modelo;
using AlcomsurApp.vistaModelo;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace AlcomsurApp.vistas
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Registrar : ContentPage
    {
        private Dprestamo conexPrestamo;
        private Ddevolucion conexDevolucion;

        public Registrar()
        {
            InitializeComponent();
            BindingContext = new VMApp(Navigation);

            string dbPath = DependencyService.Get<IFileHelper>().GetLocalFilePath("localBD.db3");

            conexPrestamo = new Dprestamo(dbPath);
            conexDevolucion = new Ddevolucion(dbPath);
        }

        private async void btnEntrada_Clicked(object sender, EventArgs e)
        {
            try
            {
                string resultado = await CargarLectorQr();
                BDprestamo item = new BDprestamo
                {
                    fecha = ObtenerFecha(),
                    hora = ObtenerHora(),
                    codigo = resultado
                };

                conexPrestamo.AgregarPrestamo(item);

            }
            catch (Exception)
            {
                throw;
            }
        }

        private async void btnSalida_Clicked(object sender, EventArgs e)
        {
            try
            {
                string resultado = await CargarLectorQr();
                BDdevolucion item = new BDdevolucion
                {
                    fecha = ObtenerFecha(),
                    hora = ObtenerHora(),
                    codigo = resultado
                };

                conexDevolucion.AgregarDevolucion(item);

            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<string> CargarLectorQr()
        {
            var scan = new ZXingScannerPage(new ZXing.Mobile.MobileBarcodeScanningOptions
            {
                PossibleFormats = new List<ZXing.BarcodeFormat>
                {
                    ZXing.BarcodeFormat.EAN_8,
                    ZXing.BarcodeFormat.EAN_13,
                    ZXing.BarcodeFormat.CODE_128,
                    ZXing.BarcodeFormat.QR_CODE
            }
            });

            var scanResultSource = new TaskCompletionSource<string>();

            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopModalAsync();
                    scanResultSource.SetResult(result.Text);
                });
            };

            await Navigation.PushModalAsync(scan);

            return await scanResultSource.Task;
        }

        private string ObtenerHora()
        {
            return DateTime.Now.ToString("hh:mm:ss");
        }
        private string ObtenerFecha()
        {
            DateTime fechaActual = DateTime.Now;
            return fechaActual.Date.ToString("yyyy-MM-dd");
        }

        private async void btnEnviar_Clicked(object sender, EventArgs e)
        {
            bool cancelar = false;

            using (var dialog = UserDialogs.Instance.Progress("Enviando Registro",
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
                List<BDprestamo> listapres = conexPrestamo.ObtenerPrestamo();
                List<BDdevolucion> listadev = conexDevolucion.ObtenerDevolucion();

                if (listadev.Count > 0)
                {
                    await conexDevolucion.EnviarSolicitud(listadev);
                }
                if (listapres.Count > 0)
                {
                    await conexPrestamo.EnviarSolicitud(listapres);
                }
            }
        }
    }
}