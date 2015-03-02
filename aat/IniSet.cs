using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace aat
{
    class IniSet
    {
         public IniSet(string file)
        {
            IniFileName = file;
            readIni();
        }

        private void readIni()
        {
            iniRibbonUI = GetValue("Options", "ribbonUI", "TRUE").ToUpper();
            iniDebugLevel = Convert.ToInt32(GetValue("Options", "debugLevel", "0"));

            iniBinDiff = GetValue("extdiff", "binaryDiff", "FALSE").ToUpper(); 
            iniDiffTool = GetValue("extdiff", "difftool", "diff.exe");
            iniDiffPath = GetValue("extdiff", "diffpath", "diff.exe");
            iniDiffOpts = GetValue("extdiff", "diffopts", "");

            iniTestDataDir = MyCommon.delRightYen(GetValue("Options", "workDir", @"C:\Work\"));

            iniExcelMaxRow = GetValue("Options", "excelMaxRow", "20000");

            iniDoubleOpen = GetValue("Options", "doubleOpen", "Folder");

            iniCobolSrcPath = GetValue("Options", "CobolSrcPath", "");
            iniCopyFilePath = GetValue("Options", "CopyPath", "");
            iniAddDebugInfo = GetValue("Options", "AddDebugInfo", "FALSE");
            iniCobolSrcEncode = GetValue("Options", "CobolSrcEncode", "Shift_JIS");
            iniAddDispPosition = GetValue("Options", "AddDispPosition", "After").ToUpper();

            iniSourceDataPath = GetValue("Options", "SourceDataPath", "");
            iniSourceDDLPath = GetValue("Options", "SourceDDLPath ", "");
            iniDestDDLPath = GetValue("Options", "DestDDLPath", "");
            iniDestDataPath = GetValue("Options", "DestDataPath", "");
            iniIndexChangePath = GetValue("Options", "IndexChangePath", "");

            iniPreRegExe = GetValue("PreReg", "preRegExe", "");
            iniPreRegOptAdd = GetValue("PreReg", "preRegOptAdd", "");
            iniPreRegOptDel = GetValue("PreReg", "preRegOptDel", "");
            iniCfmAutoCreate = GetValue("PreReg", "cfmAutoCreate", "FALSE").ToUpper();

            

            iniErrString = GetIniErrorString("ErrorString");

            iniWorkdataPath = MyCommon.delRightYen(GetValue("Options", "workdataPath", iniTestDataDir));
            iniWorkdataOverwrite = GetValue("Options", "workdataOverwrite", "FALSE").ToUpper();

            iniMangerListName = GetValue("Options", "managerListName", "managerList.xls");
            

            iniConvdataPath = MyCommon.delRightYen(GetValue("Options", "convertDataPath", iniTestDataDir));
            iniConvdataOverwrite = GetValue("Options", "convertDataOverwrite", "FALSE").ToUpper();
        }
        public String IniFileName { get; set; }

        public String iniRibbonUI { get; set; }  // リボンUI
        public int iniDebugLevel { get; set; }  // DebugLevel

        public String iniBinDiff { get; set; }   // 二進数比較フラグ
        public String iniDiffTool { get; set; }  // 比較用ツール名
        public String iniDiffPath { get; set; }  // 比較用ツールパス
        public String iniDiffOpts { get; set; }  // 比較用ツールのパラメータ
        public String iniTestDataDir { get; set; }     // テストデータフォルダ
        public String iniExcelMaxRow { get; set; } // 結果ファイルの最大行数
        public String iniDoubleOpen { get; set; }  // リストビューをダブルクリック時の動作

        public String iniPreRegExe { get; set; }        // マッピングファイル登録コマンド
        public String iniPreRegOptAdd { get; set; }     // マッピングファイル追加用パラメータ
        public String iniPreRegOptDel { get; set; }     // マッピングファイル削除用パラメータ
        public String iniCfmAutoCreate { get; set; }    // マッピングファイル自動作成

        public List<String> iniErrString { get; set; }  // 実行時にメッセージにエラー判断用

        public String iniWorkdataPath { get; set; }         // 設定メインファイルのパスなければ、テストデータフォルダと同じ
        public String iniWorkdataOverwrite { get; set; }    // 強制的に上書きする

        public String iniMangerListName { get; set; }       // テスト試験の現新比較ソース一覧(担当者、状況)

        public String iniConvdataPath { get; set; }      // 設定メインファイルのパスなければ、テストデータフォルダと同じ
        public String iniConvdataOverwrite { get; set; } // 強制的に上書きする

        public String iniCobolSrcPath { get; set; }         // COBOLのソースファイルのパス
        public String iniCopyFilePath { get; set; }         // COPYファイルのパス
        public String iniAddDebugInfo { get; set; } // デバッグ情報追加するか
        public String iniCobolSrcEncode { get; set; }       // Cobolソースの文字コード
        public String iniAddDispPosition { get; set; }      // デバッグ情報の追加場所（Before,After,Both）

        public String iniSourceDataPath { get; set; }         // 元データの置き場所
        public String iniSourceDDLPath { get; set; }          // 元データDDLの置き場所
        public String iniDestDDLPath { get; set; }            // 変換先データDDLの置き場所
        public String iniDestDataPath { get; set; }           // 変換先データの置き場所
        public String iniIndexChangePath { get; set; }        // 索引変換ツールの置き場所

        public string this[string section, string key]
        {
            set
            {
                WritePrivateProfileString(section, key, value, IniFileName);
            }
            get
            {
                StringBuilder sb = new StringBuilder(1024);
                GetPrivateProfileString(section, key, string.Empty, sb, Convert.ToUInt32(sb.Capacity), IniFileName);
                return sb.ToString();
            }
        }
        
        public string GetValue(string section, string key, string defaultvalue)
        {
            StringBuilder sb = new StringBuilder(1024);
            GetPrivateProfileString(section, key, defaultvalue, sb, Convert.ToUInt32(sb.Capacity), IniFileName);
            return sb.ToString();
        }


        /// <summary>
        /// Iniファイルから定義させたエラー判断用文字列を取得する
        /// </summary>
        /// <param name="section">エラーのセッション名</param>
        /// <param name="path">INIファイルのフルパス</param>
        /// <returns></returns>
        public List<string> GetIniErrorString(string section)
        {
            byte[] bytes = new byte[1024];
            StringBuilder sbErrStr = new StringBuilder(1024);

            int size = GetPrivateProfileString(section, 0, "", bytes, 1024, IniFileName);
            string keys = Encoding.Default.GetString(bytes, 0, size - (size > 0 ? 1 : 0));

            List<string> errStr = new List<string>();

            foreach (string key in keys.Split('\0'))
            {
                if (key.Length > 0)
                {
                    GetPrivateProfileString(section, key, "", sbErrStr, Convert.ToUInt32(sbErrStr.Capacity), IniFileName);

                    if (sbErrStr.Length > 0)
                    {
                        errStr.Add(sbErrStr.ToString());
                    }
                }
            }

            return errStr;
        }
        [DllImport("kernel32.dll")]
        private static extern int GetPrivateProfileString(string section, string key, string p, StringBuilder sb, uint size, string path);

        [DllImport("kernel32.dll")]
        private static extern int WritePrivateProfileString(string section, string key, string p, string path);

        [DllImport("kernel32.dll")]
        private static extern int GetPrivateProfileString(string section, int key, string p, StringBuilder sb, uint size, string path);
        
        [DllImport("kernel32.dll")]
        private static extern int GetPrivateProfileString(string section, int key, string p, [MarshalAs(UnmanagedType.LPArray)] byte[] rtn, uint size, string path);
    }
}
