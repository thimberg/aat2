using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Reflection;
using System.IO;

namespace aat
{
    public partial class FormOutSelectPopup : Form
    {
        public int buttonCount;

        public WorkData wd;

        public FormOutSelectPopup()
        {
            InitializeComponent();
            buttonCount = 0;

            InitForm();
        }

        public FormOutSelectPopup(WorkData wd)
        {
            this.wd = wd;

            InitializeComponent();
            buttonCount = 0;

            InitForm();
        }

        private void InitForm()
        {
            if (wd == null)
            {
//                this.Hide();
                MessageBox.Show("選択されたケースに問題が発生しました、ご確認ください。");
                return;
            }

            if (!System.IO.Directory.Exists(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName)))
            {
//                this.Hide();
                MessageBox.Show("該当ケースが実行していません、ご確認ください。");
                return;
            }
            // 現行入力
            List<String> oldInPathList = new List<string>();
            foreach (string inFile in wd.InParm.Replace("\r\n", "\n").Split('\n'))
            {
                string oldInPath = Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(inFile));
                if (!oldInPathList.Contains(oldInPath) && System.IO.Directory.Exists(oldInPath))
                {
                    oldInPathList.Add(oldInPath);
                }
            }
            
            if(oldInPathList.Count == 1)
            {
                createButton("OLD-INPUT", "現行入力", oldInPathList[0]);
            }
            else if(oldInPathList.Count > 1)
            {
                for(int i = 0;i<oldInPathList.Count; i++)
                {
                    createButton("OLD-INPUT", "現行入力" + (i+1), oldInPathList[i]);
                }
            }

            // 現行出力
            List<String> oldOutPathList = new List<string>();
            foreach (String outFile in wd.OutParm.Replace("\r\n", "\n").Split('\n'))
            {
                string oldOutPath = Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile));
                if (!oldOutPathList.Contains(oldOutPath) && System.IO.Directory.Exists(oldOutPath))
                {
                    oldOutPathList.Add(oldOutPath);
                }
            }

            if (oldOutPathList.Count == 1)
            {
                createButton("OLD-OUPUT", "現行出力", oldOutPathList[0]);
            }
            else if (oldOutPathList.Count > 1)
            {
                for (int i = 0; i < oldOutPathList.Count; i++)
                {
                    createButton("OLD-OUPUT", "現行出力" + (i + 1), oldOutPathList[i]);
                }
            }

            // 新規出力
            List<String> newOutPathList = new List<string>();
            foreach (String outFile in wd.CompFile.Replace("\r\n", "\n").Split('\n'))
            {
                string newOutPath = Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(outFile));
                if (!newOutPathList.Contains(newOutPath) && Directory.Exists(newOutPath))
                {
                    newOutPathList.Add(newOutPath);
                }
            }

            if (newOutPathList.Count == 1)
            {
                createButton("NEW-OUPUT", "新規出力", newOutPathList[0]);
            }
            else if (newOutPathList.Count > 1)
            {
                for (int i = 0; i < newOutPathList.Count; i++)
                {
                    createButton("NEW-OUPUT", "新規出力" + (i + 1), newOutPathList[i]);
                }
            }

            // 比較結果フォルダ
            string excFile = MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(MyConst.compFolder) +
                                MyCommon.addLeftYen(wd.CaseName + "_" + MyConst.RESULT_EXCEL_FILE);

            if(Directory.Exists(Path.GetDirectoryName(excFile)))
            {
                createButton("COMPARE-D", "比較結果", Path.GetDirectoryName(excFile));
            }

            // 比較結果ファイル
            if (File.Exists(excFile))
            {
                createButton("COMPARE-F", "結果ファイル", excFile);
            }

            // テンプレート
            List<String> tempPathList = new List<string>();
            foreach (String tempFile in wd.TempFile.Replace("\r\n", "\n").Split('\n'))
            {
                string tempPath = Path.GetDirectoryName(MyConst.workPath + MyCommon.addLeftYen(wd.CaseName) + MyCommon.addLeftYen(tempFile));
                if (!tempPathList.Contains(tempPath) && Directory.Exists(tempPath))
                {
                    tempPathList.Add(tempPath);
                }
            }

            if (tempPathList.Count == 1)
            {
                createButton("TEMPLATE", "テンプレート", tempPathList[0]);
            }
            else if (tempPathList.Count > 1)
            {
                for (int i = 0; i < tempPathList.Count; i++)
                {
                    createButton("TEMPLATE", "テンプレート" + (i + 1), tempPathList[i]);
                }
            }

            if(buttonCount <= 0)
            {
                this.Visible = false;
            }
            else if (buttonCount < 4)
            {
                this.Width = 120 * buttonCount + 40;
                this.Height = 120 + 60;
            }
            else
            {
                this.Width = 120 * 4 + 40;
                this.Height = (buttonCount + 3) / 4 * 120 + 60;
            }
        }

        private void createButton(String type, String text, string folderOrFile)
        {
            Button b = new Button();
            //PictureBox b = new PictureBox();

            b.Name = type + "_" + text;
            //b.BorderStyle = BorderStyle.Fixed3D;
            b.Cursor = Cursors.Hand;
            b.Size = new Size(99, 99);
            b.BackgroundImageLayout = ImageLayout.Stretch;
            
            //b.SizeMode = PictureBoxSizeMode.StretchImage;
                        
            Assembly thisAssembly = Assembly.GetExecutingAssembly();

            System.Resources.ResourceManager rm = new System.Resources.ResourceManager("aat.Resource", thisAssembly);

            switch (type.ToUpper() )
            {
                case "OLD-INPUT":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.OldInputFolder256.png"));
                    break;
                case "OLD-OUPUT":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.OldOutputFolder256.png"));
                    break;
                case "NEW-OUPUT":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.NewOutputFolder256.png"));
                    break;
                case "COMPARE-D":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.compareFolder256.png"));
                    break;
                case "COMPARE-F":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.compareFile256.png"));
                    break;
                case "TEMPLATE":
                    b.BackgroundImage = new Bitmap(thisAssembly.GetManifestResourceStream("aat.Resource.template256.png"));
                    break;
                default:
                    break;
            }

            Label la = new Label();
            la.Text = text;
            la.BackColor = Color.Transparent;
            la.Font = new System.Drawing.Font("MS UI Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(128)));
            la.ForeColor = Color.DarkBlue;

            b.Controls.Add(la);

            la.Top = (b.Height - la.Height) / 2;
            la.Left = 10;

            this.Controls.Add(b);
            b.Top = (buttonCount / 4) * 120 + 21;
            b.Left = (buttonCount % 4) * 120 + 21;

            b.Click += (sender, args) =>
                {
                    if(Directory.Exists(folderOrFile))
                    {
                        System.Diagnostics.Process.Start(folderOrFile);
                    }
                    else if(File.Exists(folderOrFile))
                    {
                        Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                        ExcelApp.Visible = true;

                        Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(folderOrFile);
                    }
                };

            la.Click += (sender, args) =>
            {
                if (Directory.Exists(folderOrFile))
                {
                    System.Diagnostics.Process.Start(folderOrFile);
                }
                else if (File.Exists(folderOrFile))
                {
                    Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                    ExcelApp.Visible = true;

                    Microsoft.Office.Interop.Excel.Workbook WorkBook1 = ExcelApp.Workbooks.Open(folderOrFile);
                }
            };

            buttonCount++;
        }
        
        private void OutSelectPopup_Deactivate(object sender, EventArgs e)
        {
            this.Close();
        }

    }
}
