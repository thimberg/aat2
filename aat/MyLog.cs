using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.IO;

namespace aat
{
    public static class MyLog
    {
        private delegate void AddMsg(String msg, MyConst.RET_V level = MyConst.RET_V.INFO);
        private static AddMsg infoBoxAddMsg = null;

        private delegate void noParamFunc();

        /// <summary>
        /// ログ出力する。
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="level"></param>
        public static void WriteLog(string msg, MyConst.RET_V level = MyConst.RET_V.INFO)
        {
            if(Program.INI.iniDebugLevel >= (int)MyConst.DEBUG_LEVEL.DEBUG)
            {
                WriteInfoMsg(msg, level);
                WriteTraceLog(msg, null);
            }
            else if(Program.INI.iniDebugLevel >= (int)MyConst.DEBUG_LEVEL.WARN)
            {
                WriteInfoMsg(msg, level); 
            }
            else if(Program.INI.iniDebugLevel >= (int)MyConst.DEBUG_LEVEL.INFO)
            {
                WriteTraceLog(msg, null);
            }
        }

        /// <summary>
        /// ログ出力
        /// </summary>
        /// <param name="msg">メッセージ</param>
        /// <remarks></remarks>
        public static void WriteInfo(string msg, MyConst.RET_V level = MyConst.RET_V.INFO)
        {
            WriteInfoMsg(msg, level);

            WriteTraceLog(msg, null);
        }

        /// <summary>
        /// 画面のInfoBoxに出力する。
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="level"></param>
        private static void WriteInfoMsg(String msg, MyConst.RET_V level)
        {
            if(Program._form_instance is formMain)
            {
                infoBoxAddMsg = new AddMsg(((formMain)Program._form_instance).WriteInfoMsg);
//                ((formMain)Program._form_instance).Invalidate();
                new Thread(new ThreadStart(delegate {
                    ((FormRibbon)Program._form_instance).Invoke((noParamFunc)delegate {
                        ((formMain)Program._form_instance).Invalidate(); });
                })).Start();
            }
            else if(Program._form_instance is FormRibbon)
            {
                infoBoxAddMsg = new AddMsg(((FormRibbon)Program._form_instance).WriteInfoMsg);
//                ((FormRibbon)Program._form_instance).Invalidate();
                new Thread(new ThreadStart(delegate {
                    ((FormRibbon)Program._form_instance).Invoke((noParamFunc)delegate { 
                        ((FormRibbon)Program._form_instance).Invalidate(); });
                })).Start();
            }

            foreach (string str in msg.Replace("\r\n", "\n").Split('\n'))
            {
                if (str.Length > 0) infoBoxAddMsg(str, level);
            }

            if (Program._form_instance is formMain)
            {
//                ((formMain)Program._form_instance).Update();
                new Thread(new ThreadStart(delegate {
                    ((FormRibbon)Program._form_instance).Invoke((noParamFunc)delegate {
                        ((formMain)Program._form_instance).Update(); });
                })).Start();
            }
            else if (Program._form_instance is FormRibbon)
            {
//                ((FormRibbon)Program._form_instance).Update();
                new Thread(new ThreadStart(delegate {
                    ((FormRibbon)Program._form_instance).Invoke((noParamFunc)delegate {
                        ((FormRibbon)Program._form_instance).Update(); });
                    })).Start();
            }
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
                Directory.CreateDirectory(logFolder);

                // ログファイル名作成
                String logFile = logFolder + "\\TraceLog" + dt.ToString("yyMMdd") + ".log";

                //                // 翌日分のログファイル削除(１ヶ月分のログファイルしか保存しないようにするため)
                //                String logNext = logFolder + "\\TraceLog" + dt.AddDays(1).ToString("yyMMdd") + ".log";
                //                File.Delete(logNext);

                // ログ出力文字列作成
                String logStr;
                logStr = dt.ToString("yyyy/MM/dd HH:mm:ss") + "\t" + msg;
                if (ex != null)
                {
                    logStr = logStr + "\n" + ex.ToString();
                }

                // Shift-JISでログ出力
                StreamWriter sw = null;
                try
                {
                    sw = new StreamWriter(logFile, true,
                        System.Text.Encoding.GetEncoding("UTF-8"));
                    sw.WriteLine(logStr);

                }
                catch (Exception e)
                {
                    //MessageBox.Show("ログファイルの出力にエラーが発生しました。" + e.Message);
                    //                    throw new Exception(e.Message, e);
                }
                finally
                {
                    if (sw != null) sw.Close();
                }
            }
            catch (Exception e)
            {
                //MessageBox.Show("ログファイルの出力にエラーが発生しました。" + e.Message);
                //                throw new Exception( e.Message, e);
            }
        }
    }
}
