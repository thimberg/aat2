using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace aat
{
    public partial class FormXLSDiff : Form
    {

        public FormXLSDiff()
        {
            InitializeComponent();
        }

        private void FormXLSDiff_Load(object sender, EventArgs e)
        {
            ///base.OnLoad(e);
            System.Windows.Forms.MdiClient mc = GetMdiClient(this.MdiParent);
            this.Top = 0;
            this.Left = 0;
            this.Width = mc.Width - 5;
            this.Height = mc.Height - 5;

            //readXLStoTab(tabControl1, @"C:\Work\Projects\aat\aat\bin\Debug\Work\HBHUN551-01\Comp\HBHUN551-01_Compare.xlsx");
            //this.ControlBox = false;
            //this.WindowState = FormWindowState.Maximized;

            ((FormRibbon)(this.MdiParent)).myListView1.SendToBack();
            ((FormRibbon)(this.MdiParent)).InfoBox1.SendToBack();
            this.BringToFront();
        }

                //        tab1.Width = this.Width - 20;
                //tab1.Height = this.Height - 40;

        public MdiClient GetMdiClient(Form f)
        {
            foreach (System.Windows.Forms.Control c in f.Controls)
                if (c is System.Windows.Forms.MdiClient)
                    return (System.Windows.Forms.MdiClient)c;
            return null;
        }

        private void FormXLSDiff_Leave(object sender, EventArgs e)
        {
            ((FormRibbon)(this.MdiParent)).myListView1.BringToFront();
            ((FormRibbon)(this.MdiParent)).InfoBox1.BringToFront();
            this.SendToBack();
        }
    }
}
