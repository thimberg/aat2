using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;
using System.Reflection;
using System.Xml.Serialization;

namespace cobAddDisplay
{
    class Program
    {
        private const string SET_INI_FILE = "setup.ini";
        private static IniSet INI = new IniSet(AppDomain.CurrentDomain.BaseDirectory + SET_INI_FILE);

        private const string DELIMITER =  "ZZZカイギョウZZZ" ;
        private static bool sectionDebug;
        private static int method = 2;  // 処理方法の設定{1:正規表現,　2:正規表現リスト}

        static void Main(string[] args)
        {
            string srcFileName = args[0];
            string dstFileName = args[1];

            if (args.Length > 2)
            {
                sectionDebug = false;
                if (method == 1)
                {
                    string regex;
                    string keys = "";
                    for (int i = 2; i < args.Length; i++)
                    {
                        keys = keys.Length == 0 ? args[i] : keys + "|" + args[i];
                    }
                    regex = @"((^|" + DELIMITER + ").{6} ).* (" + keys + ")";

                    addDisplay(srcFileName, dstFileName, regex);
                }
                else if (method == 2)
                {
                    List<Regex> regexList = new List<Regex>();
                    for (int i = 2; i < args.Length; i++)
                    {
                        if (args[i].Trim().Length > 0)
                        {
                            Regex r = new Regex(@"(^|" + DELIMITER + ".{6} ).* (" + args[i] + ")");
                            regexList.Add(r);
                        }
                    }
                    if(regexList.Count > 0)
                    {
                        addDisplay(srcFileName, dstFileName, regexList);
                    }
                }
            }
            else
            {
                string regex;
                sectionDebug = true;
                regex = @"(^.{6} )(CX\d{5})\.";
                addDisplay(srcFileName, dstFileName, regex);
            }
            

        }

        static private int addDisplay(string srcFileName, string dstFileName, List<Regex> regLs)
        {
            FileStream cpyFile = new FileStream(srcFileName, FileMode.Open, FileAccess.Read);
            CobolStreamReader sr = new CobolStreamReader(cpyFile, Encoding.GetEncoding(INI.iniCobolSrcEncode));

            FileStream dstFile = new FileStream(dstFileName, FileMode.Create, FileAccess.Write);
            StreamWriter sw = new StreamWriter(dstFile, Encoding.GetEncoding(INI.iniCobolSrcEncode));

            System.Text.RegularExpressions.Regex r2 = new Regex("((^|" + DELIMITER + ").{6} ) *(PROCEDURE) *(DIVISION)");

            String fileN = Path.GetFileName(srcFileName);

            bool bProc = false;

            //string line = read1Line(sr);
            string line = sr.Read1Line();
            if (r2.Match(line).Success) bProc = true;

            int cnt = 0;
            while (line != null)
            {
                if (r2.Match(line).Success) bProc = true;

                bool bMatch = regMatch(regLs, line);

                if ((INI.iniAddDispPosition == "BOTH" || INI.iniAddDispPosition == "BEFORE") && bProc && bMatch && !line.ToUpper().Contains("EXIT."))
                {
                    foreach (Regex r in regLs)
                    {
                        if (r.Match(line).Success)
                        {
                            string ss = r.Match(line).Groups[2].ToString();

                            sw.WriteLine("           DISPLAY \"" + "--Before --FILE:" + fileN + " --LINE:" + ++cnt + "--  " + ss + " = \" " + ss + " UPON CONSOLE");
                        }
                    }
                }

                //                sw.WriteLine(line);
                write1Line(sw, line, ref cnt);
                // セクションを探す
                if ((INI.iniAddDispPosition == "BOTH" || INI.iniAddDispPosition == "AFTER") && bProc && bMatch && !line.ToUpper().Contains("EXIT."))
                {
                    //                    Console.WriteLine("||" + line.Trim());
                    foreach (Regex r in regLs)
                    {
                        if (r.Match(line).Success)
                        {
                            string ss = r.Match(line).Groups[2].ToString();

                            sw.WriteLine("           DISPLAY \"" + "--After --FILE:" + fileN + " --LINE:" + ++cnt + "--  " + ss + " = \" " + ss + " UPON CONSOLE");
                        }
                    }
                }
                Console.WriteLine(line.TrimEnd());
                //line = read1Line(sr);
                line = sr.Read1Line();
            }

            sw.Close();
            dstFile.Close();
            dstFile = null;

            sr.Close();
            cpyFile.Close();
            cpyFile = null;

            return 0;
        }

        private static bool regMatch(List<Regex> regLs, String data)
        {
            foreach(Regex r in regLs)
            {
                if(r.Match(data).Success)
                {
                    return true;
                }
            }
            return false;
        }

        private static int addDisplay(string srcFileName, string dstFileName, string rex)
        {
            FileStream cpyFile = new FileStream(srcFileName, FileMode.Open, FileAccess.Read);
            CobolStreamReader sr = new CobolStreamReader(cpyFile, Encoding.GetEncoding(INI.iniCobolSrcEncode));

            FileStream dstFile = new FileStream(dstFileName, FileMode.Create, FileAccess.Write);
            StreamWriter sw = new StreamWriter(dstFile, Encoding.GetEncoding(INI.iniCobolSrcEncode));
            System.Text.RegularExpressions.Regex r1 = new System.Text.RegularExpressions.Regex(rex);
            System.Text.RegularExpressions.Regex r2 = new Regex("((^|" + DELIMITER + ").{6} ) *(PROCEDURE) *(DIVISION)");

            bool bProc = false;

            //string line = read1Line(sr);
            string line = sr.Read1Line();
            if (r2.Match(line).Success) bProc = true;

            int cnt = 0;
            while (line != null)
            {
                if (r2.Match(line).Success) bProc = true;

                if (bProc && r1.Match(line).Success && !line.ToUpper().Contains("EXIT."))
                {
                    //                    Console.WriteLine("||" + line.Trim());
                    string ss = r1.Match(line).Groups[2].ToString();
                    if (sectionDebug)
                    {
                        sw.WriteLine("           DISPLAY \"" + "--Before --LINE:" + ++cnt + "--  " + ss + "\" UPON CONSOLE");
                    }
                    else
                    {
                        sw.WriteLine("           DISPLAY \"" + "--Before --LINE:" + ++cnt + "--  " + ss + " = \" " + ss + " UPON CONSOLE");
                    }
                }

//                sw.WriteLine(line);
                write1Line(sw, line, ref cnt);
                // セクションを探す
                if (bProc && r1.Match(line).Success && !line.ToUpper().Contains("EXIT."))
                {
//                    Console.WriteLine("||" + line.Trim());
                    string ss = r1.Match(line).Groups[2].ToString();
                    if (sectionDebug)
                    {
                        sw.WriteLine("           DISPLAY \"" + "--After --LINE:" + ++cnt + "--  " + ss + "\" UPON CONSOLE");
                    }
                    else
                    {
                        sw.WriteLine("           DISPLAY \"" + "--After --LINE:" + ++cnt + "--  " + ss + " = \" " + ss + " UPON CONSOLE");
                    }
                }
                
                //line = read1Line(sr);
                line = sr.Read1Line();
            }

            sw.Close();
            dstFile.Close();
            dstFile = null;

            sr.Close();
            cpyFile.Close();
            cpyFile = null;
            return 0;
        }

        public static void write1Line(StreamWriter sw, string data, ref int count)
        {
            string[] line = data.Split(new string[]{DELIMITER},StringSplitOptions.None);

            foreach(string l in line)
            {
                sw.WriteLine(l);
                count++;
            }
        }

    }

}
