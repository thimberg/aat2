using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WpfTest1
{
    static class Program
    {
        [STAThread]
        static void Main()
        {
            testForm3 mainWindow = new testForm3();

            Application.Run(mainWindow);
            
        }
    }
}
