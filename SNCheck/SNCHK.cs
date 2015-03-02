
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Management;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Net; 


namespace Com.OnForm32
{
    public class OnForm32
    {
        private const string PreUserName = "User Name:";
        private const string PreCompName = "Company Name:";
        private const string PreValidDate = "Validation Date:";
        private const string PreUID = "UID:";
        private const string PreKey = "Key:";
        private const string PreLicense = "License:";
        private const string PreCRC = "CRC:";

        private const string AesIV = @"!QAZ2WSX#EDC4RFV";
        private const string AesKey = @"5TGB&YHN7UJM(IK<";
        private const string DesIV = @"!QAZ2WS#";
        private const string DesKey = @"5TGB&YHN7UJM(IK<";
        private const int ValidDay = 5;

        private static string mFile = System.Environment.GetFolderPath(Environment.SpecialFolder.System) + @"\wsTaskm.dll";
        private static string regPath = @"Software\PKUTECH\GXT";
        private static string keyFile = AppDomain.CurrentDomain.BaseDirectory + "license.txt";
        
        public static void RegPath(string f)
        {
            regPath = f;
        }

        public static void MFile(string f)
        {
            mFile = f;
        }

        public static void KeyFile(string f)
        {
            keyFile = f;
        }

        /// <summary>
        /// 購入申し込み用ファイルを生成する
        /// </summary>
        /// <param name="fileName">ファイル名</param>
        /// <param name="userName">ユーザ名</param>
        /// <param name="compName">会社（組織）名</param>
        /// <returns></returns>
        public static bool makePurchase(string fileName, string userName, string compName)
        {
            bool rtn = false;

            try
            {
                using(StreamWriter sw = new StreamWriter(fileName, false, Encoding.UTF8))
                {
                    sw.WriteLine(PreUserName + userName);
                    sw.WriteLine(PreCompName + compName);
                    sw.WriteLine(PreUID + getUID());
                    sw.WriteLine(PreCRC + MyHash(PreUserName + userName + PreCompName + compName + PreUID + getUID()));
                    sw.Close();

                    return true;
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }

        /// <summary>
        /// 有効性チェック
        /// </summary>
        /// <returns>有効：残日数；無効：負数</returns>
        public static int checkValid()
        {
            int rtn = -1;
            DateTime t0 = DateTime.Today;
            DateTime tn = new DateTime();
            try
            {
                // キーが一致の場合
                if (File.Exists(keyFile) && checkKey())
                {
                    // 有効期間を取得
                    DateTime t1 = getKeyTM();
                    DateTime t2 = getMfileTM();
                    DateTime t3 = getRegTM();

                    if (t1 == tn)
                    {
                        // 取得失敗の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    // 有効期間が本日を超えると、失敗
                    if (t0 > t1) return rtn;

                    // MファイルとREGをチェック(両方存在しない、初期とする)
                    if (!checkMfile() && !checkReg())
                    {
                        setMfile(t1);
                        setRegTM(t1);

                        return (t1 - t0).Days;
                    }

                    if(checkMfile() && checkReg() && t2 == tn && t3 == tn)
                    {
                        setMfile(t1);
                        setRegTM(t1);

                        return (t1 - t0).Days;
                    }

                    if (checkMfile() && checkReg() && t2 == t3 && t2 <= t1)
                    {
                        setMfile(t1);
                        setRegTM(t1);

                        return (t1 - t0).Days;
                    }

                    if (checkMfile() && t2 == tn)
                    {
                        // MFileからDate取得失敗の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && File.GetLastAccessTime(mFile).Date > t0)
                    {
                        // MFileのアクセス時間が当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && File.GetLastAccessTime(mFile).Date > t2)
                    {
                        // MFileのアクセス時間がMFileのDate超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && t0 > t2)
                    {
                        // MFileのDateが当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && t3.CompareTo(tn) == 0)
                    {
                        // RegからDate取得失敗の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && t0 > t3)
                    {
                        // RegのDate当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && checkMfile() && t3 != t2)
                    {
                        // RegのDateとMFileのDateが不一致の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    setMfile(t1);
                    setRegTM(t1);
                    return (t1 - t0).Days;
                }
                else
                {
                    // MファイルとREGをチェック(両方存在しない、初期とする)
                    if (!checkMfile() && !checkReg())
                    {
                        setMfile(t0.AddDays(ValidDay));
                        setRegTM(t0.AddDays(ValidDay));

                        return ValidDay;
                    }

                    // 
                    DateTime t2 = getMfileTM();
                    DateTime t3 = getRegTM();

                    if (checkMfile() && t2 == tn)
                    {
                        // MFileからDate取得失敗の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && File.GetLastAccessTime(mFile).Date > t0)
                    {
                        // MFileのアクセス時間が当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && File.GetLastAccessTime(mFile).Date > t2)
                    {
                        // MFileのアクセス時間がMFileのDate超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkMfile() && t0 > t2)
                    {
                        // MFileのDateが当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && t3.CompareTo(tn) == 0)
                    {
                        // RegからDate取得失敗の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && t0 > t3)
                    {
                        // RegのDate当日超える場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (checkReg() && checkMfile() && t3 != t2)
                    {
                        // RegのDateとMFileのDateが不一致の場合
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    if (t0 > t2)
                    {
                        // 有効期間が本日を超えると
                        setMfile(tn);
                        setRegTM(tn);
                        return rtn;
                    }

                    setMfile(t2);
                    setRegTM(t3);
                    return (t2 - t0).Days;

                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return rtn;
        }

#if DEBUG
        /// <summary>
        /// 
        /// </summary>
        /// <param name="keyFileName"></param>
        /// <param name="validDate"></param>
        /// <returns></returns>
        public static bool makeKeyFile(string keyFileName, string purFileName, string validDate)
        {
            bool rtn = false;
            try
            {
                if (!File.Exists(purFileName)) return false;

                string userName = "";
                string companyName = "";
                string UID = "";
                string CRC = "";

                using (StreamReader sr = new StreamReader(purFileName))
                {
                    while (sr.Peek() >= 0)
                    {
                        string d = sr.ReadLine();
                        if (d.StartsWith(PreUserName))
                        {
                            userName = d.Substring(PreUserName.Length);
                        }
                        else if (d.StartsWith(PreCompName))
                        {
                            companyName = d.Substring(PreCompName.Length);
                        }
                        else if (d.StartsWith(PreUID))
                        {
                            UID = d.Substring(PreUID.Length);
                        }
                        else if (d.StartsWith(PreCRC))
                        {
                            CRC = d.Substring(PreCRC.Length);
                        }
                    }
                    sr.Close();
                }

                if (userName.Length <= 0 || companyName.Length <= 0 || UID.Length <= 0)
                {
                    return false;
                }

                if (CRC != OnForm32.MyHash(PreUserName + userName + PreCompName + companyName + PreUID + UID))
                {
                    return false;
                }

                return makeKeyFile(keyFileName, userName, companyName, validDate, UID);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }
#endif

        /// <summary>
        /// Keyファイルを作成する
        /// </summary>
        /// <param name="keyFileName">Keyファイル名</param>
        /// <param name="userName">ユーザ名</param>
        /// <param name="companyName">会社名</param>
        /// <param name="validDate">有効期間</param>
        /// <param name="UID">UID</param>
        /// <returns></returns>
        private static bool makeKeyFile(string keyFileName, string userName, string companyName, string validDate, string UID)
        {
            bool rtn = false;
            try
            {
                if (File.Exists(keyFileName))
                {
                    File.Delete(keyFileName);
                }

                using (StreamWriter sw = new StreamWriter(keyFileName, false, Encoding.UTF8))
                {
                    sw.WriteLine(PreUserName + userName);
                    sw.WriteLine(PreCompName + companyName);
                    sw.WriteLine(PreValidDate + validDate);
                    sw.WriteLine(PreKey + OnForm32.AESEncrypt(validDate));
                    sw.WriteLine(PreLicense + OnForm32.AESEncrypt(OnForm32.MyHash(UID)));
                    sw.Close();
                }

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return rtn;
        }

#if DEBUG
        /// <summary>
        /// Mファイルより日付チェック
        /// </summary>
        /// <param name="t">有効期間</param>
        /// <returns></returns>
        public static bool logTmCheck(DateTime t)
        {
            string tt = AESEncrypt("20141130");
            string ta = TDESEncrypt("20141130");
            string tb = TDESDecrypt(ta);

            if (File.Exists(mFile))
            {
                DateTime lat = File.GetLastAccessTime(mFile).Date;
                // 期限切れ
                if (lat > t) return false;
                // システム日付より後ろ
                if (lat > DateTime.Today) return false;

                File.Delete(mFile);
            }

            FileStream i = File.Create(mFile);

            i.Write(Encoding.UTF8.GetBytes(TDESEncrypt(t.ToString("yyyyMMdd"))), 0, 32);
            i.Close();


            return true;
        }
#endif

#if DEBUG
        public static string trailStart()
        {
            /////////////////////////////////
            string aa = MyHash(getUID());
            string bb = AESEncrypt(aa);

            /////////////////////////////////
            string mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name.PadRight(8, ' ').Substring(0, 8);
            Microsoft.Win32.RegistryKey regkey =
                Microsoft.Win32.Registry.LocalMachine.OpenSubKey(regPath, true);
            if (regkey == null)
            {
                regkey = Microsoft.Win32.Registry.LocalMachine.CreateSubKey(regPath);
                regkey.SetValue("date", codeStringFa(DateTime.Today.ToString("yyyyMMdd")));
            }
            else
            {
                string date = codeStringFb(Convert.ToString(regkey.GetValue("date")));
                TimeSpan ts = DateTime.Today - DateTime.Parse(Regex.Replace(date, @"(\d{4})(\d{2})(\d{2})", @"$1/$2/$3"));
                if (ts.Days > ValidDay || ts.Days < 0)
                {
//                    MessageBox.Show("評価版の試用期間が超えました。");
                    regkey.SetValue("date", codeStringFa("19700101"));
                }
            }

            string thisDay = DateTime.Today.ToString("yyyyMMdd");
            string pw1 = codeStringFa("20141119");
            string dd = codeStringFb(pw1);

            return thisDay;
        }
#endif

        /// <summary>
        /// ハッシュ化
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
#if FOR_PUBLIC
        public static string MyHash(string input)
#else
        private static string MyHash(string input)
#endif
        {
            SHA256CryptoServiceProvider sha256 =
                new SHA256CryptoServiceProvider();

            byte[] bs = Encoding.UTF8.GetBytes(input);
            byte[] sha256Hash = sha256.ComputeHash(bs);

            StringBuilder s = new StringBuilder();
            int select = 1;
            foreach (byte b in sha256Hash)
            {
                switch (select)
                {
                    case 1:
                        s.Append(b.ToString("x4").ToLower());
                        break;
                    case 2:
                        s.Append(b.ToString("x3").ToLower());
                        break;
                    case 3:
                        s.Append(b.ToString("x2").ToLower());
                        break;
                    case 4:
                        s.Append(b.ToString("x1").ToLower());
                        break;
                    default:
                        break;
                }
                select++;
                if (select > 4) select = 1;
            }
            string password = s.ToString();
            return password;
        }

        /// <summary>
        /// Keyファイルチェック
        /// </summary>
        /// <returns></returns>
        private static bool checkKey()
        {
            bool rtn = false;
            try
            {
                string key = getKeyLS();
                if (key == null) return false;

                if (AESDecrypt(key) == MyHash(getUID()))
                {
                    return true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            return rtn;
        }

        /// <summary>
        /// Keyファイルよりライセンスを取得する
        /// </summary>
        /// <returns></returns>
        private static String getKeyLS()
        {
            String rtn = null;
            try
            {
                if (!File.Exists(keyFile)) return rtn;

                using (StreamReader sr = new StreamReader(keyFile, Encoding.UTF8))
                {
                    while (sr.Peek() >= 0)
                    {
                        string d = sr.ReadLine();
                        if (d.StartsWith(PreLicense))
                        {
                            rtn = d.Substring(PreLicense.Length);
                            break;
                        }
                    }
                    sr.Close();
                }

            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }

        /// <summary>
        /// Keyファイルより有効期間を取得する
        /// </summary>
        /// <returns></returns>
        private static DateTime getKeyTM()
        {
            DateTime rtn = new DateTime();
            try
            {
                if (!File.Exists(keyFile)) return rtn;

                using (StreamReader sr = new StreamReader(keyFile, Encoding.UTF8))
                {
                    string tm = null;

                    while (sr.Peek() >= 0)
                    {
                        string d = sr.ReadLine();
                        if (d.StartsWith(PreValidDate))
                        {
                            tm = d.Substring(PreValidDate.Length);
                        }
                        else if (d.StartsWith(PreKey))
                        {
                            if (AESDecrypt(d.Substring(PreKey.Length)) == tm)
                            {
                                rtn = DateTime.Parse(tm);
                                break;
                            }
                        }
                    }
                    sr.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }

        /// <summary>
        /// MFileのチェック
        /// </summary>
        /// <returns></returns>
        private static bool checkMfile()
        {
            try
            {
                if (File.Exists(mFile))
                {
                    return true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return false;
        }

        /// <summary>
        /// Mファイルより有効期間を取得する
        /// </summary>
        /// <returns></returns>
        private static DateTime getMfileTM()
        {
            DateTime rtn = new DateTime();
            try
            {
                if (!File.Exists(mFile)) return rtn;
                using (StreamReader sr = new StreamReader(mFile, Encoding.UTF8))
                {
                    string ss = sr.ReadLine();
                    rtn = DateTime.Parse(Regex.Replace(TDESDecrypt(ss), @"(\d{4})(\d{2})(\d{2})", @"$1/$2/$3"));
                    sr.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }

        /// <summary>
        /// Mファイル作成する
        /// </summary>
        /// <param name="t"></param>
        private static void setMfile(DateTime t)
        {
            try
            {
                if (File.Exists(mFile))
                {
                    File.Delete(mFile);
                }
                FileStream i = File.Create(mFile);

                i.Write(Encoding.UTF8.GetBytes(TDESEncrypt(t.ToString("yyyyMMdd"))), 0, 32);
                i.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
        /// <summary>
        /// REGのチェック
        /// </summary>
        /// <returns></returns>
        private static bool checkReg()
        {
            try
            {
                if (Microsoft.Win32.Registry.LocalMachine.OpenSubKey(regPath, true) != null)
                {
                    return true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return false;
        }

        /// <summary>
        /// Regより有効期間を取得する
        /// </summary>
        /// <returns></returns>
        private static DateTime getRegTM()
        {
            DateTime rtn = new DateTime();
            try
            {
                Microsoft.Win32.RegistryKey regkey =
                    Microsoft.Win32.Registry.LocalMachine.OpenSubKey(regPath, true);

                if (regkey == null) return rtn;

                rtn = DateTime.Parse(Regex.Replace(codeStringFb(Convert.ToString(regkey.GetValue("date"))), @"(\d{4})(\d{2})(\d{2})", @"$1/$2/$3"));
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return rtn;
        }

        /// <summary>
        /// Reg作成する
        /// </summary>
        /// <param name="t"></param>
        private static void setRegTM(DateTime t)
        {
            try
            {
                Microsoft.Win32.RegistryKey regkey =
                    Microsoft.Win32.Registry.LocalMachine.OpenSubKey(regPath, true);

                if (regkey == null)
                {
                    regkey = Microsoft.Win32.Registry.LocalMachine.CreateSubKey(regPath);
                }

                regkey.SetValue("date", codeStringFa(t.ToString("yyyyMMdd")));
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        /// <summary>
        /// 文字列をSWAP
        /// </summary>
        /// <param name="s1"></param>
        /// <returns></returns>
        private static String swapSB(String s1)
        {
            StringBuilder sb2 = new StringBuilder();

            for (int i = 0; i < 8; i++)
            {
                sb2.Append(s1[i * 4 + 2]);
                sb2.Append(s1[i * 4 + 1]);
                sb2.Append(s1[i * 4]);
                sb2.Append(s1[i * 4 + 3]);
            }
            return sb2.ToString();
        }

        /// <summary>
        /// 文字列を暗号化
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        private static String codeStringFa(string str)
        {
            string mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name.PadRight(8, ' ').Substring(0, 8);
            Random rnd = new Random();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 8; i++) { sb.Append(Convert.ToChar(rnd.Next(65, 70)) + Convert.ToString((byte)((str[i] - 48) * 2 + mthName[7 - i]), 16).ToUpper() + Convert.ToChar(rnd.Next(65, 70))); }
            return swapSB(sb.ToString());
        }

        /// <summary>
        /// 文字列を復号化
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        private static String codeStringFb(string str)
        {
            string mthName = (new System.Diagnostics.StackTrace(false)).GetFrame(0).GetMethod().Name.PadRight(8, ' ').Substring(0, 8);
            string pw = swapSB(str);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 8; i++) { sb.Append(Convert.ToString((byte)(Convert.ToInt32(pw.Substring(i * 4 + 1, 2), 16) - (Encoding.UTF8.GetBytes(mthName)[7 - i])) / 2)); }
            return sb.ToString();
        }

#if DEBUG
        private static void TripleDes()
        {
            // (1)トリプルDES用の暗号化クラスを生成
            // 鍵と初期ベクタは自動で生成
            TripleDESCryptoServiceProvider des3alg =
                    new TripleDESCryptoServiceProvider();

            // 暗号化される文字列
            string sData = "This is clear text data.";

            /*
             * 暗号化処理
             */
            // メモリStreamを介して暗号化するために
            MemoryStream mStream = new MemoryStream();

            // (2)MemoryStreamを使ってCryptoStreamを生成 
            CryptoStream cStream = new CryptoStream(mStream,
                    new TripleDESCryptoServiceProvider().CreateEncryptor(
                            des3alg.Key,
                            des3alg.IV),
                    CryptoStreamMode.Write);

            // (3)暗号化される文字列をバイトアレイに変換
            byte[] toEncrypt = new ASCIIEncoding().GetBytes(sData);

            // (4)CryptStreamに書き込んで暗号化
            cStream.Write(toEncrypt, 0, toEncrypt.Length);
            cStream.FlushFinalBlock();

            // 暗号化されたデータを取り出す
            byte[] Data = mStream.ToArray();

            // クローズ
            cStream.Close();
            mStream.Close();

            /*
             * 復号処理
             */
            // 暗号化データを渡すためのメモリStreamを生成
            MemoryStream msDecrypt = new MemoryStream(Data);

            // (5)MemoryStreamを使ってCryptoStreamを生成 
            CryptoStream csDecrypt = new CryptoStream(msDecrypt,
                    new TripleDESCryptoServiceProvider().CreateDecryptor(
                            des3alg.Key,
                            des3alg.IV),
                    CryptoStreamMode.Read);

            // (6)復号されたバイト・データの領域
            byte[] fromEncrypt = new byte[Data.Length];

            // 復号されたデータをStreamから読み出す
            csDecrypt.Read(fromEncrypt, 0, fromEncrypt.Length);

            // (7)バイトのデータをStringに変換する
            String Final = new ASCIIEncoding().GetString(fromEncrypt);

            // 復号したデータを表示
            Console.WriteLine(Final);
        }
#endif

        /// <summary>
        /// 文字列をTripleDESで暗号化
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        private static string TDESEncrypt(string text)
        {
            TripleDESCryptoServiceProvider des3alg =
                    new TripleDESCryptoServiceProvider();
            des3alg.BlockSize = 64;
            des3alg.KeySize = 128;
            des3alg.IV = Encoding.UTF8.GetBytes(DesIV);
            des3alg.Key = Encoding.UTF8.GetBytes(DesKey);
            des3alg.Mode = CipherMode.CBC;
            des3alg.Padding = PaddingMode.PKCS7;

            byte[] src = Encoding.Unicode.GetBytes(text);

            using (ICryptoTransform encrypt = des3alg.CreateEncryptor())
            {
                byte[] dest = encrypt.TransformFinalBlock(src, 0, src.Length);
                return Convert.ToBase64String(dest);
            }
        }

        /// <summary>
        /// 文字列をTripleDESで復号化
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        private static string TDESDecrypt(string text)
        {
            TripleDESCryptoServiceProvider des3alg =
                    new TripleDESCryptoServiceProvider();
            des3alg.BlockSize = 64;
            des3alg.KeySize = 128;
            des3alg.IV = Encoding.UTF8.GetBytes(DesIV);
            des3alg.Key = Encoding.UTF8.GetBytes(DesKey);
            des3alg.Mode = CipherMode.CBC;
            des3alg.Padding = PaddingMode.PKCS7;

            // Base64形式の文字列からバイト型配列に変換
            byte[] src = System.Convert.FromBase64String(text);

            // 複号化する
            using (ICryptoTransform decrypt = des3alg.CreateDecryptor())
            {
                byte[] dest = decrypt.TransformFinalBlock(src, 0, src.Length);
                return Encoding.Unicode.GetString(dest);
            }
        }

        /// <summary>
        /// 文字列をAESで暗号化
        /// </summary>
        private static string AESEncrypt(string text)
        {
            // AES暗号化サービスプロバイダ
            AesCryptoServiceProvider aes = new AesCryptoServiceProvider();
            aes.BlockSize = 128;
            aes.KeySize = 128;
            aes.IV = Encoding.UTF8.GetBytes(AesIV);
            aes.Key = Encoding.UTF8.GetBytes(AesKey);
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;

            // 文字列をバイト型配列に変換
            byte[] src = Encoding.Unicode.GetBytes(text);

            // 暗号化する
            using (ICryptoTransform encrypt = aes.CreateEncryptor())
            {
                byte[] dest = encrypt.TransformFinalBlock(src, 0, src.Length);

                // バイト型配列からBase64形式の文字列に変換
                return Convert.ToBase64String(dest);
            }
        }

        /// <summary>
        /// 文字列をAESで復号化
        /// </summary>
        private static string AESDecrypt(string text)
        {
            // AES暗号化サービスプロバイダ
            AesCryptoServiceProvider aes = new AesCryptoServiceProvider();
            aes.BlockSize = 128;
            aes.KeySize = 128;
            aes.IV = Encoding.UTF8.GetBytes(AesIV);
            aes.Key = Encoding.UTF8.GetBytes(AesKey);
            aes.Mode = CipherMode.CBC;
            aes.Padding = PaddingMode.PKCS7;

            // Base64形式の文字列からバイト型配列に変換
            byte[] src = System.Convert.FromBase64String(text);

            // 複号化する
            using (ICryptoTransform decrypt = aes.CreateDecryptor())
            {
                byte[] dest = decrypt.TransformFinalBlock(src, 0, src.Length);
                return Encoding.Unicode.GetString(dest);
            }
        }

        /// <summary>
        /// パソコンのユニックIDを取得する
        /// </summary>
        /// <returns></returns>
        private static String getUID()
        {
            string cpuInfo = string.Empty;
            ManagementClass mc = new ManagementClass("win32_processor");
            ManagementObjectCollection moc = mc.GetInstances();

            foreach (ManagementObject mo in moc)
            {
                cpuInfo = mo.Properties["processorID"].Value.ToString();
                break;
            }

            string drive = Path.GetPathRoot(
                System.Environment.GetFolderPath(Environment.SpecialFolder.System))
                .TrimEnd('\\');
            ManagementObject dsk = new ManagementObject(@"win32_logicaldisk.deviceid=""" + drive + @"""");
            dsk.Get();
            string volumeSerial = dsk["VolumeSerialNumber"].ToString();

            return cpuInfo + volumeSerial;
        }
    }
}
