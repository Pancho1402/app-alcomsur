﻿using AlcomsurApp.datos;
using AlcomsurApp.vistas;
using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AlcomsurApp
{
    public partial class App : Application
    {

        public static string _url = "";
        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new TabbedPage1());

        }


        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
