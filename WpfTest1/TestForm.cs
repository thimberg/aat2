using System;
//using System.Windows;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//using System.Windows.Input;
using System.Runtime.InteropServices;

namespace WpfTest1
{
    public partial class testForm : Form
    {
        [DllImport("KERNEL32.DLL")]
        public static extern uint
          GetPrivateProfileString(string lpSection, string lpKeyName, string lpDefault,
            StringBuilder lpReturnedString, uint nSize, string lpFileName);

        [DllImport("kernel32")]
        public static extern int
          GetPrivateProfileString(string lpSection, int lpKey, string lpDefault, StringBuilder lpReturnedString,
            uint nSize, string lpFileName);

        [DllImport("kernel32")]
        static extern int GetPrivateProfileString(string Section, int Key,
               string Value, [MarshalAs(UnmanagedType.LPArray)] byte[] Result,
               int Size, string FileName);

        private BackgroundWorker bWorker1 = new BackgroundWorker();
        private BackgroundWorker bWorker2 = new BackgroundWorker();

        private List<workData> workData1 = new List<workData>();
        private static int preItemIndex;
        
        private String iniWorkdataPath;         // 設定メインファイルのパスなければ、テストデータフォルダと同じ
        private String iniWorkdataOverwrite;    // 強制的に上書きする
        
        private static String workDir = "Work";
        private static String workPath = System.AppDomain.CurrentDomain.BaseDirectory + workDir;

        private static String compFolder = "Comp";      // 出力結果ファイル

        private static String preDir = "PreWork";
        private static String prePath = System.AppDomain.CurrentDomain.BaseDirectory + preDir;

        private static String srcFolder = "src";
        private static String libFolder = "lib";
        private static String tmpFolder = "tmp";
        private static String lstFolder = "list";

        private bool allRun = false;        // 一括実行フラグ

        private static String tplStartCol = "A";    // テンプレートファイルの開始列
        private static int tplStartRow = 2;         // テンプレートファイルの開始行

        private static String outStartCol = "A";   // 結果ファイル開始列
        private static int outStartRow = 5;        // 結果ファイルの開始行

        public testForm()
        {
            InitializeComponent();
            
            bWorker1.DoWork += worker1_DoWork;
            bWorker1.ProgressChanged += worker1_ProgressChanged;
            bWorker1.RunWorkerCompleted += worker1_RunWorkerCompleted;
            bWorker1.WorkerReportsProgress = true;
            bWorker1.WorkerSupportsCancellation = true;

            bWorker2.DoWork += worker2_DoWork;
            bWorker2.ProgressChanged += worker2_ProgressChanged;
            bWorker2.RunWorkerCompleted += worker2_RunWorkerCompleted;
            bWorker2.WorkerReportsProgress = true;
            bWorker2.WorkerSupportsCancellation = true;

            button3.Visible = false;
            button3.Enabled = false;
            button5.Visible = false;
            button5.Enabled = false;

            readWorkData();
            addListView();

            // 作業フォルダが存在しなければ、作成する。
            if (!System.IO.Directory.Exists(workPath))
            {
                System.IO.Directory.CreateDirectory(workPath);
            }

        }
        private void formMain_Load(object sender, EventArgs e)
        {

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


        private void worker1_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bw = (BackgroundWorker)sender;
            foreach (workData wd in workData1)
            {
                try
                {
                    if (bw.CancellationPending)
                    {
                        //キャンセルされたとき
                        e.Cancel = true;
                        return;
                    }

                }
                catch (Exception ex)
                {
                    wd.Result = new rtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = ex.Message;

                    bw.ReportProgress(0, wd);

                    WriteTraceLog(ex.Message);
                    MessageBox.Show(ex.Message, "エラー");
                }
            }
        }

        private void worker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            showButton(button2, button3, true);

            /// todo: キャンセルされた場合、引き続き実行するか
            // 一括実行の場合
            if (this.allRun)
            {
                this.allRun = false;
                this.button4.PerformClick();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void worker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            String key = ((workData)(e.UserState)).CaseName;
            rtnCode result = ((workData)(e.UserState)).Result;

            int inx = myListView1.Items.IndexOfKey(key);
            Console.WriteLine("Changed:  " + preItemIndex.ToString() + " , " + inx.ToString());

            if (result != null && result.Code != 0 && inx >= 0)
            {
                // エラー
                myListView1.setStatus(myListView1.Items[inx], ConstT.RUN_STAT_ERR);
            }
            else if (result != null && result.Code == 0 && preItemIndex >= 0)
            {
                // 正常終了
                myListView1.setStatus(myListView1.Items[preItemIndex], ConstT.RUN_STAT_END);
            }
            else if (result == null && inx >= 0)
            {
                // 実行開始
                myListView1.setStatus(myListView1.Items[inx], ConstT.RUN_STAT_BEGIN);

                preItemIndex = inx;
            }

        }

