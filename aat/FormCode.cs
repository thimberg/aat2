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
using System.Text.RegularExpressions;

namespace aat
{
    public partial class FormCode : Form
    {
        private readonly String[] COB_KEYWORD_FIRST = 
        {              // 文の先頭となる句
          "ACCEPT", "ADD", "ALTER",
          "CALL", "CANCEL", "CLOSE", "COMPUTE", "CONTINUE",
          "DELETE", "DISPLAY", "DIVIDE",
          "END-ADD", "END-CALL", "END-COMPUTE", "END-DELETE", "END-DIVIDE", "END-EVALUATE",
          "END-IF", "END-MULTIPLY", "END-OF-PAGE", "END-PERFORM", "END-READ", "END-RECEIVE",
          "END-RETURN", "END-REWRITE", "END-SEARCH", "END-START", "END-STRING", "END-SUBTRACT",
          "END-UNSTRING", "END-WRITE", "ENTRY", "EVALUATE", "EXIT",
          "GOBACK", "GO",
          "IF", "INITIALIZE", "INSPECT", "INVOKE",
          "MERGE", "MOVE", "MULTIPLY",
          "OPEN",
          "PERFORM",
          "READ", "RELEASE", "RETURN", "REWRITE",
          "SEARCH", "SET", "SORT", "START", "STOP", "STRING", "SUBTRACT",
          "UNSTRING", "WRITE"
        };

        private readonly String[] COB_KEYWORD_ALL =
        {
            "ACCEPT", "ADD", "ADVANCING", "AFTER", "ALL", "AND", "ARGUMENT", "ASSIGN", "AUTHOR",
            "BEFORE", "BLOCK", "BY",
            "CALL", "CHARACTERS", "CLOSE", "COMP", "COMPILED", "COMPUTE", "COMPUTER", "CONFIGURATION", "CONSOLE", "CONTAINS", "CONTINUE", "CONTROL", "COPY",
            "DATA", "DELETE", "DISPLAY", "DIVIDE", "DIVISION",
            "ELSE", "END", "ENVIRONMENT", "EVALUATE", "EXAMINE", "EXIT", "EXTERNAL",
            "FD", "FILE", "FILLER", "FROM",
            "GIVING", "GO", "GOBACK",
            "HIGH-VALUE",
            "IDENTIFICATIONIF", "INITIALIZE", "INPUT", "INTO", "IS",
            "LABEL", "LINKAGE", "LOW-VALUE",
            "MODE", "MOVE",
            "NOT",
            "OBJECT", "OCCURS", "OF", "ON", "OPEN", "OR", "OTHER", "OUTPUT",
            "PERFORM", "PIC", "PROCEDURE", "PROGRAM",
            "READ", "RECORD", "RECORDING", "REDEFINES", "REMAINDER", "REMARKS", "REPLACING", "REWRITE", "ROLLBACK",
            "SECTION", "SELECT", "SOURCE", "SPACE", "STANDARD", "STOP", "STORAGE", "SYSOUT",
            "TEST", "THEN", "TO", "TODAY", "TRANSFORM",
            "UNTIL", "UPON", "USING",
            "VALUE", "VARYING",
            "WHEN", "WITH", "WORKING", "WRITE", "WRITTEN",
            "ZERO"
        };

        private String regex_keyword_all;
        private bool scroll_manual = false;

        public static BackgroundWorker bw1 = null;

