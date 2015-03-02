using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace aat
{
    public partial class Form2 : Form
    {
        private Form3 _form3Instance;
        private BackgroundWorker backgroundWorker1 = new BackgroundWorker();

        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            button4.Visible = false;
            button4.Enabled = false;

            backgroundWorker1.WorkerSupportsCancellation = true;
            backgroundWorker1.WorkerReportsProgress = true;
            backgroundWorker1.DoWork += new DoWorkEventHandler(BW1_DoWork);
            backgroundWorker1.ProgressChanged += new ProgressChangedEventHandler(BW1_ProgressChanged);
            backgroundWorker1.RunWorkerCompleted += new RunWorkerCompletedEventHandler(BW1_RunWorkerCompleted);

            myListView1.CheckBoxes = true;
            myListView1.OwnerDraw = true;

            myListView1.addCaseColumn();
            myListView1.Columns.Add("Column 2", 200, HorizontalAlignment.Left);
            myListView1.Columns.Add("Column 3", 200, HorizontalAlignment.Left);
            myListView1.Columns.Add("Column 4", 100, HorizontalAlignment.Center);
            myListView1.addStatusColumn();

            // Create three items and three sets of subitems for each item.
            ListViewItem item1 = new ListViewItem("item1", 0);
            // Place a check mark next to the item.
            item1.Checked = true;
            item1.SubItems.Add("1");
            item1.SubItems.Add("2");
            item1.SubItems.Add("3");
            item1.SubItems.Add("30");

            ListViewItem item2 = new ListViewItem("item2", 1);
            item2.SubItems.Add("4");
            item2.SubItems.Add("5");
            item2.SubItems.Add("6");
            item2.SubItems.Add("60");

            ListViewItem item3 = new ListViewItem("item3", 0);
            // Place a check mark next to the item.
            item3.Checked = true;
            item3.SubItems.Add("7");
            item3.SubItems.Add("8");
            item3.SubItems.Add("9");
            item3.SubItems.Add("90");

            //Add the items to the ListView.
            myListView1.Items.AddRange(new ListViewItem[] { item1, item2, item3 });

        }

        private void Form2_Resize(object sender, EventArgs e)
        {
            if (button1.Width < (int)(this.Width * 0.15))
            {
                myListView1.Height = (int)(this.Height * 0.6);
                myListView1.Width = (int)(this.Width * 0.85);

                button1.Left = button2.Left = button3.Left = button4.Left = myListView1.Width + ((int)(this.Width * 0.15) - button1.Width) / 2;
                InfoBox1.Width = myListView1.Width;
                InfoBox1.Top = myListView1.Height + 20;
                InfoBox1.Height = (int)(this.Height * 0.4) - 80;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            String mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name; 
            try
            {
                WriteTraceLog(mthName + "　処理開始　");
                button1.Enabled = false;
                button2.Visible = false;
                button2.Enabled = false;
                button3.Enabled = false;
                button4.Visible = true;
                button4.Enabled = true;
                
//                _form3Instance = new Form3();
//                _form3Instance.Show();
                backgroundWorker1.RunWorkerAsync();

                


                WriteTraceLog(mthName + "　処理終了　");
            }catch (Exception ex)
            {
                button2.Enabled = true;
                WriteTraceLog(mthName + "でエラーが発生しました", ex);
            }
        }
        private void button3_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            //startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            //startInfo.WorkingDirectory = @"C:\Users\admin\Documents\Visual Studio 2013\Projects\aat\aat\bin\Debug";
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = "/C dir/s c:\\dd";
            
            //startInfo.Arguments = "/C C:\\Users\\admin\\Documents\\Visual Studio 2013\\Projects\\aat\\aat\\diff.exe C:\\Users\\admin\\Documents\\Visual Studio 2013\\Projects\\aat\\aat\\aa.txt C:\\Users\\admin\\Documents\\Visual Studio 2013\\Projects\\aat\\aat\\bb.txt ";
            startInfo.RedirectStandardOutput = true;
            startInfo.UseShellExecute = false;
            startInfo.CreateNoWindow = true;

            process.StartInfo = startInfo;
            process.Start();
//            process.BeginOutputReadLine();

            string output = process.StandardOutput.ReadToEnd();
            process.WaitForExit();

            const string ToolFileName = "C:\\Users\\admin\\Documents\\Visual Studio 2013\\Projects\\aat\\aat\\diff.exe";
            const string Arguments = "aa.txt aa2.txt";
            string outputx = RunExternalExe(ToolFileName, Arguments);

            //// Compare the two files that referenced in the textbox controls.
            //if (FileCompare(this.textBox1.Text, this.textBox2.Text))
            //{
            //    MessageBox.Show("Files are equal.");
            //}
            //else
            //{
            //    MessageBox.Show("Files are not equal.");
            //}  
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (this.backgroundWorker1.IsBusy)
            {
                this.backgroundWorker1.CancelAsync();
            }
        }

        public delegate void MethodInvoker();

        private void BW1_DoWork( object sender, DoWorkEventArgs e)
        {

            BackgroundWorker bgWorker = (BackgroundWorker)sender;
            Application.DoEvents();
            //パラメータを取得する
//            int maxLoops = (int)e.Argument;
            string toolName = @"C:\Users\admin\Documents\Visual Studio 2013\Projects\aat\mySleep\bin\Debug\mySleep.exe";
            string arguments = "";
            
            this.Invoke((MethodInvoker)delegate()
            {
                int cnt = 0;
                foreach (ListViewItem itm in this.myListView1.Items)
                {
                    if (itm.Checked)
                    {
                        cnt = cnt + 1;
                    }
                }

                int i = 0;
                foreach (ListViewItem itm in this.myListView1.Items)
                {
                    //キャンセルされたか調べる
                    if (bgWorker.CancellationPending)
                    {
                        //キャンセルされたとき
                        e.Cancel = true;
                        return;
                    }

                    if (itm.Checked)
                    {
//                        string outputx = RunExternalExe(toolName, arguments);
                        System.Threading.Thread.Sleep(3000);
                        itm.SubItems[4].Text = "100";
                        i = i + 1;
                    }
                    
                    //ProgressChangedイベントハンドラを呼び出し、
                    //コントロールの表示を変更する
                    WriteTraceLog((i * 100 / cnt).ToString());
                    bgWorker.ReportProgress(i * 100 / cnt);
                }


            });

            //ProgressChangedで取得できる結果を設定する
            //結果が必要なければ省略できる
//            e.Result = maxLoops;

        }

        //BackgroundWorker1のProgressChangedイベントハンドラ
        //コントロールの操作は必ずここで行い、DoWorkでは絶対にしない
        private void BW1_ProgressChanged( object sender, ProgressChangedEventArgs e)
        {
            //ProgressBar1の値を変更する
//            this._form3Instance.ProgressBarValue = e.ProgressPercentage;

        }

        //BackgroundWorker1のRunWorkerCompletedイベントハンドラ
        //処理が終わったときに呼び出される
        private void BW1_RunWorkerCompleted( object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Error != null)
            {
                //エラーが発生したとき
                this.InfoBox1.Text = "エラー:" + e.Error.Message;
            }
            else if (e.Cancelled)
            {
                //キャンセルされたとき
//                this._form3Instance.Dispose();
                this.InfoBox1.Text = "処理がキャンセルされた。";
            }
            else
            {
                //正常に終了したとき
                //結果を取得する
//                this._form3Instance.Dispose();
            }

            button1.Enabled = true;
            button2.Visible = true;
            button2.Enabled = true;
            button3.Enabled = true;
            button4.Visible = false;
            button4.Enabled = false;

        }


        public string RunExternalExe(string filename, string arguments = null)
        {
            var process = new System.Diagnostics.Process();

            process.StartInfo.FileName = filename;
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
            process.OutputDataReceived += (sender, args) => stdOutput.Append(args.Data);

            string stdError = null;
            try
            {
                process.Start();
                process.BeginOutputReadLine();
                stdError = process.StandardError.ReadToEnd();
                process.WaitForExit();
            }
            catch (Exception e)
            {
                throw new Exception("OS error while executing " + Format(filename, arguments) + ": " + e.Message, e);
            }

            if (process.ExitCode == 0)
            {
                return stdOutput.ToString();
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

                throw new Exception(Format(filename, arguments) + " finished with exit code = " + process.ExitCode + ": " + message);
            }
        }

        private string Format(string filename, string arguments)
        {
            return "'" + filename +
                ((string.IsNullOrEmpty(arguments)) ? string.Empty : " " + arguments) +
                "'";
        }

        private bool FileCompare(string file1, string file2)
        {
            int file1byte;
            int file2byte;
            FileStream fs1;
            FileStream fs2;

            // Determine if the same file was referenced two times.
            if (file1 == file2)
            {
                // Return true to indicate that the files are the same.
                return true;
            }

            // Open the two files.
            fs1 = new FileStream(file1, FileMode.Open);
            fs2 = new FileStream(file2, FileMode.Open);

            // Check the file sizes. If they are not the same, the files 
            // are not the same.
            if (fs1.Length != fs2.Length)
            {
                // Close the file
                fs1.Close();
                fs2.Close();

                // Return false to indicate files are different
                return false;
            }

            // Read and compare a byte from each file until either a
            // non-matching set of bytes is found or until the end of
            // file1 is reached.
            do
            {
                // Read one byte from each file.
                file1byte = fs1.ReadByte();
                file2byte = fs2.ReadByte();
            }
            while ((file1byte == file2byte) && (file1byte != -1));

            // Close the files.
            fs1.Close();
            fs2.Close();

            // Return the success of the comparison. "file1byte" is 
            // equal to "file2byte" at this point only if the files are 
            // the same.
            return ((file1byte - file2byte) == 0);
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
                String logFile = logFolder + "\\TraceLog" + dt.ToString("dd") + ".log";

                // 翌日分のログファイル削除(１ヶ月分のログファイルしか保存しないようにするため)
                String logNext = logFolder + "\\TraceLog" + dt.AddDays(1).ToString("dd") + ".log";
                System.IO.File.Delete(logNext);

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
                catch { }
                finally
                {
                    if (sw != null) sw.Close();
                }
            }
            catch { }
        }



        

    }
}
