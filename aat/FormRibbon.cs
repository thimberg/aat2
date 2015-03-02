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
    ////ボタンコントロール配列のフィールドを作成
    //private System.Windows.Forms.Button[] testButtons;

    public partial class FormRibbon : RibbonForm
    {
        private ContextMenuStrip infobox1ContextMenu;
        private ContextMenuStrip infobox2ContextMenu;
        private ContextMenuStrip listviewContextMenu;
        
        private WorkData diffWorkData;  // 不一致項目表示用
        private bool debugDisp;         // デバッグ情報表示モード

        public FormRibbon()
        {
            InitializeComponent();

            this.Text = Program.toolName;

            if (Program.validateDays <= 10)
            {
                this.Text += "【使用可能残日数：" + Program.validateDays.ToString() + "】";
            }
        }

        private void FormRibbon_Load(object sender, EventArgs e)
        {
            debugDisp = false;

            infobox1ContextMenu = new ContextMenuStrip();
            infobox1ContextMenu.Opening += new CancelEventHandler(listbox1ContextMenu_Opening);

            InfoBox1.ContextMenuStrip = infobox1ContextMenu;

            infobox2ContextMenu = new ContextMenuStrip();
            infobox2ContextMenu.Opening += new CancelEventHandler(listbox2ContextMenu_Opening);
            
            InfoBox2.ContextMenuStrip = infobox2ContextMenu;

            listviewContextMenu = new ContextMenuStrip();
            listviewContextMenu.Opening += new CancelEventHandler(listviewContextMenu_Opening);
            myListView1.ContextMenuStrip = listviewContextMenu;
        }

        private void FormRibbon_Resize(object sender, EventArgs e)
        {
            this.SuspendLayout();

            if (this.WindowState != FormWindowState.Minimized)
            {
                splitContainer1.Top = ribbon1.Height + 8;
                splitContainer1.Left = 10;
                splitContainer1.Width = this.Width - 20;
                splitContainer1.Height = this.Height - splitContainer1.Top;
                splitContainer1.SplitterDistance = (int)((this.Height - ribbon1.Height) * 0.5);

                //myListView1.Left = 10;
                //myListView1.Top = ribbon1.Height + 8;
                myListView1.Top = 0;
                myListView1.Left = 0;
                myListView1.Height = (int)((this.Height - ribbon1.Height) * 0.5);
                myListView1.Width = (int)(this.Width - 20);

                //InfoBox1.Left = myListView1.Left;
                //InfoBox1.Top = myListView1.Top + myListView1.Height + 5;
                InfoBox1.Top = 0;
                InfoBox1.Left = 0;
                InfoBox1.Width = myListView1.Width;
                InfoBox1.Height = (int)(this.Height - ribbon1.Height - 8 - myListView1.Height - 10);


                //splitContainer2.Orientation = Orientation.Vertical;
                splitContainer2.Top = ribbon1.Height + 8;
                splitContainer2.Left = 10;
                splitContainer2.Width = this.Width - 20;
                splitContainer2.Height = this.Height - splitContainer2.Top;
                splitContainer2.SplitterDistance = (int)(this.Width * 0.6);

                //tabControl1.Left = 10;
                //tabControl1.Top = ribbon1.Height + 8;
                tabControl1.Left = 0;
                tabControl1.Top = 0;
                tabControl1.Height = (int)(this.Height - ribbon1.Height - 25);
                tabControl1.Width = (int)(this.Width * 0.6);

                foreach (TabPage tp in tabControl1.TabPages)
                {
                    tp.Width = tabControl1.Width;
                    tp.Height = tabControl1.Height;

                    foreach (Control c in tp.Controls)
                    {
                        c.Height = tp.Height;
                        c.Width = tp.Width;
                    }
                }

                //caseName.Left = tabControl1.Width + 15;
                //caseName.Top = tabControl1.Top;
                caseName.Left = 0;
                caseName.Top = 0;
                caseName.Width = this.Width - tabControl1.Width - 30;

                //InfoBox2.Left = tabControl1.Width + 15;
                //InfoBox2.Top = tabControl1.Top + caseName.Height + 1;
                InfoBox2.Left = 0;
                InfoBox2.Top = caseName.Height;
                InfoBox2.Height = tabControl1.Height - caseName.Height;
                InfoBox2.Width = this.Width - tabControl1.Width - 30;


                helpButton1.Top = ribbon1.Top + 28;
                helpButton1.Left = ribbon1.Width - 30;
            }


            this.ResumeLayout();
        }


        // 実行
        void run_Click(object sender, EventArgs e)
        {
            UnitPerform.perform(sender, e);
        }

        // 実行　取り消し
        private void runCancel_Click(object sender, EventArgs e)
        {
            UnitPerform.performCancel(sender, e);
        }

        // 結果出力
        void export_Click(object sender, EventArgs e)
        {
            UnitCompare.export(sender, e);
        }

        // 結果出力 取り消し
        void exportCancel_Click(object sender, EventArgs e)
        {
            UnitCompare.exportCancel(sender, e);
        }

        // 一括実行
        void allRun_Click(object sender, EventArgs e)
        {
            Program.allRun = true;

            this.ribbonButton1.PerformClick();
            
        }

        // データ変換
        void convert_Click(object sender, EventArgs e)
        {
            UnitPerform.convert(sender, e);
        }

        // デバッグ(セクション毎に出力ログ追加)
        void addSectionLog_Click(object sender, EventArgs e)
        {
            UnitDebug.addSectionLog(sender, e);
        }

        // 項目関連ログを表示
        private void addDiffLog_Click(object sender, EventArgs e)
        {
            //UnitDebug.addDiffLog(diffWorkData);
            UnitDebug.showInfo(sender, e);
        }

        // 不一致項目表示
        private void showDiffItem_Click(object sender, EventArgs e)
        {
            if (myListView1.CheckedItems.Count != 1)
            {
                MessageBox.Show("デバッグ対象一つだけを選択してください。");
                return;
            }

            diffWorkData = Program.workData1[myListView1.CheckedIndices[0]];

            string excFile = MyConst.workPath + MyCommon.addLeftYen(diffWorkData.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                                    MyCommon.addLeftYen(diffWorkData.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);
            if (!File.Exists(excFile))
            {
                MessageBox.Show("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + diffWorkData.CaseName + ">", "エラー");
                MyLog.WriteInfo("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + diffWorkData.CaseName + ">");
                return;
            }
            // 全項目のデバッグ情報を追加して、実行する
            UnitDebug.diffDebug(diffWorkData);

            tabControl1.Controls.Clear();
            UnitDebug.readXLStoTab(tabControl1, excFile);

            caseName.Text = diffWorkData.CaseName;

            //myListView1.SendToBack();
            //InfoBox1.SendToBack();
            //splitContainer1.SendToBack();
            splitContainer1.Visible = false;
            myListView1.Visible = false;
            InfoBox1.Visible = false;

            splitContainer2.Visible = true;
            tabControl1.Visible = true;
            caseName.Visible = true;
            InfoBox2.Visible = true;
            InfoBox2.Items.Clear();

            //tabControl1.BringToFront();
            //InfoBox2.BringToFront();
            //splitContainer2.BringToFront();

            showDiffButton(false);
            debugDisp = true;
        }

        // 一覧へ戻る
        private void backCaseList_Click(object sender, EventArgs e)
        {
            splitContainer2.Visible = false;
            //tabControl1.SendToBack();
            //InfoBox2.SendToBack();
            tabControl1.Visible = false;
            caseName.Visible = false;
            InfoBox2.Visible = false;
            //splitContainer2.SendToBack();

            //myListView1.BringToFront();
            //InfoBox1.BringToFront();
            //splitContainer1.BringToFront();
            splitContainer1.Visible = true;
            myListView1.Visible = true;
            InfoBox1.Visible = true;
            
            showDiffButton(true);
            debugDisp = false;
        }

        delegate void AddItem(String msg, MyConst.RET_V level = MyConst.RET_V.INFO);

        public void WriteInfoMsg(String msg, MyConst.RET_V level = MyConst.RET_V.INFO)
        {
            if (debugDisp)
            {
                if (this.InfoBox2.InvokeRequired)
                {
                    AddItem a = new AddItem(WriteInfoMsg);
                    this.Invoke(a, new object[] { msg, level });
                }
                else
                {
                    infoBoxAddMsg(msg, level);
                }
            }
            else
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

            ListBox lb = null;
            if (debugDisp)
            {
                lb = this.InfoBox2;
            }
            else
            {
                lb = this.InfoBox1;
            }

            if (lb.DrawMode == DrawMode.OwnerDrawFixed)
            {
                lb.Items.Add(new MyListBoxItem(msg, c));
            }
            else
            {
                lb.Items.Add(msg);
            }

            lb.TopIndex = lb.Items.Count - lb.Height / lb.ItemHeight;

            int wid = (int)lb.CreateGraphics().MeasureString(msg, lb.Font).Width;
            if (lb.HorizontalExtent < wid) lb.HorizontalExtent = wid;
            
        }

        private void myListView1_ItemChecked(object sender, ItemCheckedEventArgs e)
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
        /// ListBox描画用イベント
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void InfoBox_DrawItem(object sender, DrawItemEventArgs e)
        {
            e.DrawBackground();

            if (e.Index < 0)
            {
                e.DrawFocusRectangle();
                return;
            }

            MyListBoxItem item = ((ListBox)sender).Items[e.Index] as MyListBoxItem;
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

                e.Graphics.DrawString(item.Message, ((ListBox)sender).Font, new SolidBrush(item.ItemColor), new PointF(e.Bounds.X, e.Bounds.Y));

                e.DrawFocusRectangle();
            }
            else
            {
            }

            e.DrawFocusRectangle();
        }

        private void InfoBox_MouseDown(object sender, MouseEventArgs e)
        {
            if (!debugDisp)
            {
                if (e.Button == MouseButtons.Right)
                {
                    ((ListBox)sender).SelectedIndex = ((ListBox)sender).IndexFromPoint(e.Location);
                    if (((ListBox)sender).SelectedIndex != -1)
                    {
                        infobox1ContextMenu.Show();
                    }
                }
            }
            else
            {
                if (e.Button == MouseButtons.Right)
                {
                    ((ListBox)sender).SelectedIndex = ((ListBox)sender).IndexFromPoint(e.Location);
                    if (((ListBox)sender).SelectedIndex != -1)
                    {
                        infobox2ContextMenu.Show();
                    }
                }
            }
        }


        /// <summary>
        /// リストビューをダブルクリック時の処理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void myListView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (((ListView)sender).SelectedItems.Count == 0) return;

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
            else if(Program.INI.iniDoubleOpen.ToUpper() == "FOLDER")
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
            else
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

                FormOutSelectPopup outF = new FormOutSelectPopup(d);

                if(outF.buttonCount <= 0)
                {
                    outF.Close();
                }
                else
                {
                    outF.Show();
                }
            }
        }

        private void myListView1_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                if (myListView1.FocusedItem.Bounds.Contains(e.Location) == true)
                {
                    listviewContextMenu.Show();
                }
            }
        }

        private void ribbonCheckBox1_CheckBoxCheckChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem it in myListView1.Items)
            {
                if (ribbonCheckBox1.Checked)
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
        /// ボタンの表示（利用可能）、非表示（利用不可）を制御する
        /// </summary>
        /// <param name="showB">表示＆利用可能するボタン</param>
        /// <param name="hideB">非表示＆利用不可するボタン</param>
        /// <param name="flg">ほかのボタンの利用可否</param>
        public void showButton(RibbonButton showB, RibbonButton hideB, bool flg)
        {
            MyCommon.BeginUpdate(ribbon1);
            foreach (RibbonTab tab in this.ribbon1.Tabs)
            {
                foreach (RibbonPanel pnl in tab.Panels)
                {
                    foreach (RibbonItem itm in pnl.Items)
                    {
                        if (itm is RibbonButton)
                        {
                            if (itm == showB)
                            {
                                itm.Enabled = true;
                                itm.Visible = true;
                            }
                            else if (itm == hideB)
                            {
                                itm.Enabled = false;
                                itm.Visible = false;
                            }
                            else if (flg)
                            {
                                itm.Enabled = true;
                            }
                            else if (!flg)
                            {
                                itm.Enabled = false;
                            }
                        }
                    }
                }
            }
            MyCommon.EndUpdate(ribbon1);
            this.Update();
        }

        public void runButton(bool complete)
        {
            if (complete)
            {
                // 実行完了
                showButton(ribbonButton1, ribbonButton6, true);
            }
            else
            {
                // 実行中
                showButton(ribbonButton6, ribbonButton1, false);
            }
        }

        public void expButton(bool complete)
        {
            if (complete)
            {
                // 結果出力完了
                showButton(ribbonButton2, ribbonButton7, true);
            }
            else
            {
                // 結果出力中
                showButton(ribbonButton7, ribbonButton2, false); 
            }
        }

        public void cnvButton(bool complete)
        {
            if (complete)
            {
                // データ変換完了
                showButton(null, null, true);
            }
            else
            {
                // データ変換中
                showButton(null, null, false);
            }
        }

        public void debugButton(bool complete)
        {
            if (complete)
            {
                // デバッグ完了
                ribbonButton4.Enabled = true;
            }
            else
            {
                // デバッグ中
                ribbonButton4.Enabled = false;
            }
        }

        public void showDiffButton(bool complete)
        {
            if(complete)
            {
                showButton(ribbonButton8,ribbonButton9,true);
                ribbonButton10.Enabled = false;
            }
            else
            {
                showButton(ribbonButton9, ribbonButton8, false);
                ribbonButton10.Enabled = true;
            }
        }

        // backgroundWork用
        public void exportClick()
        {
            ribbonButton2.PerformClick();
        }

        private void ribbon1_ClientSizeChanged(object sender, EventArgs e)
        {
            this.FormRibbon_Resize(sender, e);
        }

        private void listbox1ContextMenu_Opening( object sender, CancelEventArgs e )
        {
            //clear the menu and add custom items
            infobox1ContextMenu.Items.Clear();
            infobox1ContextMenu.Items.Add("クリア", null, infobox1ContextMenu_Clear);
            infobox1ContextMenu.Items.Add("コピー", null, infobox1ContextMenu_Copy);
        }

        private void infobox1ContextMenu_Clear(object sender, EventArgs e)
        {
            InfoBox1.Items.Clear();
            InfoBox1.HorizontalExtent = InfoBox1.Width - 100;
        }

        private void infobox1ContextMenu_Copy(object sender, EventArgs e)
        {
            if(InfoBox1.SelectedIndex >= 0)
            {
                Clipboard.SetText(((MyListBoxItem)InfoBox1.SelectedItem).Message, TextDataFormat.Text);
            }
        }

        private void listbox2ContextMenu_Opening(object sender, CancelEventArgs e)
        {
            //clear the menu and add custom items
            infobox2ContextMenu.Items.Clear();
            infobox2ContextMenu.Items.Add("ソースを開く", null, infobox2ContextMenu_OpenSrc);
            infobox2ContextMenu.Items.Add("コピー", null, infobox2ContextMenu_Copy);
        }

        private void infobox2ContextMenu_OpenSrc(object sender, EventArgs e)
        {
            if (InfoBox2.SelectedIndex >= 0)
            {
                String txt = ((MyListBoxItem)InfoBox2.SelectedItem).Message;
                if(txt != null && txt.Length > 0)
                {
                    int pos1 = txt.IndexOf("--FILE:") + 7;
                    int pos2 = txt.IndexOf(" --LINE:");
                    int pos3 = txt.IndexOf("--", pos2 + 8);
                    String fileN = txt.Substring(pos1, pos2 - pos1);
                    String lineN = txt.Substring(pos2 + 8, pos3 - pos2 - 8);
                    //MessageBox.Show("File:" + fileN + "|\r\nLine:" + lineN + "|");

                    FormCode codeF = new FormCode(fileN, lineN);
                    codeF.Show();
                }
            }
        }

        private void infobox2ContextMenu_Copy(object sender, EventArgs e)
        {
            if (InfoBox2.SelectedIndex >= 0)
            {
                Clipboard.SetText(((MyListBoxItem)InfoBox2.SelectedItem).Message, TextDataFormat.Text);
            }
        }

        private void listviewContextMenu_Opening(object sender, CancelEventArgs e)
        {
            //clear the menu and add custom items
            listviewContextMenu.Items.Clear();
            listviewContextMenu.Items.Add("実行フォルダを開く", null, listviewContextMenu_CompareDir);
            listviewContextMenu.Items.Add("結果ファイルを開く", null, listviewContextMenu_CompareXLS);
        }
        private void listviewContextMenu_CompareDir(object sender, EventArgs e)
        {
            if (myListView1.SelectedItems.Count == 0) return;

            String caseName = myListView1.SelectedItems[0].Text;
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

        private void listviewContextMenu_CompareXLS(object sender, EventArgs e)
        {
            if (myListView1.SelectedItems.Count == 0) return;

            String caseName = myListView1.SelectedItems[0].Text;
            string excFile = MyConst.workPath + MyCommon.addLeftYen(caseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                                MyCommon.addLeftYen(caseName + "_" + MyConst.RESULT_EXCEL_FILE);

            if (!System.IO.File.Exists(excFile))
            {
                MessageBox.Show("選択されたケースの結果ファイルが見つかりません。", "エラー");
                return;
            }

            try
            {
                Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = true;

                Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(excFile);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
            }
 
        }

        // オプション
        private void ribbonOrbMenuItem1_Click(object sender, EventArgs e)
        {
            
        }

        // バージョン情報
        private void ribbonOrbMenuItem2_Click(object sender, EventArgs e)
        {
            FormAbout fa = new FormAbout();
            fa.StartPosition = FormStartPosition.CenterScreen;
            fa.ShowDialog();
        }

        // 終了
        private void ribbonOrbOptionButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FormRibbon_HelpButtonClicked(object sender, CancelEventArgs e)
        {
         //   FormAbout fa = new FormAbout();
         //   fa.StartPosition = FormStartPosition.CenterScreen;
         //   fa.Show();
        }

        private void helpButton1_Click(object sender, EventArgs e)
        {
            FormAbout fa = new FormAbout();
            fa.StartPosition = FormStartPosition.CenterScreen;
            fa.ShowDialog();
        }

        private void splitContainer1_SplitterMoving(object sender, SplitterCancelEventArgs e)
        {

        }

        private void splitContainer1_SplitterMoved(object sender, SplitterEventArgs e)
        {
            myListView1.Height = e.SplitY;
            InfoBox1.Height = splitContainer1.Height - e.SplitY - 4;
        }

        private void splitContainer2_SplitterMoved(object sender, SplitterEventArgs e)
        {
            tabControl1.Width= e.SplitX;
            caseName.Width = splitContainer1.Width - e.SplitX - 4;
            InfoBox2.Width = splitContainer1.Width - e.SplitX - 4;

            foreach (TabPage tp in tabControl1.TabPages)
            {
                tp.Width = tabControl1.Width;
                tp.Height = tabControl1.Height;

                foreach (Control c in tp.Controls)
                {
                    c.Height = tp.Height;
                    c.Width = tp.Width;
                }
            }
        }
        
        
    }
}
