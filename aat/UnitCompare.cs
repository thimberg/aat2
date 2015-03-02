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
    class UnitCompare
    {
        public static BackgroundWorker bw2 = null;

        // 結果出力
        public static void export(object sender, EventArgs e)
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
                bw2 = new BackgroundWorker();

                bw2.DoWork += bw2_DoWork;
                bw2.ProgressChanged += bw2_ProgressChanged;
                bw2.RunWorkerCompleted += bw2_RunWorkerCompleted;
                bw2.WorkerReportsProgress = true;
                bw2.WorkerSupportsCancellation = true;

                MyLog.WriteInfo(btnName + "　処理開始　(" + mthName + ")");

                Program.expButtonC(false);

                if (!bw2.IsBusy)
                {
                    bw2.RunWorkerAsync();
                }

                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.expButtonC(true);

                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました。\n" + ex.Message, MyConst.RET_V.ERROR);
            }
        }

        // 結果出力 取り消し
        public static void exportCancel(object sender, EventArgs e)
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

                if (bw2.IsBusy)
                {
                    bw2.CancelAsync();
                }

                MyLog.WriteInfo(btnName + "　処理終了　(" + mthName + ")");
            }
            catch (Exception ex)
            {
                Program.expButtonC(true);
                MyLog.WriteInfo(btnName + "　の処理にエラーが発生しました\n" + ex.ToString(), MyConst.RET_V.ERROR);
            }
        }


        private static void bw2_DoWork(object sender, DoWorkEventArgs e)
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

                        RtnCode rt = new RtnCode();

                        // 二進数比較する場合
                        if (Program.INI.iniBinDiff == "TRUE")
                        {
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
                                    rt.Message = (rt.Message.Length == 0 ? "" : rt.Message + "\n") +
                                        "比較対象ファイルが存在しません。<" + cmpFileA[i] + ">";
                                }
                                else
                                {
                                    // 比較処理
                                    RtnCode r1 = MyCommon.RunExe(Program.INI.iniDiffPath, Program.INI.iniDiffOpts + " " +
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
                        }

                        // 比較にエラーが発生しない場合だけ、結果ファイル出力する
                        if (rt.Code != (int)MyConst.CMP_RET.ERROR)
                        {
                            string excFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                                MyCommon.addLeftYen(wd.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);

                            // エクセル出力処理
                            RtnCode r2 = MyCommon.exCompExcel(ExcelApp, wd.CaseName, wd.OutParm, wd.TempFile, wd.CompFile, excFile);

                            if (r2.Code != 2)
                            {
                                wd.OutExcelFile = excFile;
                            }

                            rt.Code = r2.Code;

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

        private static void bw2_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            System.Threading.Thread.Sleep(500);
            Program.expButtonC(true);

            if (e.Cancelled)
            {
                MyLog.WriteInfo("　　　※※※結果出力処理がキャンセルされました。※※※　　　", MyConst.RET_V.WARN);
            }
            else
            {
                MyLog.WriteInfo("　　　☆☆☆結果出力処理が正常に終了しました。☆☆☆　　　");
            }
        }

        private static void bw2_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            String key = ((WorkData)(e.UserState)).CaseName;
            RtnCode result = ((WorkData)(e.UserState)).Result;

            int inx = Program.myListView1.Items.IndexOfKey(key);
            
            if (result != null && result.Code == 1)
            {
                // 不一致
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_DIFF);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]に不一致が発生しました。", MyConst.RET_V.WARN);
            }
            else if (result != null && result.Code == 0)
            {
                // 一致
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_SAME);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]が一致しました。", MyConst.RET_V.INFO);
            }
            else if (result != null && result.Code == 2)
            {
                // エラー発生
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_ERR);

                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]の比較にエラーが発生しました。", MyConst.RET_V.ERROR);
                if (result.Message.Length > 0)
                {
                    MyLog.WriteInfo(result.Message.Replace("\n", "\\n"), MyConst.RET_V.ERROR);
                }
            }
            else if (result != null && result.Code != 0 && result.Code != 1 && result.Code != 2)
            {
                // 異常終了
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_ERR);

                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name +
                    "]の比較にエラーが発生しました。", MyConst.RET_V.ERROR);
                if (result.Message.Length > 0)
                {
                    MyLog.WriteInfo(result.Message.Replace("\n", "\\n"), MyConst.RET_V.ERROR);
                }
            }
            else if (result == null)
            {
                // 結果出力開始
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_BEGIN);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]の結果出力処理が開始した。");
            }
            else
            {
                // 予想外
                Program.myListView1.setStatus(Program.myListView1.Items[inx], MyConst.CMP_STAT_ERR);
                MyLog.WriteInfo("[" + Program.myListView1.Items[inx].Name + "]の比較に異常が発生しました。", MyConst.RET_V.ERROR);
            }
        }
    }
}