        public FormCode(String fileName, String LineNo)
        {
            Console.WriteLine("time:::" + System.DateTime.Now);
            InitializeComponent();

            int lineNum = 0;

            if (!File.Exists(MyConst.prePath + MyCommon.addLeftYen(MyConst.srcFolder) + MyCommon.addLeftYen(fileName))
               || !Int32.TryParse(LineNo, out lineNum) || lineNum < 1)
            {
                MessageBox.Show("ソースファイルを表示にエラーが発生しました。");
                return;
            }

            rtb1.ShowLineNumbers = true;

            lineNum = lineNum - 1;

            this.Text = fileName;
            rtb1.LoadFile(MyConst.prePath + MyCommon.addLeftYen(MyConst.srcFolder) + MyCommon.addLeftYen(fileName), RichTextBoxStreamType.PlainText);

            regex_keyword_all = @"\b(";

            foreach (String n in COB_KEYWORD_ALL)
            {
                regex_keyword_all += n + "|";
            }
            regex_keyword_all = regex_keyword_all.Substring(0, regex_keyword_all.Length - 1);
            regex_keyword_all += @")\b";

            setColor();

            //ShowCodeColor(lineNum);

            //bw1 = new BackgroundWorker();

            //bw1.DoWork += bw1_DoWork;
            //bw1.ProgressChanged += bw1_ProgressChanged;
            //bw1.RunWorkerCompleted += bw1_RunWorkerCompleted;
            //bw1.WorkerReportsProgress = true;
            //bw1.WorkerSupportsCancellation = true;
            //if (!bw1.IsBusy)
            //{
            //    bw1.RunWorkerAsync();
            //}

            rtb1.SelectionStart = rtb1.GetFirstCharIndexFromLine(lineNum);
            rtb1.SelectionLength = rtb1.Lines[lineNum].Length;
            rtb1.SelectionBackColor = Color.Orange;

            Console.WriteLine("time:::" + System.DateTime.Now);
            scroll_manual = true;
        }

        private void FormSource_Load(object sender, EventArgs e)
        {

        }

        private void ShowCodeColor(int lineNo)
        {
            int offset = rtb1.GetFirstCharIndexFromLine(lineNo <= 100 ? 0 : lineNo - 100);

            String text = "";
            int startLine = lineNo <= 100 ? 0 : lineNo - 100;
            int endLine = lineNo > rtb1.Lines.Count() - 100 ? rtb1.Lines.Count()-1 : lineNo + 100;
            int startPos = rtb1.GetFirstCharIndexFromLine(startLine);
            int endPos = rtb1.GetFirstCharIndexFromLine(endLine);

            text = rtb1.Text.Substring(startPos, endPos - startPos);
            
            rtb1.SuspendLayout();
            scroll_manual = false;

            MatchCollection keywordMatches = Regex.Matches(text, regex_keyword_all);
            foreach (Match m in keywordMatches)
            {
                rtb1.SelectionStart = m.Index + offset;
                rtb1.SelectionLength = m.Length;
                rtb1.SelectionColor = Color.Blue;
            }

            RegexOptions options = RegexOptions.IgnoreCase | RegexOptions.Multiline;

            MatchCollection commentMatches = Regex.Matches(text, "^.{6}\\*.*$", options);
            foreach (Match m in commentMatches)
            {
                rtb1.SelectionStart = m.Index + offset;
                rtb1.SelectionLength = m.Length;
                rtb1.SelectionColor = Color.Green;
            }
            scroll_manual = true;
            rtb1.ResumeLayout();
        }

        private void rtb1_VScroll(object sender, EventArgs e)
        {
            Console.WriteLine("VScroll ...:" + rtb1.FirstVisibleLine);

            if (!scroll_manual) return;

            //int oldSelectionStart = rtb1.SelectionStart;
            //int oldSelectionLength = rtb1.SelectionLength;

            //rtb1.BeginUpdateAndSaveState();
            
            //ShowCodeColor(rtb1.FirstVisibleLine);

            //rtb1.EndUpdateAndRestoreState();
            //rtb1.SelectionStart = oldSelectionStart;
            //rtb1.SelectionLength = oldSelectionLength;
            
        }

        private void bw1_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bw = (BackgroundWorker)sender;
            
            try
            {
                if (bw.CancellationPending)
                {
                    //キャンセルされたとき
                    e.Cancel = true;
                    return;
                }

                //rtb1.SuspendLayout();
                setColor();
                //rtb1.ResumeLayout();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "エラー");
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
            }
        }

