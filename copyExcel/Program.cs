using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace copyExcel
{
    class Program
    {
        static List<cpyItem> cpyItems = new List<cpyItem>();

        static int Main(string[] args)
        {
            if (args.Length <= 1)
            {
                Console.WriteLine("ERROR: Please Input COPY file and Output file.");
                return 1;
            }

            string cpyFileName = args[0];
            string outExcelFileName = args[1];
//            string tblDefFileName = args[2];

//            Console.WriteLine("COPY:" + cpyFileName);
//            Console.WriteLine("Table Define:" + tblDefFileName);
//            Console.WriteLine("Output:" + outExcelFileName);

            cpyToExcel(args[0], args[1]);

//            cpy1Line(args[0], args[1]);

            return 0;
        }

        static public int cpy1Line(string srcCpyFileName, string dstCpyFileName)
        {
            ///todo:
            ///ファイル存在チェック

            FileStream cpyFile = new FileStream(srcCpyFileName, FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(cpyFile, Encoding.GetEncoding("Shift_JIS"));

            FileStream dstFile = new FileStream(dstCpyFileName, FileMode.OpenOrCreate, FileAccess.Write);
            StreamWriter sw = new StreamWriter(dstFile, Encoding.GetEncoding("Shift_JIS"));

            string line = readCpyLine(sr);
            
            while (line != null)
            {
                sw.WriteLine(line);
                line = readCpyLine(sr);
            }

            sw.Close();
            dstFile.Close();
            dstFile = null;

            sr.Close();
            cpyFile.Close();
            cpyFile = null;
            return 0;
        }

        static public int cpyToExcel(string cpyFileName, string outExcelFileName)
        {
            ///todo:
            ///ファイル存在チェック

            Microsoft.Office.Interop.Excel.Application ExcelApp = null;

            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                //                Microsoft.Office.Interop.Excel.Workbook tblDefExeclB = ExcelApp.Workbooks.Open(System.AppDomain.CurrentDomain.BaseDirectory + tblDefFileName);

                //                Microsoft.Office.Interop.Excel.Worksheet sheet1 = tblDefExeclB.Sheets[1];

                FileStream cpyFile = new FileStream(cpyFileName, FileMode.Open, FileAccess.Read);
                StreamReader sr = new StreamReader(cpyFile, Encoding.GetEncoding("Shift_JIS"));

                Microsoft.Office.Interop.Excel.Workbook outExeclB = ExcelApp.Workbooks.Add();
                Microsoft.Office.Interop.Excel.Worksheet sheet2 = outExeclB.Sheets[1];

                string line;

                line = readCpyLine(sr);

                while (line != null)
                {

                    line = talkta(sr, line, ref cpyItems);

                }

                sr.Close();
                cpyFile.Close();
                cpyFile = null;

                //                tblDefExeclB.Close(0);

                writeExcel(sheet2);

                ExcelApp.DisplayAlerts = false;
                outExeclB.SaveAs(System.AppDomain.CurrentDomain.BaseDirectory + outExcelFileName);
                ExcelApp.DisplayAlerts = true;
                // 比較結果ファイル閉じる
                outExeclB.Close();

                //エクセルを閉じる
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 1;
            }
            finally
            {
                if (ExcelApp != null)
                {
                    if (ExcelApp.Workbooks.Count > 0)
                    {
                        ExcelApp.DisplayAlerts = false;
                        ExcelApp.Workbooks.Close();
                        ExcelApp.DisplayAlerts = true;
                    }
                    ExcelApp.Quit();
                    System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                }
            }

            return 0;
        }

        static public string talkta(StreamReader sr, string line, ref List<cpyItem> items)
        {
            if (line.ToUpper().Contains("OCCURS"))
            {
                // OCCURS 5 TIMES.
                Int16 level = Convert.ToInt16(line.Substring(0, 2));
                string oc = line.Substring(line.IndexOf("OCCURS") + "OCCURS".Length);

                Int16 times = Convert.ToInt16(oc.Substring(0, oc.IndexOf("TIMES")).Trim());

                List<cpyItem> ocItems = new List<cpyItem>();

                string ll = readCpyLine(sr);

                // OCCURS定義行だけの場合
                if (ll == null || Convert.ToInt16(ll.Trim().Substring(0, 2)) <= level)
                {
                    addItem(line, ref ocItems);
                }

                // OCCURSが集団項目の場合
                while (ll != null && Convert.ToInt16(ll.Trim().Substring(0, 2)) > level)
                {
//                    addItem(ll, ref ocItems);
//                    ll = readCpyLine(sr);

                    ll = talkta(sr, ll, ref ocItems);
                }

                // 回数分追加する
                for (int i = 1; i <= times; i++)
                {
                    foreach (cpyItem ci in ocItems)
                    {
                        cpyItem c = new cpyItem();
                        c.Name = ci.Name + Convert.ToString(i);
                        c.Type = ci.Type;
                        c.Length = ci.Length;
                        c.Level = ci.Level;
                        c.Comments = ci.Comments;

                        items.Add(c);
                    }
                }
                line = ll;
            }
            else
            {
                addItem(line, ref items);

                line = readCpyLine(sr);
            }

            return line;
        }


        static public string readCpyLine(StreamReader sr)
        {
            string line = sr.ReadLine();

            if (line == null) return null;

            line = line.Trim();

            while (!line.EndsWith("."))
            {
                string l = sr.ReadLine();
                if(l.TrimStart().StartsWith("*"))
                {
                    // コメントであれば,読み飛ばす
                    continue;
                }
                if(l == null)
                {
                    break;
                }
                line = line + " " + l.Trim();
            }

            return line;
        }

        static public void writeExcel(Microsoft.Office.Interop.Excel.Worksheet st)
        {
            int row = 0;
            int startRow = 2;

            int colNo = 1;
            int colName = 2;
            int colType = 3;
            int colLen = 4;
            int colCom = 5;

            st.Cells[startRow - 1, colNo] = "No.";
            st.Cells[startRow - 1, colName] = "項目名";
            st.Cells[startRow - 1, colType] = "属性";
            st.Cells[startRow - 1, colLen] = "バイト数";
            st.Cells[startRow - 1, colCom] = "備考";

            row = startRow;

            foreach (cpyItem ci in cpyItems)
            {
                st.Cells[row, colNo] = row - startRow + 1;
                st.Cells[row, colName] = ci.Name;
                st.Cells[row, colType] = ci.Type;
                st.Cells[row, colLen] = ci.Length;
                st.Cells[row, colCom] = ci.Comments;

                row = row + 1;
            }
        }

        static public void addItem(string line ,ref List<cpyItem> item)
        {
            string[] tt = line.Trim().Split(' ');
            if (tt.Length < 3)
                return;
            bool bPic = false;
            bool bUsage = false;

            if (line.ToUpper().Contains("PIC"))
            {
                bPic = true;
            }
            if (line.ToUpper().Contains("USAGE"))
            {
                bUsage = true;
            }

            cpyItem item1 = new cpyItem();

            int col = 0;
            int picIdx = 0;
            int useIdx = 0;

            for(int idx = 0;idx < tt.Length; idx++)
            {
                if(tt[idx].Trim().Length <= 0 )
                {
                    continue;
                }

                col = col + 1;
                if(col == 1)
                {
                    item1.Level = tt[idx].Trim();
                }
                else if(col == 2)
                {
                    item1.Name = tt[idx].Trim();
                }else if(tt[idx].Trim() == "PIC" && bPic)
                {
                    // PIC 9(3).
                    picIdx = idx;
                }else if(picIdx > 0 && bPic && !bUsage)
                {
                    // PIC 9(3).
                    item1.Type = getPicType(tt[idx].Trim());
                    if (item1.Type == "日本語")
                    {
                        item1.Length = Convert.ToString(getPicLen(tt[idx].Trim()) * 2);
                    }
                    else
                    {
                        item1.Length = Convert.ToString(getPicLen(tt[idx].Trim()));
                    }
                    item1.Comments = tt[idx].Trim().TrimEnd('.');
                    picIdx = 0;
                }
                else if (picIdx > 0 && bPic && bUsage)
                {
                    // PIC 9(3) USAGE COMP-3.
                    if (line.ToUpper().Contains("COMP-3"))
                    {
                        // item1.Type = getPicType(tt[idx].Trim());
                        item1.Type = "COMP-3";
                        double len = getPicLen(tt[idx].Trim());
                        item1.Length = Convert.ToString(Math.Round((len + 1) / 2, MidpointRounding.AwayFromZero));
                        item1.Comments = tt[idx].Trim().TrimEnd('.');
                    }
                    picIdx = 0;
                }
                else if (tt[idx].Trim() == "USAGE" && !bPic && bUsage)
                {
                    // USAGE COMP-1.
                    useIdx = idx;
                }
                else if(useIdx > 0 && !bPic && bUsage)
                {
                    // USAGE COMP-1.
                    item1.Type = tt[idx].Trim().TrimEnd('.');
                    if(tt[idx].Trim().ToUpper().StartsWith("COMP-1"))
                    {
                        item1.Length = "2";
                    }else if(tt[idx].Trim().ToUpper().StartsWith("COMP-2"))
                    {
                        item1.Length = "4";
                    }else
                    {
                        item1.Length = "";
                    }
                    useIdx = 0;
                }

                
            }

            if (item1.Level != null && item1.Name != null && item1.Type != null && item1.Level != null)
            {
                item.Add(item1);
            }
        }

        static public string getPicType(string data)
        {
            if (data.Substring(0, 1) == "9" || data.Substring(0, 2) == "S9")
            {
                return "数字";
            }else if(data.Substring(0,1) == "N")
            {
                return "日本語";
            }else if(data.Substring(0,1) == "X")
            {
                return "英数字";
            }
            else if (data.Substring(0, 1) == "1")
            {
                return "BIT";
            }
            else
            {
                return "";
            }
        }

        static public int getPicLen(string data)
        {
            int left = data.IndexOf("(");
            if(left < 0) return 0;

            int right = data.IndexOf(")", left);
            if (right < 0) return 0;

            if (right - left < 2) return 0;

            int len1 = Convert.ToInt16(data.Substring(left + 1, right - left - 1));

            // Vがある場合
            left = data.IndexOf("(", right);
            if (left < 0) return len1;

            right = data.IndexOf(")", left);
            if (right < 0) return len1;

            int len2 = Convert.ToInt16(data.Substring(left + 1, right - left - 1));
            return len1 + len2;
        }
    }

    class cpyItem
    {
        public string Level { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Length { get; set; }
        public string Comments { get; set; }
    }
}
