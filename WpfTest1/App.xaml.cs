using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace WpfTest1
{
    /// <summary>
    /// App.xaml の相互作用ロジック
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
//            base.OnStartup(e);
            
//            formMain dlg = new formMain();
//            dlg.Show();

//            StartupUri = new Uri("MainWindow.xaml",UriKind.Relative);
            
        }

        private void A_OnStartup(object sender, StartupEventArgs e)
        {
            testForm dlg = new testForm();
            dlg.Show();

        }
    }
}
