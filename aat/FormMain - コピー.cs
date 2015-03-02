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
        //[DllImport("KERNEL32.DLL")]
        //public static extern uint
        //  GetPrivateProfileString(string lpSection, string lpKeyName, string lpDefault,
        //    StringBuilder lpReturnedString, uint nSize, string lpFileName);

        //[DllImport("kernel32")]
        //public static extern int
        //  GetPrivateProfileString(string lpSection, int lpKey, string lpDefault, StringBuilder lpReturnedString,
        //    uint nSize, string lpFileName);

        //[DllImport("kernel32")]
        //static extern int GetPrivateProfileString(string Section, int Key,
        //       string Value, [MarshalAs(UnmanagedType.LPArray)] byte[] Result,
        //       int Size, string FileName);

        private BackgroundWorker bWorker1 = new BackgroundWorker();
        private BackgroundWorker bWorker2 = new BackgroundWorker();

        
        private static int preItemIndex;
        //private String iniDiffTool;  // 比較用ツール名
        //private String iniDiffPath;  // 比較用ツールパス
        //private String iniDiffOpts;  // 比較用ツールのパラメータ
        //private String iniTestDataDir;     // テストデータフォルダ
        //private String iniExcelMaxRow; // 結果ファイルの最大行数
        //private String iniDoubleOpen;  // リストビューをダブルクリック時の動作
        //private String iniAddDebugInfo; // デバッグ情報追加するか

        //private String iniPreRegExe;        // マッピングファイル登録コマンド
        //private String iniPreRegOptAdd;     // マッピングファイル追加用パラメータ
        //private String iniPreRegOptDel;     // マッピングファイル削除用パラメータ
        //private String iniCfmAutoCreate;    // マッピングファイル自動作成

        //private List<String> iniErrString;  // 実行時にメッセージにエラー判断用

        //private String iniWorkdataPath;         // 設定メインファイルのパスなければ、テストデータフォルダと同じ
        //private String iniWorkdataOverwrite;    // 強制的に上書きする

        //private String iniConvdataPath;      // 設定メインファイルのパスなければ、テストデータフォルダと同じ
        //private String iniConvdataOverwrite; // 強制的に上書きする

        //private String iniCobolSrcPath;         // COBOLのソースファイルのパス
        //private String iniCopyFilePath;         // COPYファイルのパス

        //private String iniSourceDataPath;         // 元データの置き場所
        //private String iniSourceDDLPath;          // 元データDDLの置き場所
        //private String iniDestDDLPath;            // 変換先データDDLの置き場所
        //private String iniDestDataPath;           // 変換先データの置き場所
        //private String iniIndexChangePath;        // 索引変換ツールの置き場所

        



        private bool allRun = false;        // 一括実行フラグ



        public formMain()
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

            String workDataExcelPath = Program.INI.iniWorkdataPath + MyCommon.addLeftYen(MyConst.SET_MAIN_FILE);
            // 強制的に上書きを設定した場合
            if (Program.INI.iniWorkdataOverwrite.ToUpper() == "TRUE" && System.IO.File.Exists(workDataExcelPath))
            {
                String excelFile1 = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.SET_MAIN_FILE;
                // 上書きする。
                System.IO.File.Copy(workDataExcelPath, excelFile1, true);
            }

            String convDataExcelPath = Program.INI.iniConvdataPath + MyCommon.addLeftYen(MyConst.CONV_DATA_SET_FILE);
            // 強制的に上書きを設定した場合
            if (Program.INI.iniConvdataOverwrite.ToUpper() == "TRUE" && System.IO.File.Exists(convDataExcelPath))
            {
                String excelFile1 = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.CONV_DATA_SET_FILE;
                // 上書きする。
                System.IO.File.Copy(convDataExcelPath, excelFile1, true);
            }

            MyCommon.readWorkData();
            addListView();

            // 作業フォルダが存在しなければ、作成する。
            if (!System.IO.Directory.Exists(MyConst.workPath))
            {
                System.IO.Directory.CreateDirectory(MyConst.workPath);
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
            foreach (WorkData wd in Program.workData1)
            {
                try
                {
                    if (bw.CancellationPending)
                    {
                        //キャンセルされたとき
                        e.Cancel = true;
                        return;
                    }

                    if (wd.Check)
                    {
                        // 実行前
                        wd.Result = null;
                        bw.ReportProgress(0, wd);

                        // ケースフォルダが存在すれば、削除して、作り直す。
                        if (System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName)))
                        {
                            System.IO.Directory.Delete(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName), true);
                        }
                        System.IO.Directory.CreateDirectory(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName));

                        // 比較用フォルダ存在しなければ、作成する
                        if (!System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder)))
                        {
                            System.IO.Directory.CreateDirectory(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder));
                        }


                        // inputファイルが複数の場合、全ファイルをコピーする
                        foreach (string inFile in wd.InParm.Replace("\r\n", "\n").Split('\n'))
                        {
                            if (System.IO.File.Exists(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile)))
                            {
                                if (!System.IO.Directory.Exists(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile))))
                                {
                                    System.IO.Directory.CreateDirectory(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile)));
                                }
                                System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile), MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile));
                            }
                            else
                            {
                                System.Threading.Thread.Sleep(500);
                                wd.Result = new rtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile) + "]";

                                MyLog.WriteTraceLog(wd.Result.Message);

                                bw.ReportProgress(0, wd);
                                continue;
                            }
                        }

                        // output 出力フォルダを作成する
                        foreach (string outFile in wd.OutParm.Replace("\r\n", "\n").Split('\n'))
                        {
                            if (!System.IO.Directory.Exists(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile))))
                            {
                                System.IO.Directory.CreateDirectory(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile)));
                            }
                        }

                        // 新規出力ファイルをコピー
                        foreach (string compFile in wd.CompFile.Replace("\r\n", "\n").Split('\n'))
                        {
                            if (System.IO.File.Exists(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile)))
                            {
                                if (!System.IO.Directory.Exists(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile))))
                                {
                                    System.IO.Directory.CreateDirectory(Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile)));
                                }
                                System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + 
                                    MyCommon.addLeftYen(compFile), MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile));
                            }
                            else
                            {
                                System.Threading.Thread.Sleep(500);
                                wd.Result = new rtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile) + "]";

                                MyLog.WriteTraceLog(wd.Result.Message);

                                bw.ReportProgress(0, wd);
                                continue;
                            }
                        }

                        // 解析用定義ファイルをコピー
                        foreach (string inTpl in wd.TempFile.Replace("\r\n", "\n").Split('\n'))
                        {
                            if (System.IO.File.Exists(Program.INI.iniTestDataDir + 
                                MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl)))
                            {
                                if (!System.IO.Directory.Exists(Path.GetDirectoryName(MyConst.workPath + 
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl))))
                                {
                                    System.IO.Directory.CreateDirectory(Path.GetDirectoryName(MyConst.workPath + 
                                        MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl)));
                                }
                                System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) +
                                    MyCommon.addLeftYen(inTpl), MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl));
                            }
                            else
                            {
                                System.Threading.Thread.Sleep(500);
                                wd.Result = new rtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl) + "]";

                                MyLog.WriteTraceLog(wd.Result.Message);

                                bw.ReportProgress(0, wd);
                                continue;
                            }
                        }

                        // CFMファイルをコピー & 登録
                        string cfmFileName = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + 
                            MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT);

                        if (Program.INI.iniPreRegExe.Length > 0 && Program.INI.iniPreRegOptAdd.Length > 0 &&
                            Program.INI.iniPreRegOptDel.Length > 0)
                        {
                            if (Program.INI.iniCfmAutoCreate.Length > 0 && Program.INI.iniCfmAutoCreate == "TRUE")
                            {
                                // CFMファイル自動生成
                                MyCommon.createCFM(cfmFileName, wd.InParm + "\n" + wd.OutParm);

                                // 前回登録ファイルを削除
                                MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName);

                                System.Threading.Thread.Sleep(500);
                                // マッピングファイル登録
                                MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName);
                            }
                            else if (System.IO.File.Exists(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + 
                                MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT)))
                            {
                                System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) +
                                    MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT), cfmFileName, true);
                                System.Threading.Thread.Sleep(100);

                                // 前回登録ファイルを削除
                                MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName);

                                System.Threading.Thread.Sleep(500);

                                // マッピングファイル登録
                                MyCommon.RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName);
                            }
                            else
                            {
                                System.Threading.Thread.Sleep(500);
                                wd.Result = new rtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "マッピングファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT) + "]";

                                MyLog.WriteTraceLog(wd.Result.Message);

                                bw.ReportProgress(0, wd);
                                continue;
                            }
                        }

                        // プログラムを作業フォルダにコピー
                        string toolName = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseExe);
                        if (System.IO.File.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder) +
                            MyCommon.addLeftYen(wd.CaseExe)))
                        {
                            // コンパイルフォルダにファイルがあれば、コピーする
                            if (!System.IO.Directory.Exists(Path.GetDirectoryName(toolName)))
                            {
                                System.IO.Directory.CreateDirectory(Path.GetDirectoryName(toolName));
                            }
                            System.IO.File.Copy(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder) + 
                                MyCommon.addLeftYen(wd.CaseExe), toolName);
                        }
                        else if (System.IO.File.Exists(Program.INI.iniTestDataDir +
                            MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseExe)))
                        {
                            if (!System.IO.Directory.Exists(Path.GetDirectoryName(toolName)))
                            {
                                System.IO.Directory.CreateDirectory(Path.GetDirectoryName(toolName));
                            }
                            System.IO.File.Copy(Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) +
                                MyCommon.addLeftYen(wd.CaseExe), toolName);
                        }
                        else
                        {
                            System.Threading.Thread.Sleep(500);
                            wd.Result = new rtnCode();
                            wd.Result.Code = -1;
                            wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseExe) + "]";

                            MyLog.WriteTraceLog(wd.Result.Message);

                            bw.ReportProgress(0, wd);
                            continue;
                        }

                        string arguments = "";
                        rtnCode rt = MyCommon.RunExe(toolName, arguments, true);

                        wd.Result = rt;
                        if (rt.Code == 0)
                        {
                            string outWorkFile = "";

                            foreach (string outFile in wd.OutParm.Replace("\r\n", "\n").Split('\n'))
                            {
                                if (System.IO.File.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile)))
                                {
                                    // ファイルが出力された
                                    if (outWorkFile.Length == 0)
                                    {
                                        outWorkFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile);
                                    }
                                    else
                                    {
                                        outWorkFile = outWorkFile + "\n" + MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) +
                                            MyCommon.addLeftYen(outFile);
                                    }
                                }
                                else
                                {
                                    wd.Result.Message += "出力ファイルが存在しません。<" + outFile + ">";

                                    MyLog.WriteTraceLog("出力ファイルが存在しません。<" + outFile + ">");
                                }
                            }

                            wd.OutDataFile = outWorkFile;
                        }

                        // 実行後
                        bw.ReportProgress(0, wd);
                    }

                }
                catch (Exception ex)
                {
                    wd.Result = new rtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = ex.Message;

                    bw.ReportProgress(0, wd);

                    MyLog.WriteTraceLog(ex.Message);
                    MessageBox.Show(ex.Message, "エラー");
                }
            }
        }

        private void worker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            showButton(button2, button3, true);

            if (e.Cancelled)
            {
                infoBoxAddMsg("　　　※※※実行処理がキャンセルされました。※※※　　　");
            }
            else
            {
                infoBoxAddMsg("　　　☆☆☆実行処理が正常に終了しました。☆☆☆　　　");
            }

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
            String key = ((WorkData)(e.UserState)).CaseName;
            rtnCode result = ((WorkData)(e.UserState)).Result;

            int inx = myListView1.Items.IndexOfKey(key);
            Console.WriteLine("Changed:  " + preItemIndex.ToString() + " , " + inx.ToString());

            if (result != null && result.Code != 0 && inx >= 0)
            {
                // エラー
                myListView1.setStatus(myListView1.Items[inx], MyConst.RUN_STAT_ERR);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]の実行処理にエラーが発生しました。ログファイルをご参照ください。", 
                    MyConst.RET_V.ERROR);
            }
            else if (result != null && result.Code == 0 && preItemIndex >= 0)
            {
                // 正常終了
                myListView1.setStatus(myListView1.Items[preItemIndex], MyConst.RUN_STAT_END);
                if (result.Message != null && result.Message.Length > 0)
                {
                    foreach (string ms in result.Message.Replace("\r\n", "\n").Split('\n'))
                    {
                        infoBoxAddMsg("[" + myListView1.Items[preItemIndex].Name + 
                            "]の実行処理に問題が発生しました。[" + ms + "]", MyConst.RET_V.WARN);
                    }
                }
                else
                {
                    infoBoxAddMsg("[" + myListView1.Items[preItemIndex].Name + "]の実行処理が正常終了した。");
                }
            }
            else if (result == null && inx >= 0)
            {
                // 実行開始
                myListView1.setStatus(myListView1.Items[inx], MyConst.RUN_STAT_BEGIN);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]の実行処理が開始した。");

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

                foreach (WorkData wd in Program.workData1)
                {
                    if (bw.CancellationPending)
                    {
                        //キャンセルされたとき
                        e.Cancel = true;
                        return;
                    }

                    if (wd.Check && wd.OutParm != null && wd.OutParm.Length > 0)
                    {
                        // 比較操作前
                        wd.Result = null;
                        bw.ReportProgress(0, wd);
                        
                        System.Threading.Thread.Sleep(500);

                        if (!System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) +
                            MyCommon.addLeftYen(MyConst.compFolder)))
                        {
                            System.IO.Directory.CreateDirectory(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) +
                                MyCommon.addLeftYen(MyConst.compFolder));
                        }

                        rtnCode rt = new rtnCode();

                        string[] outFileA = wd.OutParm.Replace("\r\n", "\n").Split('\n');
                        string[] cmpFileA = wd.CompFile.Replace("\r\n", "\n").Split('\n');

