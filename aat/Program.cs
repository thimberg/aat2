using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.ComponentModel;
using System.IO;
using Com.OnForm32;
using System.Reflection;

namespace aat
{
    static class Program
    {
        public static IniSet INI = new IniSet(AppDomain.CurrentDomain.BaseDirectory + MyConst.SET_INI_FILE);
        public static List<WorkData> workData1 = new List<WorkData>();
        public static Form _form_instance = null;

        public static bool allRun = false;        // 一括実行フラグ

        public delegate void runButton(bool complete);
        public static runButton runButtonC = null;

        public delegate void expButton(bool complete);
        public static expButton expButtonC = null;


        public delegate void cnvButton(bool complete);
        public static cnvButton cnvButtonC = null;

        public delegate void debugButton(bool complete);
        public static debugButton debugButtonC = null;

        public delegate void exportClick();
        public static exportClick exportClickC = null;

        public static aat.myListView myListView1 = null;

        public static int validateDays = -1;

        public static String toolName = "現新試験ツール";
        public static String version = "Ver 1.2.0";
        /// <summary>
        /// アプリケーションのメイン エントリ ポイントです。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            
            if (System.Diagnostics.Process.GetProcessesByName(
                System.Diagnostics.Process.GetCurrentProcess().ProcessName).Length > 1)
            {
                //すでに起動していると判断する
                MessageBox.Show("多重起動はできません。");
                return;
            }

            validateDays = OnForm32.checkValid();

            if (validateDays < 0)
            {
                if (MessageBox.Show("使用期間が超えました。\r\n購入申し込みしますか？", "使用期間が超えました", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    System.Diagnostics.Process p = System.Diagnostics.Process.Start("purchaseForm.exe");
//                    p.WaitForExit();
                }
                return;
            }

            FormSplash splash = new FormSplash();
            splash.Show();

            if (INI.iniRibbonUI != "TRUE")
            {
                _form_instance = new formMain();
                runButtonC = new runButton(((formMain)_form_instance).runButton);
                expButtonC = new expButton(((formMain)_form_instance).expButton);
                cnvButtonC = new cnvButton(((formMain)_form_instance).cnvButton);
                debugButtonC = new debugButton(((formMain)_form_instance).debugButton);
                exportClickC = new exportClick(((formMain)_form_instance).exportClick);

                myListView1 = ((formMain)_form_instance).myListView1;
            
            }
            else
            {
                _form_instance = new FormRibbon();
            
                runButtonC = new runButton(((FormRibbon)_form_instance).runButton);
                expButtonC = new expButton(((FormRibbon)_form_instance).expButton);
                cnvButtonC = new cnvButton(((FormRibbon)_form_instance).cnvButton);
                debugButtonC = new debugButton(((FormRibbon)_form_instance).debugButton);
                exportClickC = new exportClick(((FormRibbon)_form_instance).exportClick);

                myListView1 = ((FormRibbon)_form_instance).myListView1;
            
            }

            //
            app_Load();

            _form_instance.Shown += (sender, args) => splash.Close();

            Application.Run(_form_instance);

        }

        private static void app_Load()
        {
            String workDataExcelPath = INI.iniWorkdataPath + MyCommon.addLeftYen(MyConst.SET_MAIN_FILE);
            // 強制的に上書きを設定した場合
            if (INI.iniWorkdataOverwrite.ToUpper() == "TRUE" && System.IO.File.Exists(workDataExcelPath))
            {
                String excelFile1 = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.SET_MAIN_FILE;
                // 上書きする。
                System.IO.File.Copy(workDataExcelPath, excelFile1, true);
            }

            String convDataExcelPath = INI.iniConvdataPath + MyCommon.addLeftYen(MyConst.CONV_DATA_SET_FILE);
            // 強制的に上書きを設定した場合
            if (INI.iniConvdataOverwrite.ToUpper() == "TRUE" && System.IO.File.Exists(convDataExcelPath))
            {
                String excelFile1 = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.CONV_DATA_SET_FILE;
                // 上書きする。
                System.IO.File.Copy(convDataExcelPath, excelFile1, true);
            }

            Console.WriteLine("time:::" + System.DateTime.Now);

            MyCommon.readWorkData();
            Console.WriteLine("time:::" + System.DateTime.Now);
            
            MyCommon.readManagerList();
            Console.WriteLine("time:::" + System.DateTime.Now);

            MyCommon.addListView(Program.workData1, myListView1);

            // 作業フォルダが存在しなければ、作成する。
            if (!System.IO.Directory.Exists(MyConst.workPath))
            {
                System.IO.Directory.CreateDirectory(MyConst.workPath);
            }


        }

        
    }

}
