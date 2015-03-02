using System;
using System.Windows;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using System.Runtime.InteropServices;

namespace aat
{
    public partial class formMain : Form
    {
        private ContextMenuStrip listboxContextMenu;

        public formMain()
        {
            InitializeComponent();

            this.Text = Program.toolName;

            if (Program.validateDays <= 10)
            {
                this.Text += "【使用可能残日数：" + Program.validateDays.ToString() + "】";
            }

            button3.Visible = false;
            button3.Enabled = false;
            button5.Visible = false;
            button5.Enabled = false;

        }

        private void formMain_Load(object sender, EventArgs e)
        {
            listboxContextMenu = new ContextMenuStrip();
            listboxContextMenu.Opening += new CancelEventHandler(listboxContextMenu_Opening);

            InfoBox1.ContextMenuStrip = listboxContextMenu;
        }

        private void formMain_Resize(object sender, EventArgs e)
        {
            if (button1.Width < (int)(this.Width * 0.15))
            {
                myListView1.Height = (int)(this.Height * 0.6);
                myListView1.Width = (int)(this.Width * 0.85);

                button1.Left = button2.Left
                    = button3.Left = button4.Left 
                    = button5.Left = button6.Left 
                    = button7.Left 
                    = myListView1.Width + ((int)(this.Width * 0.15) - button1.Width) / 2;
                allCheck.Top = myListView1.Height + 10;
                InfoBox1.Width = myListView1.Width;
                InfoBox1.Top = myListView1.Height + 30;
                InfoBox1.Height = (int)(this.Height * 0.4) - 80;
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox lb = (ListBox)sender;
            //if (lb.SelectedItem != null)
            //    label1.Text = lb.SelectedItem.ToString();
        }

        // 実行
        private void button2_Click(object sender, EventArgs e)
        {
            UnitPerform.perform(sender, e);
        }

        //　実行　取り消し
        private void button3_Click(object sender, EventArgs e)
        {
            UnitPerform.performCancel(sender, e);
        }

        // 結果出力
        private void button4_Click(object sender, EventArgs e)
        {
            UnitCompare.export(sender, e);
        }

        // 結果出力 取り消し
        private void button5_Click(object sender, EventArgs e)
        {
            UnitCompare.exportCancel(sender, e);
        }

        // 一括実行
        private void button6_Click(object sender, EventArgs e)
        {
            Program.allRun = true;

            this.button2.PerformClick();

        }

        // デバッグ
        private void button7_Click(object sender, EventArgs e)
        {
            UnitDebug.addSectionLog(sender, e);
        }

        // データ変換
        private void button1_Click(object sender, EventArgs e)
        {
            UnitPerform.convert(sender, e);
        }

        delegate void AddItem(String msg, MyConst.RET_V level = MyConst.RET_V.INFO);

        public void WriteInfoMsg(String msg, MyConst.RET_V level = MyConst.RET_V.INFO)
        {

            if (this.InfoBox1.InvokeRequired)
            {
                AddItem a = new AddItem(WriteInfoMsg);
                this.Invoke(a, new object[] { msg, level });
            }
            else
            {
                infoBoxAddMsg(msg, level);
            }
        }

        /// <summary>
        /// インフォボックスにメッセージを追加する
        /// </summary>
        /// <param name="msg">メッセージ内容</param>
        /// <param name="level">メッセージレベル(INFO,WARN,ERROR)</param>
        public void infoBoxAddMsg(String msg, MyConst.RET_V level = MyConst.RET_V.INFO)
        {
            Color c = Color.Green;
            if (level == MyConst.RET_V.ERROR)
            {
                c = Color.Red;
            }
            else if (level == MyConst.RET_V.WARN)
            {
                c = Color.OrangeRed;
            }
            else if (level == MyConst.RET_V.INFO)
            {
                c = Color.Green;
            }
            else
            {
                c = Color.Green;
            }

            if (this.InfoBox1.DrawMode == DrawMode.OwnerDrawFixed)
            {
                InfoBox1.Items.Add(new MyListBoxItem(msg, c));
            }
            else
            {
                InfoBox1.Items.Add(msg);
            }

            InfoBox1.TopIndex = InfoBox1.Items.Count - InfoBox1.Height / InfoBox1.ItemHeight;
        }

        private void myListView1_ItemCheck(object sender, ItemCheckedEventArgs e)
        {
            foreach (WorkData wd in Program.workData1)
            {
                if (wd.CaseName == e.Item.Text)
                {
                    wd.Check = e.Item.Checked;
                }
            }
        }

        /// <summary>
        /// リストビューをダブルクリック時の処理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void myListView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            String caseName = ((ListView)sender).SelectedItems[0].Text;

            // エクセルを開く場合
            if (Program.INI.iniDoubleOpen.ToUpper() == "EXCEL")
            {
                WorkData d = null;

                foreach (WorkData wd in Program.workData1)
                {
                    if (wd.CaseName == caseName)
                    {
                        d = wd;
                        break;
                    }
                }

                if (d == null)
                {
                    MessageBox.Show("もう一度選択してください。", "エラー");
                    return;
                }

                if (string.IsNullOrEmpty(d.OutExcelFile))
                {
                    MessageBox.Show("選択されたケースの結果がありません。", "エラー");
                    return;
                }

                if (!System.IO.File.Exists(d.OutExcelFile))
                {
                    MessageBox.Show("選択されたケースの結果ファイルが見つかりません。", "エラー");
                    return;
                }

                try
                {
                    Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                    ExcelApp.Visible = true;

                    Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(d.OutExcelFile);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
                }
            }
            // フォルダを開く場合
            else
            {
                string caseDir = MyConst.workPath + MyCommon.addLeftYen(caseName);
                if (System.IO.Directory.Exists(caseDir))
                {
                    System.Diagnostics.Process.Start(caseDir);
                }
                else
                {
                    MessageBox.Show("選択されたケースのフォルダが見つかりません。", "エラー");
                }
            }

        }


