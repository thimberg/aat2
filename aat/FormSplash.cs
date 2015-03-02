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
    public partial class FormSplash : Form
    {
        public FormSplash()
        {
            InitializeComponent();

            label1.Text = Program.toolName;
            if (this.Width > label1.Width)
            {
                label1.Left = (this.Width - label1.Width) / 2;
            }
            else
            {
                label1.Left = 0;
            }
            label2.Text = Program.version;
        }
    }
}