//                        // ファイル数が不一致の場合、比較せず、不一致とする
//                        if (outFileA.Length != cmpFileA.Length)
//                        {
//                            rt.Code = 2;
//                            rt.Message = "比較するファイル数が不一致。";
//                        }
                        
                        for (int i = 0; i < Math.Min(outFileA.Length, cmpFileA.Length); i++)
                        {
                            string cmp1 = MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFileA[i]);
                            string cmp2 = MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(cmpFileA[i]);

                            if (!System.IO.File.Exists(MyConst.workPath + cmp1))
                            {
                                rt.Code = 2;
                                rt.Message = (rt.Message.Length == 0 ? "" : rt.Message + "\n") + 
                                    "比較対象ファイルが存在しません。<" + outFileA[i] + ">";
                            }
                            else if (!System.IO.File.Exists(MyConst.workPath + cmp2))
                            {
                                rt.Code = 2;
                                rt.Message = (rt.Message.Length == 0 ? "" : rt.Message + "\n")　+ 
                                    "比較対象ファイルが存在しません。<" + cmpFileA[i] + ">";
                            }
                            else
                            {
                                // 比較処理
                                rtnCode r1 = MyCommon.RunExe(Program.INI.iniDiffPath, Program.INI.iniDiffOpts + " " +
                                    ".\\" + MyConst.workDir + cmp1 + " " + ".\\" + MyConst.workDir + cmp2);
                                    
                                // 比較結果コードが大きい場合
                                if (r1.Code > rt.Code)
                                {
                                    rt.Code = r1.Code;
                                    // エラー発生時、エラーメッセージを出力する。
                                    if (rt.Code == (int)MyConst.CMP_RET.ERROR)
                                    {
                                        rt.Message = (rt.Message.Length == 0 ? "" : rt.Message + "\n") + r1.Message;
                                    }
                                }
                            }
                        }

                        // 比較にエラーが発生しない場合だけ、結果ファイル出力する
                        if (rt.Code != (int)MyConst.CMP_RET.ERROR)
                        {
                            string excFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) + 
                                MyCommon.addLeftYen(wd.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);

                            // エクセル出力処理
                            rtnCode r2 = MyCommon.exCompExcel(ExcelApp, wd.CaseName, wd.OutParm, wd.TempFile, wd.CompFile, excFile);

                            if (r2.Code == 0)
                            {
                                wd.OutExcelFile = excFile;
                            }

                            if (r2.Message.Length > 0)
                            {
                                rt.Message = (rt.Message.Length == 0 ? "" : rt.Message + "\n") + r2.Message;
                            }
                        }
                        

                        wd.Result = rt;

                        // 処理完了
                        bw.ReportProgress(0, wd);

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
                MyLog.WriteTraceLog(ex.Message);
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
            if (e.Cancelled)
            {
                infoBoxAddMsg("　　　※※※結果出力処理がキャンセルされました。※※※　　　");
            }
            else
            {
                infoBoxAddMsg("　　　☆☆☆結果出力処理が正常に終了しました。☆☆☆　　　");
            }
        }

        private void worker2_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            String key = ((WorkData)(e.UserState)).CaseName;
            rtnCode result = ((WorkData)(e.UserState)).Result;

            int inx = myListView1.Items.IndexOfKey(key);
            Console.WriteLine(key + "  Changed:  " + preItemIndex.ToString() + " , " + inx.ToString());

            if (result != null && result.Code == 1)
            {
                // 不一致
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_DIFF);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]に不一致が発生しました。", MyConst.RET_V.WARN);

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]に不一致が発生しました。");
            }
            else if (result != null && result.Code == 0)
            {
                // 一致
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_SAME);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]が一致しました。", MyConst.RET_V.INFO);

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]が一致しました。");
            }
            else if (result != null && result.Code == 2)
            {
                // エラー発生
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_ERR);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]の比較にエラーが発生しました。" +
                    result.Message.Replace("\n","\\n"), MyConst.RET_V.ERROR);

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較にエラーが発生しました。");
                MyLog.WriteTraceLog(result.Message);
            }
            else if (result != null && result.Code != 0 && result.Code != 1 && result.Code != 2)
            {
                // 異常終了
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_ERR);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + 
                    "]の比較にエラーが発生しました。ログファイルをご参照ください。", MyConst.RET_V.ERROR);

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較にエラーが発生しました。");
                MyLog.WriteTraceLog(result.Message);
            }
            else if (result == null)
            {
                // 結果出力開始
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_BEGIN);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]の結果出力処理が開始した。");

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]の結果出力処理が開始した。");
            }
            else
            {
                // 予想外
                myListView1.setStatus(myListView1.Items[inx], MyConst.CMP_STAT_ERR);
                infoBoxAddMsg("[" + myListView1.Items[inx].Name + "]の比較に異常が発生しました。", MyConst.RET_V.ERROR);

                MyLog.WriteTraceLog("[" + myListView1.Items[inx].Name + "]の比較に異常が発生しました。");
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
                MyLog.WriteTraceLog(mthName + "　処理開始　");

                showButton(null, null, false);

                foreach (WorkData wd in Program.workData1)
                {
                    if (wd.Check) MyCommon.convertData(wd.CaseName);
                }
                //allCheck.Checked = false;
                //readWorkData();

                //addListView();

                showButton(null, null, true);

                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                button1.Enabled = true;
                button2.Enabled = true;
                button4.Enabled = true;
                MyLog.WriteTraceLog(mthName + "でエラーが発生しました\n" + ex.ToString());
            }
        }

        // 実行
        private void button2_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                preItemIndex = -1;

                MyLog.WriteTraceLog(mthName + "　処理開始　");

                showButton(button3, button2, false);

                if (!this.bWorker1.IsBusy)
                {
                    this.bWorker1.RunWorkerAsync();
                }

                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button2, button3, true);

                MyLog.WriteTraceLog(mthName + "でエラーが発生しました。\n" + ex.Message);
            }
        }

        //　実行　取り消し
        private void button3_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                MyLog.WriteTraceLog(mthName + "　処理開始　");

                if (this.bWorker1.IsBusy)
                {
                    this.bWorker1.CancelAsync();
                }

                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button2, button3, true);
                MyLog.WriteTraceLog(mthName + "でエラーが発生しました。\n" + ex.Message);
            }
        }

        // 結果出力
        private void button4_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                preItemIndex = -1;

                MyLog.WriteTraceLog(mthName + "　処理開始　");

                showButton(button5, button4, false);

                if (!this.bWorker2.IsBusy)
                {
                    this.bWorker2.RunWorkerAsync();
                }

                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button4, button5, true);

                MyLog.WriteTraceLog(mthName + "でエラーが発生しました。\n" + ex.Message);
            }
        }

        // 結果出力 取り消し
        private void button5_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name;
            try
            {
                MyLog.WriteTraceLog(mthName + "　処理開始　");

                if (this.bWorker2.IsBusy)
                {
                    this.bWorker2.CancelAsync();
                }

                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                showButton(button4, button5, true);
                MyLog.WriteTraceLog(mthName + "でエラーが発生しました\n" + ex.ToString());
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
                MyLog.WriteTraceLog(mthName + "　処理開始　");
                button7.Enabled = false;

                // ローカルフォルダ作成
                if (!System.IO.Directory.Exists(MyConst.prePath))
                {
                    System.IO.Directory.CreateDirectory(MyConst.prePath);
                }

                if (!System.IO.Directory.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.srcFolder)))
                {
                    System.IO.Directory.CreateDirectory(MyConst.prePath + MyCommon.addLeftYen(MyConst.srcFolder));
                }

                if (!System.IO.Directory.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder)))
                {
                    System.IO.Directory.CreateDirectory(MyConst.prePath + MyCommon.addLeftYen(MyConst.libFolder));
                }

                if (!System.IO.Directory.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.lstFolder)))
                {
                    System.IO.Directory.CreateDirectory(MyConst.prePath + MyCommon.addLeftYen(MyConst.lstFolder));
                }

                if (!System.IO.Directory.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.tmpFolder)))
                {
                    System.IO.Directory.CreateDirectory(MyConst.prePath + MyCommon.addLeftYen(MyConst.tmpFolder));
                }

                // 関連COBファイルをローカルへコピー
                List<String> progList = new List<string>();
                // リストのチェック対象を洗い出す
                foreach (WorkData wd in Program.workData1)
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

                // ローカルへコピー＆コンパイル
                MyCommon.copyCompileCob(progList);
                
                button7.Enabled = true;
                MyLog.WriteTraceLog(mthName + "　処理終了　");
            }
            catch (Exception ex)
            {
                button7.Enabled = true;
                MyLog.WriteTraceLog(mthName + "でエラーが発生しました。\n" + ex.Message);
            }
        }

        private void myListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
                    MyLog.WriteTraceLog(ex.Message);
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

            foreach (WorkData wd in Program.workData1)
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

        private void button8_Click(object sender, EventArgs e)
        {
            MyCommon.bb();
        }
        
        /// <summary>
        /// Iniファイルから定義させたエラー判断用文字列を取得する
        /// </summary>
        /// <param name="section">エラーのセッション名</param>
        /// <param name="path">INIファイルのフルパス</param>
        /// <returns></returns>
        //public List<string> GetIniErrorString(string section, string path)
        //{
        //    byte[] bytes = new byte[1024];
        //    StringBuilder sbErrStr = new StringBuilder(1024);

        //    int size = GetPrivateProfileString(section, 0, "", bytes, 1024, path);
        //    string keys = Encoding.Default.GetString(bytes, 0, size - (size > 0 ? 1 : 0));

        //    List<string> errStr = new List<string>();

        //    foreach (string key in keys.Split(new char[] { '\0' }))
        //    {
        //        if (key.Length > 0)
        //        {
        //            GetPrivateProfileString(section, key, "", sbErrStr, Convert.ToUInt32(sbErrStr.Capacity), path);

        //            if (sbErrStr.Length > 0)
        //            {
        //                errStr.Add(sbErrStr.ToString());
        //            }
        //        }
        //    }

        //    return errStr;
        //}


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
