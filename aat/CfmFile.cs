using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace aat
{
    ///     
    /// INIファイルを読み書きするクラスちゃん    
    /// 
    class CfmFile
    {
        private string filePath;
        //fileパス        
        ///        
        ///ファイル名を指定して初期化します。        
        ///ファイルが存在しない        
        ///場合は初回書き込み時に作成されます。        
        ///        
        public CfmFile(string path)
        {
            this.filePath = path;
        }
        /// 
        /// sectionとkeyからiniファイルの設定値を取得･設定します。     
        /// 
        /// 指定したsectionとkeyの組合せが無い場合は""が返ります。        
        public string this[string section, string key]
        {
            set
            {
                WritePrivateProfileString(section, key, value, filePath);
            }
            get
            {
                StringBuilder sb = new StringBuilder(256);
                GetPrivateProfileString(section, key, string.Empty, sb, sb.Capacity, filePath);
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
            GetPrivateProfileString(section, key, defaultvalue, sb, sb.Capacity, filePath);
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
