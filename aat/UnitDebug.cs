using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing;
using System.IO;
using System.ComponentModel;

namespace aat
{
    class UnitDebug
    {
        private static BackgroundWorker bw3 = null;
        private static WorkData diffWorkData;  // 不一致項目表示用
        public static String debugOutput;

        public static void readXLStoTab(TabControl tab1, string excFile)
        {
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(excFile);

                for (int i = 2; i <= WorkBook1.Sheets.Count; i++)
                {
                    Microsoft.Office.Interop.Excel.Worksheet st = WorkBook1.Sheets[i];
                    int row_count = st.get_Range("B65536").End[Microsoft.Office.Interop.Excel.XlDirection.xlUp].Row;

                    TabPage tabpage = new TabPage(st.Name);

                    tabpage.Width = tab1.Width;
                    tabpage.Height = tab1.Height;
                    tabpage.Top = 0;
                    tabpage.Left = 0;

                    //ListView lv = new ListView();
                    //createListView(lv, new Size(tabpage.Width, tabpage.Height));

                    DataGridView dgv = new DataGridView();
                    createDataGridView(dgv, new Size(tabpage.Width, tabpage.Height));

                    //tabpage.Controls.Add(lv);
                    tabpage.Controls.Add(dgv);

                    tab1.TabPages.Add(tabpage);

                    for (int j = MyConst.outStartRow; j <= row_count; j++)
                    {
                        //addRow(lv, st.Cells[j, 1].Text, st.Cells[j, 2].Text, st.Cells[j, 3].Text, st.Cells[j, 4].Text, st.Cells[j, 5].Text, st.Cells[j, 6].Text, st.Cells[j, 7].Text, st.Cells[j, 9].Text);
                        addRow(dgv, st.Cells[j, 1].Text, st.Cells[j, 2].Text, st.Cells[j, 3].Text, st.Cells[j, 4].Text, st.Cells[j, 5].Text, st.Cells[j, 6].Text, st.Cells[j, 7].Text, st.Cells[j, 9].Text);
                    }

                }

                // TODO: 

                WorkBook1.Close(0);

                //this.Controls.Add(tab);
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
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

        // 差分項目に出力ログを追加
        public static void addDiffLog(object sender, EventArgs e)
        {
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                // リストのチェック対象を洗い出す
                foreach (WorkData wd in Program.workData1)
                {
                    if (wd.Check)
                    {
                        string excFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                                    MyCommon.addLeftYen(wd.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);

                        if (!File.Exists(excFile))
                        {
                            MessageBox.Show("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + wd.CaseName + ">", "エラー");
                            MyLog.WriteInfo("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + wd.CaseName + ">");
                            continue;
                        }

                        Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(excFile);
                        List<String> cpyItemList = new List<string>();

                        for (int i = 2; i <= WorkBook1.Sheets.Count; i++)
                        {
                            Microsoft.Office.Interop.Excel.Worksheet st = WorkBook1.Sheets[i];
                            int row_count = st.get_Range("B65536").End[Microsoft.Office.Interop.Excel.XlDirection.xlUp].Row;

                            for (int j = MyConst.outStartRow; j <= row_count; j++)
                            {
                                if (st.Cells[j, 6].Text == "×" && !cpyItemList.Contains(st.Cells[j, 9].Text))
                                {
                                    //不一致の場合
                                    cpyItemList.Add(st.Cells[j, 9].Text);

                                }
                            }

                        }

                        if (cpyItemList.Count > 0)
                        {
                            MyCommon.copyCompileCob(new List<String>() { wd.CaseExe }, cpyItemList);
                        }

                        // TODO: 

                        WorkBook1.Close(0);
                    }
                }

                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
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

        // 全項目に出力ログを追加
        public static bool addDiffLog(WorkData wd, bool bAll = false)
        {
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                string excFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                            MyCommon.addLeftYen(wd.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);

                if (!File.Exists(excFile))
                {
                    MessageBox.Show("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + wd.CaseName + ">", "エラー");
                    MyLog.WriteInfo("選択されたケースの結果ファイルが見つかりません。結果出力を先に実行してください。\r\n<" + wd.CaseName + ">");
                    return false;
                }

                Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(excFile);
                List<String> cpyItemList = new List<string>();

                for (int i = 2; i <= WorkBook1.Sheets.Count; i++)
                {
                    Microsoft.Office.Interop.Excel.Worksheet st = WorkBook1.Sheets[i];
                    int row_count = st.get_Range("B65536").End[Microsoft.Office.Interop.Excel.XlDirection.xlUp].Row;

                    for (int j = MyConst.outStartRow; j <= row_count; j++)
                    {
                        if (bAll && !String.IsNullOrEmpty(st.Cells[j, 9].Text) && !cpyItemList.Contains(st.Cells[j, 9].Text))
                        {
                            cpyItemList.Add(st.Cells[j, 9].Text);
                        }
                        else if (st.Cells[j, 6].Text == "×" && !String.IsNullOrEmpty(st.Cells[j, 9].Text) && !cpyItemList.Contains(st.Cells[j, 9].Text))
                        {
                            //不一致の場合
                            cpyItemList.Add(st.Cells[j, 9].Text);

                        }
                    }

                }

                WorkBook1.Close(0);

                // TODO: 

                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;

                if (cpyItemList.Count > 0)
                {
                    MyCommon.copyCompileCob(new List<String>() { wd.CaseExe }, cpyItemList, noLog:true);
                }
                else
                {
                    MessageBox.Show("選択されたケースに追加する項目がありません。\r\n<" + wd.CaseName + ">", "エラー");
                    return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
                return false;
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

        // デバッグ実行
        private static void debugRun(WorkData wd)
        {
            // ケースフォルダが存在しない場合
            if (!System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName)))
            {
                wd.Result = new RtnCode();
                wd.Result.Code = -1;
                wd.Result.Message = "指定されたケースのフォルダが存在しません。[" + MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + "]";
                return;
            }

            // 比較用フォルダ存在しない場合
            if (!System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder)))
            {
                wd.Result = new RtnCode();
                wd.Result.Code = -1;
                wd.Result.Message = "指定されたケースのフォルダが存在しません。[" + MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) + "]";
                return;
            }


            // inputファイルが全部存在しない場合
            foreach (string inFile in wd.InParm.Replace("\r\n", "\n").Split('\n'))
            {
                if (System.IO.File.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile)))
                {
                    continue;
                }
                else if (System.IO.File.Exists(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile)))
                {
                    System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile),
                        MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile));
                }
                else
                {
                    wd.Result = new RtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = "指定されたケースの入力ファイルが存在しません。[" + MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile) + "]";
                    return;
                }
            }

            // output 出力フォルダが存在しない場合
            foreach (string outFile in wd.OutParm.Replace("\r\n", "\n").Split('\n'))
            {
                if (!System.IO.Directory.Exists(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile))))
                {
                    wd.Result = new RtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = "指定されたケースの出力フォルダが存在しません。[" + Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile)) + "]";
                    return;
                }
            }

            // 新規出力ファイル、そのまま

            // 解析用定義ファイル、そのまま

            // CFMファイルをコピー & 登録
            string cfmFileName = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) +
                            MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT);

            if (Program.INI.iniPreRegExe.Length > 0 && Program.INI.iniPreRegOptAdd.Length > 0 &&
                Program.INI.iniPreRegOptDel.Length > 0)
            {
                if (System.IO.File.Exists(cfmFileName))
                {
                    // 前回登録ファイルを削除
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName, noLog: true);

                    System.Threading.Thread.Sleep(500);
                    // マッピングファイル登録
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName, noLog: true);
                }
                else if (Program.INI.iniCfmAutoCreate.Length > 0 && Program.INI.iniCfmAutoCreate == "TRUE")
                {
                    // CFMファイル自動生成
                    MyCommon.createCFM(cfmFileName, wd.InParm + "\n" + wd.OutParm);

                    // 前回登録ファイルを削除
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName, noLog: true);

                    System.Threading.Thread.Sleep(500);
                    // マッピングファイル登録
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName, noLog: true);
                }
                else if (System.IO.File.Exists(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) +
                    MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT)))
                {
                    System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) +
                        MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT), cfmFileName, true);
                    System.Threading.Thread.Sleep(100);

                    // 前回登録ファイルを削除
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName, noLog: true);

                    System.Threading.Thread.Sleep(500);

                    // マッピングファイル登録
                    MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName, noLog: true);
                }
                else
                {
                    wd.Result = new RtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = "マッピングファイルが存在しません。[" + Program.INI.iniTestDataDir +
                        MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT) + "]";

                    return;
                }
            }

            // プログラムを作業フォルダにコピー
            string toolName = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseExe);
            if (System.IO.File.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder) + MyCommon.addLeftYen(wd.CaseExe)))
            {
                // コンパイルフォルダにファイルがあれば、コピーする
                if (!System.IO.Directory.Exists(Path.GetDirectoryName(toolName)))
                {
                    System.IO.Directory.CreateDirectory(Path.GetDirectoryName(toolName));
                }
                System.IO.File.Copy(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder) + MyCommon.addLeftYen(wd.CaseExe), toolName, true);
            }
            else
            {
                wd.Result = new RtnCode();
                wd.Result.Code = -1;
                wd.Result.Message = "指定されたファイルが存在しません。[" + MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder) + MyCommon.addLeftYen(diffWorkData.CaseExe) + "]";

                return;
            }

            string arguments = "";
            RtnCode rt = MyCommon.RunExe(toolName, arguments, noLog: true);
            wd.Result = rt;

            debugOutput = rt.stdOutput;
        }

        // セクションに出力ログを追加
        public static void addSectionLog(object sender, EventArgs e)
        {
            String btnName = "";
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;

            if (sender is Button)
            {
                btnName = ((Button)sender).Text;

            }
            else if (sender is RibbonButton)
            {
                btnName = ((RibbonButton)sender).Text;
            }

            try
            {
                MyLog.WriteInfo(btnName + "　処理開始　(" + mthName + ")");
                Program.debugButtonC(false);

                // 関連COBファイルをローカルへコピー
                List<String> progList = new List<string>();
                // リストのチェック対象を洗い出す
                foreach (WorkData wd in Program.workData1)
                {
                    if (wd.Check && !progList.Contains(wd.CaseExe))
                    {
                        progList.Add(wd.CaseExe);
                    }
                }

                if (progList.Count <= 0)
                {
                    // 対象プログラムがなければ、終了
                    Program.debugButtonC(true);
                    MyLog.WriteInfo(btnName + "　の処理対象が選択されていません。");
                    MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
                    return;
                }

                // ローカルへコピー＆コンパイル
                if (progList.Count > 0)
                {
                    MyCommon.copyCompileCob(progList);
                }

                Program.debugButtonC(true);
                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.debugButtonC(true);
                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました。\n" + ex.Message, MyConst.RET_V.ERROR);
            }
        }

        public static void diffDebug(WorkData wd)
        {
            try
            {
                diffWorkData = wd;

                bw3 = new BackgroundWorker();

                bw3.DoWork += bw3_DoWork;
                bw3.ProgressChanged += bw3_ProgressChanged;
                bw3.RunWorkerCompleted += bw3_RunWorkerCompleted;
                bw3.WorkerReportsProgress = true;
                bw3.WorkerSupportsCancellation = true;

                if (!bw3.IsBusy)
                {
                    bw3.RunWorkerAsync();
                }
            }
            catch (Exception ex)
            {
                MyLog.WriteInfo("" + "　の処理にエラーが発生しました。\n" + ex.Message, MyConst.RET_V.ERROR);
            }
        }

        private static void bw3_DoWork(object sender, DoWorkEventArgs e)
        {
            // 全項目に差分情報を追加
            bool bDiffLog = addDiffLog(diffWorkData, true);

            if (bDiffLog)
            {
                // デバッグ実行
                debugRun(diffWorkData);
            }
        }

        private static void bw3_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {

            if(diffWorkData.Result != null && diffWorkData.Result.Code != 0 && diffWorkData.Result.Message.Length > 0)
            {
                // デバッグ実行にエラーが発生する場合
                MessageBox.Show(diffWorkData.Result.Message);
            }

        }

        private static void bw3_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {

        }

        private static void createDataGridView(DataGridView dgv, Size f)
        {
            dgv.Bounds = new Rectangle(new Point(18, 20), new Size(f.Width - 10, f.Height - 25));

            dgv.Top = 0;
            dgv.Left = 0;
            dgv.AllowDrop = false;
            dgv.AllowUserToAddRows = false;
            dgv.AllowUserToDeleteRows = false;
            dgv.AllowUserToResizeRows = false;
            dgv.AllowUserToOrderColumns = false;
            
            dgv.ColumnHeadersDefaultCellStyle.BackColor = Color.Gray;
            dgv.ColumnHeadersHeight = 40;
            dgv.RowHeadersWidth = 20;
            dgv.CellValueChanged += dgv_CellValueChanged;
            dgv.CurrentCellDirtyStateChanged += dgv_CurrentCellDirtyStateChanged;

            DataGridViewCheckBoxColumn col1 = new DataGridViewCheckBoxColumn();
            col1.Width = 20;
            col1.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv.Columns.Add(col1);

            DataGridViewTextBoxColumn col2 = new DataGridViewTextBoxColumn();
            col2.HeaderText = "No.";
            col2.Width = 30;
            dgv.Columns.Add(col2);

            DataGridViewTextBoxColumn col3 = new DataGridViewTextBoxColumn();
            col3.HeaderText = "項目名称";
            col3.Width = 200;
            dgv.Columns.Add(col3);

            DataGridViewTextBoxColumn col4 = new DataGridViewTextBoxColumn();
            col4.HeaderText = "桁数";
            col4.Width = 30;
            dgv.Columns.Add(col4);

            DataGridViewTextBoxColumn col5 = new DataGridViewTextBoxColumn();
            col5.HeaderText = "データ（現行）";
            col5.Width = 200;
            dgv.Columns.Add(col5);

            DataGridViewTextBoxColumn col6 = new DataGridViewTextBoxColumn();
            col6.HeaderText = "比較結果";
            col6.Width = 40;
            col6.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv.Columns.Add(col6);

            DataGridViewTextBoxColumn col7 = new DataGridViewTextBoxColumn();
            col7.HeaderText = "データ（新規）";
            col7.Width = 200;
            dgv.Columns.Add(col7);

            DataGridViewTextBoxColumn col8 = new DataGridViewTextBoxColumn();
            col8.HeaderText = "";
            col8.Visible = false;
            dgv.Columns.Add(col8);

            foreach (DataGridViewColumn c in dgv.Columns)
                c.SortMode = DataGridViewColumnSortMode.NotSortable;
        }

        private static void addRow(DataGridView dgv, string v1, string v2, string v3, string v4, string v5, string v6, string v7, string v8)
        {
            if (v2 == "")
            {
                DataGridViewRow row = new DataGridViewRow();
                row.ReadOnly = true;
                row.Height = 5;
                row.DefaultCellStyle.BackColor = Color.Gray;
                dgv.Rows.Add(row);
            }
            else
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgv);
                row.Cells[1].Value = v1;
                row.Cells[2].Value = v2;
                row.Cells[3].Value = v4;
                row.Cells[4].Value = v5;
                row.Cells[5].Value = v6;
                if (v6 == "×")
                {
                    row.Cells[5].Style.BackColor = Color.Red;
                }
                row.Cells[6].Value = v7;
                row.Cells[7].Value = v8;
                dgv.Rows.Add(row);
            }
        }


        private static void createListView(ListView lv, Size f)
        {
            lv.Bounds = new Rectangle(new Point(18, 20), new Size(f.Width - 10, f.Height - 25));
            lv.View = View.Details;
            lv.CheckBoxes = true;
            lv.GridLines = true;
            lv.OwnerDraw = false;
            lv.Top = 0;
            lv.Left = 0;

            lv.Columns.Add("No.", -2, HorizontalAlignment.Left);
            lv.Columns.Add("項目名称", -2, HorizontalAlignment.Left);
            lv.Columns.Add("桁数", -2, HorizontalAlignment.Left);
            lv.Columns.Add("データ（現行）", -2, HorizontalAlignment.Left);
            lv.Columns.Add("比較結果", -2, HorizontalAlignment.Center);
            lv.Columns.Add("データ（新規）", -2, HorizontalAlignment.Left);
        }

        private static void addRow(ListView lv, string v1, string v2, string v3, string v4, string v5, string v6, string v7, string v8)
        {
            if (v2 == "")
            {
                ListViewItem item = new ListViewItem();
                item.BackColor = Color.Gray;
                item.Font = new Font(item.Font.Name, 24, FontStyle.Regular);
                lv.Items.Add(item);
            }
            else
            {
                ListViewItem item = new ListViewItem(v1, 0);
                item.SubItems.Add(v2);
                item.SubItems.Add(v4);
                item.SubItems.Add(v5);
                item.SubItems.Add(v6);
                item.SubItems.Add(v7);
                if (v6 == "×")
                {
                    item.SubItems[4].BackColor = Color.Red;
                    item.UseItemStyleForSubItems = false;
                }

                lv.Items.Add(item);

            }
        }

        private static void dgv_CurrentCellDirtyStateChanged(object sender, EventArgs e)
        {
            if (((DataGridView)sender).CurrentCellAddress.X == 0 &&
                ((DataGridView)sender).IsCurrentCellDirty)
            {
                //コミットする
                ((DataGridView)sender).CommitEdit(DataGridViewDataErrorContexts.Commit);
            }
        }

        private static void dgv_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                string cpyItem = ((DataGridView)sender)[7, e.RowIndex].Value.ToString();

                if(cpyItem == null || cpyItem.Length == 0)
                {
                    MessageBox.Show("選択された項目とCopy句の紐付けが設定されたいません。");
                    return;
                }

                ((DataGridView)sender).CellValueChanged -= dgv_CellValueChanged;
                ((DataGridView)sender).CurrentCellDirtyStateChanged -= dgv_CurrentCellDirtyStateChanged;
                for (int i = 0; i < ((DataGridView)sender).Rows.Count; i++)
                {
                    if (((DataGridView)sender)[7, i].Value != null && ((DataGridView)sender)[7, i].Value.ToString() == cpyItem)
                    {
                        if (((DataGridView)sender)[0, e.RowIndex].Value.ToString().ToUpper() == "TRUE")
                        {
                            ((DataGridView)sender)[0, i].Value = "True";
                        }
                        else
                        {
                            ((DataGridView)sender)[0, i].Value = "False";
                        }

                    }
                }
                ((DataGridView)sender).CellValueChanged += dgv_CellValueChanged;
                ((DataGridView)sender).CurrentCellDirtyStateChanged += dgv_CurrentCellDirtyStateChanged;

            }
        }

        // 選択された項目の関連デバッグ情報を表示する
        public static void showInfo(object sender, EventArgs e)
        {
            List<String> chkItemList = new List<string>();
            bool haveChked = false;

            if (debugOutput == null) return;

            foreach (TabPage tb in ((FormRibbon)(Program._form_instance)).tabControl1.TabPages)
            {
                foreach (Control ct in tb.Controls)
                {
                    if (ct.GetType().Name == "DataGridView")
                    {
                        DataGridView dgv1 = (DataGridView)ct;
                        for (int row = 0; row < dgv1.RowCount; row++)
                        {
                            if (dgv1[0, row].Value != null && dgv1[0, row].Value.ToString() == "True" &&
                                dgv1[7, row].Value != null && !chkItemList.Contains(dgv1[7, row].Value.ToString()))
                            {
                                chkItemList.Add(dgv1[7, row].Value.ToString());
                                haveChked = true;
                            }
                        }
                    }
                }
            }

            if (haveChked)
                ((FormRibbon)(Program._form_instance)).InfoBox2.Items.Clear();

            foreach (string outLine in debugOutput.Replace("\r\n","\n").Split('\n'))
            {
                foreach(string item in chkItemList)
                {
                    if(outLine.Contains(item))
                    {
                        MyLog.WriteInfo(outLine);
                    }
                }
            }
            
        }
    }
}
