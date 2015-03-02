using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Windows.Forms;
using Com.OnForm32;

namespace CreateSN
{
    public partial class Form1 : Form
    {
        private const int defaultValidDays = 30;
        private const string PreUserName = "User Name:";
        private const string PreCompName = "Company Name:";
        private const string PreValidDate = "Validation Date:";
        private const string PreUID = "UID:";
        private const string PreKey = "Key:";
        private const string PreLicense = "License:";
        private const string PreCRC = "CRC:";

        public Form1()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text.Length <= 0 || textBox1.Text.Trim().Length <= 0)
            {
                textBox1.Text = "";
                MessageBox.Show("申し込みファイルを選択してください。", "エラー");
                return;
            }


            if(dateTimePicker1.Text.Length <= 0 || dateTimePicker1.Text.Trim().Length <= 0)
            {
                dateTimePicker1.Value = DateTime.Today.AddDays(defaultValidDays);
                MessageBox.Show("有効期間を指定してください。", "エラー");
                return;
            }

            string purFileName = textBox1.Text.Trim();
//            string compName = textBox2.Text.Trim();
            string validDate = dateTimePicker1.Text;

            string keyFolder = System.AppDomain.CurrentDomain.BaseDirectory + "Key" + "\\" + DateTime.Now.ToString("yyyyMMdd");

            System.IO.Directory.CreateDirectory(keyFolder);

            string keyFileName = keyFolder + "\\license.txt";
            
            if(creatSN(keyFileName, purFileName, validDate))
            {
                MessageBox.Show("ライセンスファイルが生成されました。", "エラー");
            }
            else
            {
                MessageBox.Show("ライセンスファイルの生成にエラーが発生しました。", "エラー");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();

            ofd.FileName = "purchase.txt";
            ofd.InitialDirectory = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            ofd.Filter =
                "テキストファイル(*.txt)|*.txt|すべてのファイル(*.*)|*.*";
            ofd.FilterIndex = 1;
            ofd.Title = "申し込みファイルを選択してください";
            ofd.RestoreDirectory = true;
            ofd.CheckFileExists = true;
            ofd.CheckPathExists = true;

            //ダイアログを表示する
            if (ofd.ShowDialog() == DialogResult.OK)
            {
                textBox1.Text = ofd.FileName;
            }
        }

        private bool creatSN(string k, string p, string v)
        {
            return OnForm32.makeKeyFile(k, p, v);
        }


    }
}
