using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace cobAddDisplay
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
            iniCobolSrcPath = GetValue("Options", "CobolSrcPath", "");
            iniCopyFilePath = GetValue("Options", "CopyPath", "");
            iniAddDebugInfo = GetValue("Options", "AddDebugInfo", "FALSE");
            iniCobolSrcEncode = GetValue("Options", "CobolSrcEncode", "Shift_JIS");
            iniAddDispPosition = GetValue("Options", "AddDispPosition", "After").ToUpper();
        }
        public String IniFileName { get; set; }

        public String iniCobolSrcPath { get; set; }         // COBOLのソースファイルのパス
        public String iniCopyFilePath { get; set; }         // COPYファイルのパス
        public String iniAddDebugInfo { get; set; }         // デバッグ情報追加するか
        public String iniCobolSrcEncode { get; set; }       // Cobolソースの文字コード
        public String iniAddDispPosition { get; set; }      // デバッグ情報の追加場所（Before,After,Both）

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
