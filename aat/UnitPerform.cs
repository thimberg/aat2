using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.IO;
using System.Windows.Forms;

namespace aat
{
    class UnitPerform
    {
        public static int preItemIndex;
        public static BackgroundWorker bw1 = null;

        // 実行
        public static void perform(object sender, EventArgs e)
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
                bw1 = new BackgroundWorker();

                bw1.DoWork += bw1_DoWork;
                bw1.ProgressChanged += bw1_ProgressChanged;
                bw1.RunWorkerCompleted += bw1_RunWorkerCompleted;
                bw1.WorkerReportsProgress = true;
                bw1.WorkerSupportsCancellation = true;

                preItemIndex = -1;

                MyLog.WriteInfo(btnName + "　処理開始　(" + mthName + ")");

                Program.runButtonC(false);

                if (!bw1.IsBusy)
                {
                    bw1.RunWorkerAsync();
                }

                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.runButtonC(true);

                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました。\n" + ex.Message, MyConst.RET_V.ERROR);
            }
        }

        // 実行 取り消し
        public static void performCancel(object sender, EventArgs e)
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

                if (bw1.IsBusy)
                {
                    bw1.CancelAsync();
                }

                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.runButtonC(true);
                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました。\n" + ex.Message, MyConst.RET_V.ERROR);
            }
        }

        private static void bw1_DoWork(object sender, DoWorkEventArgs e)
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
                                wd.Result = new RtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile) + "]";

                                MyLog.WriteInfo(wd.Result.Message, MyConst.RET_V.ERROR);

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
                                wd.Result = new RtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(compFile) + "]";

                                MyLog.WriteInfo(wd.Result.Message, MyConst.RET_V.ERROR);

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
                                    MyCommon.addLeftYen(inTpl), MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl), true);
                            }
                            else
                            {
                                System.Threading.Thread.Sleep(500);
                                wd.Result = new RtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inTpl) + "]";

                                MyLog.WriteInfo(wd.Result.Message, MyConst.RET_V.ERROR);

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
                                wd.Result = new RtnCode();
                                wd.Result.Code = -1;
                                wd.Result.Message = "マッピングファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                    MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseName + MyConst.CFM_EXT) + "]";

                                MyLog.WriteInfo(wd.Result.Message, MyConst.RET_V.ERROR);

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
                            wd.Result = new RtnCode();
                            wd.Result.Code = -1;
                            wd.Result.Message = "指定されたファイルが存在しません。[" + Program.INI.iniTestDataDir +
                                MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(wd.CaseExe) + "]";

                            MyLog.WriteInfo(wd.Result.Message, MyConst.RET_V.ERROR);

                            bw.ReportProgress(0, wd);
                            continue;
                        }

                        string arguments = "";
                        RtnCode rt = MyCommon.RunExe(toolName, arguments, true);

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

                                    MyLog.WriteInfo("出力ファイルが存在しません。<" + outFile + ">", MyConst.RET_V.ERROR);
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
                    wd.Result = new RtnCode();
                    wd.Result.Code = -1;
                    wd.Result.Message = ex.Message;

                    bw.ReportProgress(0, wd);

                    MessageBox.Show(ex.Message, "エラー");
                    MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
                }
            }
        }

        private static void bw1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            Program.runButtonC(true);

            if (e.Cancelled)
            {
                MyLog.WriteInfo("　　　※※※実行処理がキャンセルされました。※※※　　　", MyConst.RET_V.WARN);
            }
            else
            {
                MyLog.WriteInfo("　　　☆☆☆実行処理が正常に終了しました。☆☆☆　　　");
            }

            /// todo: キャンセルされた場合、引き続き実行するか
            // 一括実行の場合
            if (Program.allRun)
            {
                Program.allRun = false;

                Program.exportClickC();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private static void bw1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            String key = ((WorkData)(e.UserState)).CaseName;
            RtnCode result = ((WorkData)(e.UserState)).Result;

            int inx = Program.myListView1.Items.IndexOfKey(key);
            Console.WriteLine("Changed:  " + preItemIndex.ToString() + " , " + inx.ToString());

            if (result != null && result.Code != 0 && inx >= 0)
            {
                // エラー
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.RUN_STAT_ERR);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]の実行処理にエラーが発生しました。ログファイルをご参照ください。",
                    MyConst.RET_V.ERROR);
            }
            else if (result != null && result.Code == 0 && preItemIndex >= 0)
            {
                // 正常終了
                Program.myListView1.setStatus(Program.myListView1.Items[preItemIndex], MyConst.RUN_STAT_END);
                if (result.Message != null && result.Message.Length > 0)
                {
                    foreach (string ms in result.Message.Replace("\r\n", "\n").Split('\n'))
                    {
                        MyLog.WriteInfo("[" + Program.myListView1.Items[preItemIndex].Name +
                            "]の実行処理に問題が発生しました。[" + ms + "]", MyConst.RET_V.WARN);
                    }
                }
                else
                {
                    MyLog.WriteInfo("[" + Program.myListView1.Items[preItemIndex].Name + "]の実行処理が正常終了した。");
                }
            }
            else if (result == null && inx >= 0)
            {
                // 実行開始
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.RUN_STAT_BEGIN);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]の実行処理が開始した。");

                preItemIndex = inx;
            }

        }

        // データ変換
        public static void convert(object sender, EventArgs e)
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

                Program.cnvButtonC(false);

                foreach (WorkData wd in Program.workData1)
                {
                    if (wd.Check) MyCommon.convertData(wd.CaseName);
                }
                //allCheck.Checked = false;
                //readWorkData();

                //addListView();

                Program.cnvButtonC(true);

                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.cnvButtonC(true);
                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました\n" + ex.ToString(), MyConst.RET_V.ERROR);
            }
        }

    }
}
