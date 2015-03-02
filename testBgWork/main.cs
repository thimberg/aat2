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
    public partial class main : Form
    {
        private BackgroundWorker worker = new BackgroundWorker();

        public main()
        {
            InitializeComponent();
            worker.DoWork += worker_DoWork;
            worker.ProgressChanged += worker_ProgressChanged;
            worker.RunWorkerCompleted += worker_RunWorkerCompleted;
            worker.WorkerReportsProgress = true; 
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.worker.RunWorkerAsync();
        }
 

        private void worker_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bw = (BackgroundWorker)sender;

            // ここで時間のかかる処理 
            for (int i = 0; i < 40; i++)
            {
                System.Threading.Thread.Sleep(100);
                // 処理をするたびに、ReportProgressを呼び出す。ProgressChangedイベントが発行される 
                bw.ReportProgress(0, i);
            }
        }

        void worker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {

            label1.Text = "終了しました";
        }
        private void worker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            int i = (int)e.UserState;
            listBox1.Items.Add("Item " + i.ToString());

            listBox1.TopIndex = listBox1.Items.Count - listBox1.Height / listBox1.ItemHeight;
        }
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox lb = (ListBox)sender;
            if (lb.SelectedItem != null)
                label1.Text = lb.SelectedItem.ToString();
        }

    }
}
