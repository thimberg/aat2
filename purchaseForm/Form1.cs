using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Com.OnForm32;

namespace purchaseForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1.Text.Length <= 0 || textBox1.Text.Trim().Length <= 0)
            {
                textBox1.Text = "";
                MessageBox.Show("ユーザ名を入力してください。", "エラー");
                return;
            }

            if (textBox2.Text.Length <= 0 || textBox2.Text.Trim().Length <= 0)
            {
                textBox2.Text = "";
                MessageBox.Show("会社（組織）名を入力してください。", "エラー");
                return;
            }

            string userName = textBox1.Text;
            string compName = textBox2.Text;
            string purFileName = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + "\\purchase.txt";

            if(OnForm32.makePurchase(purFileName, userName, compName))
            {
                MessageBox.Show("申し込み用ファイルが生成しました。\r\n\r\n" + purFileName);
            }
            else
            {
                MessageBox.Show("申し込み用ファイルの生成に失敗しました。。", "エラー");
            }
        }
    }
}
