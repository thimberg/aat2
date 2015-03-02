using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.IO;

namespace addItemCFM
{
    class Program
    {
/*
        [DllImport("KERNEL32.DLL")]
        public static extern uint WritePrivateProfileString(
          string lpAppName,
          string lpKeyName,
          string lpString,
          string lpFileName);
*/
        [DllImport("KERNEL32.DLL")] 
        private static extern int GetPrivateProfileString(string section, string key, string p, StringBuilder sb, int p_2, string path);
        [DllImport("kernel32.dll")]
        private static extern int WritePrivateProfileString(string section, string key, string value, string path);

        static void Main(string[] args)
        {
            string cfmFile = args[0];
            string section = args[1];
            string fileName = args[2];
            string indexFlg = "";

            if(args.Length >= 4)
            {
                indexFlg = args[3];
            }

            int aa = 0;

            if (!File.Exists(cfmFile))
            {
                FileStream fs = File.Create(cfmFile);
                fs.Flush();
                fs.Close();
                System.Threading.Thread.Sleep(500);

                aa = WritePrivateProfileString("OWNER=MODE", "MODE", "USER", cfmFile);
            }

            aa = WritePrivateProfileString(section, "ENGINE", "COBOL", cfmFile);

            aa = WritePrivateProfileString(section, "FILENAME", fileName, cfmFile);

            if (indexFlg.Length > 0 && indexFlg.ToUpper() == "TRUE")
            {
                aa = WritePrivateProfileString(section, "ORGANIZATION", "索引編成", cfmFile);
            }
            else
            {
                aa = WritePrivateProfileString(section, "ORGANIZATION", null, cfmFile);
            }
        }
    }

    ///     
    /// INIファイルを読み書きするクラスちゃん    
    ///     
    public class IniFile    
    {        
        private string path;
        //fileパス        
        ///        
        ///ファイル名を指定して初期化します。        
        ///ファイルが存在しない        
        ///場合は初回書き込み時に作成されます。        
        ///        
        public IniFile(string path)        
        {            
            this.path = path;
        }    
        /// 
        /// sectionとkeyからiniファイルの設定値を取得･設定します。     
        /// 
        /// 指定したsectionとkeyの組合せが無い場合は""が返ります。        
        public string this[string section, string key]
        { 
            set
            {
                WritePrivateProfileString(section, key, value, path);
            } 
            get
            { 
                StringBuilder sb = new StringBuilder(256); 
                GetPrivateProfileString(section, key, string.Empty, sb, sb.Capacity, path);  
                return sb.ToString();     
            }       
        }     
        /// 
        /// sectionとkeyからiniファイルの設定値を取得します。      
        /// 指定したsectionとkeyの組合せが無い場合はdefaultvalueで指定した値が返ります。  
        /// 
        /// 指定したsectionとkeyの組合せが無い場合はdefaultvalueで指定した値が返ります。       
        ///   
        public string GetValue(string section, string key, string defaultvalue)     
        {           
            StringBuilder sb = new StringBuilder(256);   
            GetPrivateProfileString(section, key, defaultvalue, sb, sb.Capacity, path);
            return sb.ToString();       
        }   
 
        ///   
        /// 指定された .ini ファイルの指定されたセクション内にある、指定されたキーに関連付けられている文字列を取得します 
        ///       
        /// セクション名    
        /// キー名       
        /// 既定の文字列    
        /// 情報が格納されるバッファ  
        /// 情報バッファのサイズ   
        /// .ini ファイルの名前      
        /// 関数が成功するとバッファに格納された文字数が返ります     
        [DllImport("kernel32.dll")]      
        private static extern int GetPrivateProfileString(string section, string key, string p, StringBuilder sb, int p_2, string path);      
 
        ///   
        /// 指定された .ini ファイルの、指定されたセクション内に、指定されたキー名とそれに関連付けられた文字列を格納します  
        ///        
        /// セクション名  
        /// キー名       
        /// 追加するべき文字列   
        /// .ini ファイルの名前      
        /// 関数が文字列を .ini ファイルに格納することに成功すると 0 以外の値が返ります       
        [DllImport("kernel32.dll")]     
        private static extern int WritePrivateProfileString(string section, string key, string value, string path);                   
    }
}