        private void bw1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
        }

        private void bw1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            
        }

        private void setColor()
        {
            String textContents = "";
            int oldSelectionStart;
            int oldSelectionLength;
            
            if(rtb1.InvokeRequired)
            {
                //this.Invoke(new beginUpdate(richtextbox_beginUpdate));
                textContents = (String)this.rtb1.Invoke(new GetRichTextBoxTextCallback(richtextbox_getText));
                oldSelectionStart = (int)this.rtb1.Invoke(new getSelectionStart(richtextbox_getSelectionStart));
                oldSelectionLength = (int)this.rtb1.Invoke(new getSelectionLength(richtextbox_getSelectionLength));
            }
            else
            {
                //richtextbox_beginUpdate();
                textContents = richtextbox_getText();
                oldSelectionStart = richtextbox_getSelectionStart();
                oldSelectionLength = richtextbox_getSelectionLength();
            }

            MatchCollection keywordMatches = Regex.Matches(textContents, regex_keyword_all);
            foreach (Match m in keywordMatches)
            {
                if (rtb1.InvokeRequired)
                {
                    this.Invoke(new SetRichTextBoxCallback(richtextbox_setColor), new object[] { m.Index, m.Length, Color.Blue });
                }
                else
                {
                    richtextbox_setColor(m.Index, m.Length, Color.Blue);
                }
            }

            RegexOptions options = RegexOptions.IgnoreCase | RegexOptions.Multiline;

            MatchCollection commentMatches = Regex.Matches(textContents, "^.{6}\\*.*$", options);
            foreach (Match m in commentMatches)
            {
                if (rtb1.InvokeRequired)
                {
                    this.Invoke(new SetRichTextBoxCallback(richtextbox_setColor), new object[] { m.Index, m.Length, Color.Green });
                }
                else
                {
                    richtextbox_setColor(m.Index, m.Length, Color.Green);
                }
            }

            if (rtb1.InvokeRequired)
            {
                this.rtb1.Invoke(new setSelectionStart(richtextbox_setSelectionStart), new object[] { oldSelectionStart });
                this.rtb1.Invoke(new setSelectionLength(richtextbox_setSelectionLength), new object[] { oldSelectionLength });
                //this.Invoke(new endUpdate(richtextbox_endUpdate));
            }
            else
            {
                richtextbox_setSelectionStart(oldSelectionStart);
                richtextbox_setSelectionLength(oldSelectionLength);
                //richtextbox_endUpdate();
            }
        }

        private delegate void beginUpdate();
        private void richtextbox_beginUpdate()
        {
            this.rtb1.BeginUpdate();
        }

        private delegate void endUpdate();
        private void richtextbox_endUpdate()
        {
            this.rtb1.EndUpdate();
        }

        private delegate int getSelectionStart();
        private int richtextbox_getSelectionStart()
        {
            return this.rtb1.SelectionStart;
        }

        private delegate void setSelectionStart(int start);
        private void richtextbox_setSelectionStart(int start)
        {
            this.rtb1.SelectionStart = start;
        }

        private delegate int getSelectionLength();
        private int richtextbox_getSelectionLength()
        {
            return this.rtb1.SelectionLength;
        }

        private delegate void setSelectionLength(int length);
        private void richtextbox_setSelectionLength(int length)
        {
            this.rtb1.SelectionLength = length;
        }

        private delegate String GetRichTextBoxTextCallback();
        private String richtextbox_getText()
        {
            return this.rtb1.Text;
        }

        private delegate void SetRichTextBoxCallback(int start, int length, Color c);
        private void richtextbox_setColor(int start, int length, Color c)
        {
            this.rtb1.SelectionStart = start;
            this.rtb1.SelectionLength = length;
            this.rtb1.SelectionColor = c;

        }
    }
}
