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
    public partial class FormAbout : Form
    {
        public FormAbout()
        {
            InitializeComponent();

            label1.Text = Program.toolName;
            label2.Text = Program.version;
            
            label2.Text += "【使用可能残日数：" + Program.validateDays.ToString() + "】";
            if (Program.validateDays < 10) this.button2.Visible = true;
        }

        private void FormAbout_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process p = System.Diagnostics.Process.Start("purchaseForm.exe");
           
        }
    }
}