        private void worker2_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bw = (BackgroundWorker)sender;
            // エクセルファイルにデータ解析内容を出力する
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;

            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                foreach (workData wd in workData1)
                {
                    if (bw.CancellationPending)
                    {
                        //キャンセルされたとき
                        e.Cancel = true;
                        return;
                    }

                    
                } // LOOP 完了

                //エクセルを閉じる
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                WriteTraceLog(ex.Message);
            }

            finally
            {
                if (ExcelApp != null)
                {
                    if (ExcelApp.Workbooks.Count > 0)
                    {
                        ExcelApp.DisplayAlerts = false;
                        ExcelApp.Workbooks.Close();
                        ExcelApp.DisplayAlerts = true;
                    }
                    ExcelApp.Quit();
                    System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                }
            }


        }

        private void worker2_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            showButton(button4, button5, true);

        }

        private void worker2_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            String key = ((workData)(e.UserState)).CaseName;
            rtnCode result = ((workData)(e.UserState)).Result;

            int inx = myListView1.Items.IndexOfKey(key);
            Console.WriteLine(key + "  Changed:  " + preItemIndex.ToString() + " , " + inx.ToString());

            if (result != null && result.Code == 1)
            {
                // 不一致
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_DIFF);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]に不一致が発生しました。");
            }
            else if (result != null && result.Code == 0)
            {
                // 一致
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_SAME);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]が一致しました。");
            }
            else if (result != null && result.Code == 2)
            {
                // エラー発生
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_ERR);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較にエラーが発生しました。");
                WriteTraceLog(result.Message);
            }
            else if (result != null && result.Code != 0 && result.Code != 1 && result.Code != 2)
            {
                // 異常終了
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_ERR);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較にエラーが発生しました。");
                WriteTraceLog(result.Message);
            }
            else if (result == null)
            {
                // 結果出力開始
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_BEGIN);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]の結果出力処理が開始した。");
            }
            else
            {
                // 予想外
                myListView1.setStatus(myListView1.Items[inx], ConstT.CMP_STAT_ERR);

                WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較に異常が発生しました。");
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox lb = (ListBox)sender;
            //if (lb.SelectedItem != null)
            //    label1.Text = lb.SelectedItem.ToString();
        }

        // 準備
        private void button1_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                WriteTraceLog(mthName + "　処理開始　");

                showButton(null, null, false);

                //allCheck.Checked = false;
                //readWorkData();

                //addListView();

                showButton(null, null, true);

                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                button1.Enabled = true;
                button2.Enabled = true;
                button4.Enabled = true;
                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }

        // 実行
        private void button2_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                preItemIndex = -1;

                WriteTraceLog(mthName + "　処理開始　");

                showButton(button3, button2, false);

                if (!this.bWorker1.IsBusy)
                {
                    this.bWorker1.RunWorkerAsync();
                }

                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button2, button3, true);

                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }

        //　実行　取り消し
        private void button3_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                WriteTraceLog(mthName + "　処理開始　");

                if (this.bWorker1.IsBusy)
                {
                    this.bWorker1.CancelAsync();
                }

                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button2, button3, true);
                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }

        // 結果出力
        private void button4_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                preItemIndex = -1;

                WriteTraceLog(mthName + "　処理開始　");

                showButton(button5, button4, false);

                if (!this.bWorker2.IsBusy)
                {
                    this.bWorker2.RunWorkerAsync();
                }

                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button4, button5, true);

                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }

        // 結果出力 取り消し
        private void button5_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                WriteTraceLog(mthName + "　処理開始　");

                if (this.bWorker2.IsBusy)
                {
                    this.bWorker2.CancelAsync();
                }

                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button4, button5, true);
                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }

        }

        // 一括実行
        private void button6_Click(object sender, EventArgs e)
        {
            this.allRun = true;

            this.button2.PerformClick();

        }

        // デバッグ
        private void button7_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                WriteTraceLog(mthName + "　処理開始　");
                button7.Enabled = false;

                // ローカルフォルダ作成
                if(!System.IO.Directory.Exists(prePath))
                {
                    System.IO.Directory.CreateDirectory(prePath);
                }

                if (!System.IO.Directory.Exists(prePath + addLeftYen(srcFolder)))
                {
                    System.IO.Directory.CreateDirectory(prePath + addLeftYen(srcFolder));
                }
                
                if (!System.IO.Directory.Exists(prePath + addLeftYen(libFolder)))
                {
                    System.IO.Directory.CreateDirectory(prePath + addLeftYen(libFolder));
                }

                if (!System.IO.Directory.Exists(prePath + addLeftYen(lstFolder)))
                {
                    System.IO.Directory.CreateDirectory(prePath + addLeftYen(lstFolder));
                }

                if (!System.IO.Directory.Exists(prePath + addLeftYen(tmpFolder)))
                {
                    System.IO.Directory.CreateDirectory(prePath + addLeftYen(tmpFolder));
                }

                // 関連COBファイルをローカルへコピー
                List<String> progList = new List<string>();
                // リストのチェック対象を洗い出す
                foreach (workData wd in workData1)
                {
                    if(wd.Check && !progList.Contains(wd.CaseExe))
                    {
                        progList.Add(wd.CaseExe);
                    }
                }
                
                if (progList.Count <= 0)
                {
                    // 対象プログラムがなければ、終了
                    return;
                }

                // 

                button7.Enabled = true;
                WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                button7.Enabled = true;
                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }

        private void myListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void myListView1_ItemCheck(object sender, ItemCheckedEventArgs e)
        {
            foreach (workData wd in workData1)
            {
                if (wd.CaseName == e.Item.Text)
                {
                    wd.Check = e.Item.Checked;
                }
            }
        }

                
        /// <summary>
        /// パス名の左側に\を追加する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public string addLeftYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.StartsWith("\\"))
            {
                return str;
            }
            else
            {
                return "\\" + str;
            }
        }

        /// <summary>
        /// パス名の左側に\を削除する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public string delLeftYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.StartsWith("\\"))
            {
                return str.Substring(1);
            }
            else
            {
                return str;
            }
        }

        /// <summary>
        /// パス名の右側に\を追加する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public string addRightYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.EndsWith("\\"))
            {
                return str;
            }
            else
            {
                return str + "\\";
            }
        }

        /// <summary>
        /// パス名の右側に\を削除する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public string delRightYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.EndsWith("\\"))
            {
                return str.Substring(0, str.Length - 1);
            }
            else
            {
                return str;
            }
        }

        /// <summary>
        /// ２バイトが改行コードの判断
        /// </summary>
        /// <param name="f">ファイルのストリーム</param>
        /// <returns>改行コード：True、改行コードではない：False</returns>
        public bool readNR(System.IO.FileStream f)
        {
            byte[] buf = new byte[2];
            int size = 0;
            size = f.Read(buf, 0, buf.Length);
            if (buf.SequenceEqual(new byte[] { 0X0D, 0X0A }))
            {
                return true;
            }
            return false;
        }

        
        /// <summary>
        /// リストビューをダブルクリック時の処理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void myListView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            String caseName = ((ListView)sender).SelectedItems[0].Text;

            string caseDir = workPath + addLeftYen(caseName);
            if (System.IO.Directory.Exists(caseDir))
            {
                System.Diagnostics.Process.Start(caseDir);
            }
            else
            {
                MessageBox.Show("選択されたケースのフォルダが見つかりません。", "エラー");
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
        /// パック１０進数を解析する
        /// </summary>
        /// <param name="bPacked">パック１０進数のバイト配列</param>
        /// <returns></returns>
        private Int64 packToInt(byte[] bPacked)
        {   
            int iHiWord = 0;
            int iLoWord = 0;
            Int64 iIntValue = 0;
            int iArrayLength = bPacked.Length;
            for (int i = 0; i < iArrayLength - 1; i++)
            {
                iHiWord = bPacked[i] & 240;
                iHiWord >>= 4;
                iLoWord = bPacked[i] & 15;
                iIntValue = 100 * iIntValue + 10 * iHiWord + iLoWord;
            }
            iHiWord = bPacked[iArrayLength - 1] & 240;
            iHiWord >>= 4;
            iLoWord = bPacked[iArrayLength - 1] & 15;
            iIntValue = 10 * iIntValue + iHiWord;
            //符号の判定
            if (iLoWord == 0x0D)
            {
                iIntValue = -1 * iIntValue;
            }
            return iIntValue;
        }

        /// <summary>
        /// 定義エクセルファイルを読み取り
        /// </summary>
        private void readWorkData()
        {
            String excelFileName = System.AppDomain.CurrentDomain.BaseDirectory + ConstT.SET_MAIN_FILE;
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                //エクセルファイルのオープンと
                //ワークブックをの作成
                Microsoft.Office.Interop.Excel.Workbook WorkBook = ExcelApp.Workbooks.Open(excelFileName);

                Microsoft.Office.Interop.Excel.Worksheet sheet = WorkBook.Sheets[1];
                sheet.Select();

                workData1.Clear();

                //A1セルから見たら下への連続データ数
                int row_count = sheet.get_Range("A1").End[Microsoft.Office.Interop.Excel.XlDirection.xlDown].Row;

                //A1セルから見たら右への連続データ数
                int col_count = sheet.get_Range("A1").End[Microsoft.Office.Interop.Excel.XlDirection.xlToRight].Column;

                for (int row = 2; row <= row_count; row++)
                {
                    workData wd = new workData();

                    wd.Check = false;
                    wd.CaseName = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 1]).Value2;
                    wd.CaseExe = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 2]).Value2;
                    wd.InParm = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 3]).Value2;
                    wd.OutParm = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 4]).Value2;
                    wd.CompFile = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 5]).Value2;
                    wd.TempFile = ((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, 6]).Value2;

                    workData1.Add(wd);

                    //for (int col = 1; col <= col_count; col++)
                    //{
                    //    Console.WriteLine(((Microsoft.Office.Interop.Excel.Range)sheet.Cells[row, col]).Value2);
                    //}
                }
                //Microsoft.Office.Interop.Excel.Range range = sheet.get_Range("A1");
                //if (range != null)
                //{
                //    Console.WriteLine(range.Value);
                //}

                //ワークブックを閉じる
                WorkBook.Close();
                //エクセルを閉じる
                ExcelApp.Quit();
            }
            catch (Exception e)
            {
                MessageBox.Show("設定Excelファイルの読み取りにエラーが発生しました。" + e.Message);
                WriteTraceLog(e.Message);

                //                throw new Exception(e.Message, e);
            }
            finally
            {
                if (ExcelApp != null)
                {
                    if (ExcelApp.Workbooks.Count > 0)
                    {
                        ExcelApp.DisplayAlerts = false;
                        ExcelApp.Workbooks.Close();
                        ExcelApp.DisplayAlerts = true;
                    }
                    ExcelApp.Quit();
                    System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                }
            }

        }

        /// <summary>
        /// エクセルの内容をリストビューに表示する
        /// </summary>
        public void addListView()
        {
            myListView1.CheckBoxes = true;
            myListView1.OwnerDraw = true;

            myListView1.Clear();
            myListView1.Items.Clear();

            myListView1.Sorting = SortOrder.None;
            myListView1.ListViewItemSorter = null;

            myListView1.addCaseColumn();
            myListView1.addStatusColumn();

            foreach (workData wd in workData1)
            {
                ListViewItem item1 = new ListViewItem(wd.CaseName, 0);
                item1.Name = wd.CaseName;
                item1.Checked = false;
                item1.SubItems.Add("0");

                myListView1.Items.Add(item1);
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
        /// 外部コマンド実行
        /// </summary>
        /// <param name="filename">外部コマンド</param>
        /// <param name="arguments">パラメータ</param>
        /// <returns></returns>
        public rtnCode RunExternalExe(string filename, string arguments = null, bool checkMsg = false, string runPath = "")
        {
            var process = new System.Diagnostics.Process();

            process.StartInfo.FileName = filename;
            //            process.StartInfo.WorkingDirectory = "";

            if (!string.IsNullOrEmpty(arguments))
            {
                process.StartInfo.Arguments = arguments;
            }

            process.StartInfo.CreateNoWindow = true;
            process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            process.StartInfo.UseShellExecute = false;

            process.StartInfo.RedirectStandardError = true;
            process.StartInfo.RedirectStandardOutput = true;
            var stdOutput = new StringBuilder();
            process.OutputDataReceived += (sender, args) => stdOutput.Append(String.IsNullOrEmpty(args.Data)? "" : args.Data + "\r\n");

            rtnCode rt = new rtnCode();

            string stdError = null;
            try
            {
                String curDir = Directory.GetCurrentDirectory();
                if(runPath.Length > 0)
                {
                    Directory.SetCurrentDirectory(runPath);
                }
                else if (Path.GetDirectoryName(filename).Length > 0)
                {
                    Directory.SetCurrentDirectory(Path.GetDirectoryName(filename));
                }

                WriteTraceLog("外部exe実行：" + process.StartInfo.FileName + "<" + process.StartInfo.Arguments + ">");

                process.Start();
                process.BeginOutputReadLine();
                stdError = process.StandardError.ReadToEnd();
                process.WaitForExit();
                Directory.SetCurrentDirectory(curDir);

            }
            catch (Exception e)
            {
                MessageBox.Show("外部ファイル実行時にエラーが発生しました。" + Format(filename, arguments) + ": " + e.Message);
                WriteTraceLog(e.Message);
                //                throw new Exception("OS error while executing " + Format(filename, arguments) + ": " + e.Message, e);
            }

            if (process.ExitCode == 0)
            {
                rt.Code = 0;
                rt.Message = "";

                if (stdOutput.Length != 0)
                {
                    WriteTraceLog("Std Output:" + stdOutput.ToString());
                }
                if (stdError.Length != 0)
                {
                    rt.Message = stdError.ToString();
                    WriteTraceLog("Std Error:" + stdError);
                }
                return rt;
            }
            else
            {
                var message = new StringBuilder();

                if (!string.IsNullOrEmpty(stdError))
                {
                    message.AppendLine(stdError);
                }

                if (stdOutput.Length != 0)
                {
                    message.AppendLine("Std output:");
                    message.AppendLine(stdOutput.ToString());
                }

                rt.Code = process.ExitCode;
                rt.Message = Format(filename, arguments) + " finished with exit code = " + process.ExitCode + ": " + message;

                WriteTraceLog(rt.Message);
                return rt;
            }
        }

        private string Format(string filename, string arguments)
        {
            return "'" + filename +
                ((string.IsNullOrEmpty(arguments)) ? string.Empty : " " + arguments) +
                "'";
        }


        /// <summary>
        /// ログ出力
        /// </summary>
        /// <param name="msg">メッセージ</param>
        /// <remarks></remarks>
        private static void WriteTraceLog(String msg)
        {
            WriteTraceLog(msg, null);
        }

        /// <summary>
        /// ログ出力
        /// </summary>
        /// <param name="msg">メッセージ</param>
        /// <param name="ex">Exception(無指定の場合はメッセージのみ出力)</param>
        /// <remarks></remarks>
        private static void WriteTraceLog(String msg, Exception ex)
        {
            try
            {
                // ログフォルダ名作成
                DateTime dt = DateTime.Now;
                String logFolder = System.AppDomain.CurrentDomain.BaseDirectory + "Log";

                // ログフォルダ名作成
                System.IO.Directory.CreateDirectory(logFolder);

                // ログファイル名作成
                String logFile = logFolder + "\\TraceLog" + dt.ToString("yyMMdd") + ".log";

//                // 翌日分のログファイル削除(１ヶ月分のログファイルしか保存しないようにするため)
//                String logNext = logFolder + "\\TraceLog" + dt.AddDays(1).ToString("yyMMdd") + ".log";
//                System.IO.File.Delete(logNext);

                // ログ出力文字列作成
                String logStr;
                logStr = dt.ToString("yyyy/MM/dd HH:mm:ss") + "\t" + msg;
                if (ex != null)
                {
                    logStr = logStr + "\n" + ex.ToString();
                }

                // Shift-JISでログ出力
                System.IO.StreamWriter sw = null;
                try
                {
                    sw = new System.IO.StreamWriter(logFile, true,
                        System.Text.Encoding.GetEncoding("UTF-8"));
                    sw.WriteLine(logStr);
                }
                catch (Exception e)
                {
                    MessageBox.Show("ログファイルの出力にエラーが発生しました。" + e.Message);
                    //                    throw new Exception(e.Message, e);
                }
                finally
                {
                    if (sw != null) sw.Close();
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("ログファイルの出力にエラーが発生しました。" + e.Message);
                //                throw new Exception( e.Message, e);
            }
        }

        /// <summary>
        /// ボタンの表示（利用可能）、非表示（利用不可）を制御する
        /// </summary>
        /// <param name="showB">表示＆利用可能するボタン</param>
        /// <param name="hideB">非表示＆利用不可するボタン</param>
        /// <param name="flg">ほかのボタンの利用可否</param>
        private void showButton(Button showB, Button hideB, bool flg)
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
        
        /// <summary>
        /// Iniファイルから定義させたエラー判断用文字列を取得する
        /// </summary>
        /// <param name="section">エラーのセッション名</param>
        /// <param name="path">INIファイルのフルパス</param>
        /// <returns></returns>
        public List<string> GetIniErrorString(string section, string path)
        {
            byte[] bytes = new byte[1024];
            StringBuilder sbErrStr = new StringBuilder(1024);

            int size = GetPrivateProfileString(section, 0, "", bytes, 1024, path);
            string keys = Encoding.Default.GetString(bytes, 0, size - (size > 0 ? 1 : 0));

            List<string> errStr = new List<string>();

            foreach (string key in keys.Split(new char[] { '\0' }))
            {
                if (key.Length > 0)
                {
                    GetPrivateProfileString(section, key, "", sbErrStr, Convert.ToUInt32(sbErrStr.Capacity), path);

                    if (sbErrStr.Length > 0)
                    {
                        errStr.Add(sbErrStr.ToString());
                    }
                }
            }

            return errStr;
        }

    }

    /// <summary>
    /// 解析用テンプレートファイル用クラス
    /// </summary>
    public class parseTplFile
    {
        public String ItemName { get; set; }
        public String ItemType { get; set; }
        public String ItemLen { get; set; }
        public String ItemCom { get; set; }

    }

    public class rtnCode
    {
        private int code;
        private String message;
        
        public rtnCode()
        {
            code = 0;
            message = "";
        }

        public rtnCode(int cd, string msg)
        {
            code = cd;
            message = msg;
        }

        public int Code
        {
            get;// { return code; }
            set;// { code = value; }
        }

        public String Message
        {
            get;// { return message; }
            set;// { message = value; }
        }
    }


    public class workData
    {
//        private bool check;
        /// テストケースの名前（設定ファイルより）
//        private String caseName;
        /// テストケース実行ファイル（設定ファイルより）
//        private String caseExe;
        /// テストケース実行の入力ファイル（設定ファイルより）
//        private String inParm;
        /// テストケース実行の出力ファイル（設定ファイルより）
//        private String outParm;
        /// 比較対象ファイル（設定ファイルより）
//        private String compFile;
        /// 解析用定義ファイル（設定ファイルより）
//        private String tempFile;
        /// 実行後の出力ファイル（Workの下）
//        private String outDataFile;
        /// 比較結果格納ファイル（Compの下）
//        private String outExcelFile;
        /// テストケース実行結果
//        private rtnCode result;      

        public bool Check
        {
            get;// { return check; }
            set;// { check = value; }
        }

        public String CaseName
        {
            get;// { return caseName; }
            set;// { caseName = value; }
        }

        public String CaseExe
        {
            get;// { return caseExe; }
            set;// { caseExe = value; }
        }

        public String InParm
        {
            get;// { return inParm; }
            set;// { inParm = value; }
        }

        public String OutParm
        {
            get;// { return outParm; }
            set;// { outParm = value; }
        }

        public String OutDataFile
        {
            get;// { return outDataFile; }
            set;// { outDataFile = value; }
        }

        public String OutExcelFile
        {
            get;// { return outExcelFile; }
            set;// { outExcelFile = value; }
        }

        public String CompFile
        {
            get;// { return compFile; }
            set;// { compFile = value; }
        }

        public rtnCode Result
        {
            get;// { return result; }
            set;// { result = value; }
        }

        public String TempFile
        {
            get;// { return tempFile; }
            set;// { tempFile = value; }
        }
    }

    public class MyListBoxItem
    {
        public MyListBoxItem(string m)
        {
            ItemColor = Color.Black;
            Message = m;
        }

        public MyListBoxItem(string m, Color c)
        {
            ItemColor = c;
            Message = m;
        }
        public Color ItemColor { get; set; }
        public string Message { get; set; }
    }

}