        private void allCheck_CheckedChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem it in myListView1.Items)
            {
                if (allCheck.Checked)
                {
                    it.Checked = true;
                }
                else
                {
                    it.Checked = false;
                }
            }
        }


        /// <summary>
        /// ListBox描画用イベント
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void infoBox1_DrawItem(object sender, DrawItemEventArgs e)
        {
            e.DrawBackground();

            if (e.Index < 0)
            {
                e.DrawFocusRectangle();
                return;
            }

            MyListBoxItem item = InfoBox1.Items[e.Index] as MyListBoxItem;
            if (item != null)
            {
                if ((e.State & DrawItemState.Selected) == DrawItemState.Selected)
                {
                    e.Graphics.FillRectangle(Brushes.CornflowerBlue, e.Bounds);
                }
                else
                {
                    e.Graphics.FillRectangle(Brushes.White, e.Bounds);
                }

                e.Graphics.DrawRectangle(Pens.White, e.Bounds);

                e.Graphics.DrawString(item.Message, InfoBox1.Font, new SolidBrush(item.ItemColor), new PointF(e.Bounds.X, e.Bounds.Y));

                e.DrawFocusRectangle();
            }
            else
            {
            }

            e.DrawFocusRectangle();
        }

        /// <summary>
        /// ボタンの表示（利用可能）、非表示（利用不可）を制御する
        /// </summary>
        /// <param name="showB">表示＆利用可能するボタン</param>
        /// <param name="hideB">非表示＆利用不可するボタン</param>
        /// <param name="flg">ほかのボタンの利用可否</param>
        public void showButton(Button showB, Button hideB, bool flg)
        {
            foreach (Control s in this.Controls)
            {
                if (s is Button)
                {
                    if (s == showB)
                    {
                        s.Enabled = true;
                        s.Visible = true;
                    }
                    else if (s == hideB)
                    {
                        s.Enabled = false;
                        s.Visible = false;
                    }
                    else if (flg)
                    {
                        s.Enabled = true;
                    }
                    else if (!flg)
                    {
                        s.Enabled = false;
                    }
                }
            }
            this.Update();
        }

        public void runButton(bool complete)
        {
            if (complete)
            {
                // 実行完了
                showButton(button2, button3, true); 
            }
            else
            {
                // 実行中
                showButton(button3, button2, false);
            }
        }

        public void expButton(bool complete)
        {
            if (complete)
            {
                // 結果出力完了
                showButton(button4, button5, true);
            }
            else
            {
                // 結果出力中
                showButton(button5, button4, false);
            }
        }

        public void cnvButton(bool complete)
        {
            if (complete)
            {
                // 結果出力完了
                showButton(null, null, true);
            }
            else
            {
                // 結果出力中
                showButton(null, null, false);
            }
        }

        public void debugButton(bool complete)
        {
            if (complete)
            {
                // デバッグ完了
                button7.Enabled = true;
            }
            else
            {
                // デバッグ中
                button7.Enabled = false;
            }
        }

        // backgroundWork用
        public void exportClick()
        {
            button4.PerformClick();
        }


        private void listboxContextMenu_Opening(object sender, CancelEventArgs e)
        {
            //clear the menu and add custom items
            listboxContextMenu.Items.Clear();
            listboxContextMenu.Items.Add("クリア");
        }
        
    }
        
}
