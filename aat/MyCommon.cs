using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;

namespace aat
{
    public class MyCommon
    {
        
        /// <summary>
        /// パス名の左側に\を追加する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public static string addLeftYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.StartsWith("\\"))
            {
                return str;
            }
            else
            {
                return "\\" + str;
            }
        }

        /// <summary>
        /// パス名の左側に\を削除する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public static string delLeftYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.StartsWith("\\"))
            {
                return str.Substring(1);
            }
            else
            {
                return str;
            }
        }

        /// <summary>
        /// パス名の右側に\を追加する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public static string addRightYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.EndsWith("\\"))
            {
                return str;
            }
            else
            {
                return str + "\\";
            }
        }

        /// <summary>
        /// パス名の右側に\を削除する。
        /// 既に存在すれば、そのままとする。
        /// </summary>
        public static string delRightYen(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return null;
            }
            if (str.EndsWith("\\"))
            {
                return str.Substring(0, str.Length - 1);
            }
            else
            {
                return str;
            }
        }

        /// <summary>
        /// ２バイトが改行コードの判断
        /// </summary>
        /// <param name="f">ファイルのストリーム</param>
        /// <returns>改行コード：True、改行コードではない：False</returns>
        public static bool readNR(System.IO.FileStream f)
        {
            byte[] buf = new byte[2];
            int size = 0;
            size = f.Read(buf, 0, buf.Length);
            if (buf.SequenceEqual(new byte[] { 0X0D, 0X0A }))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// パック１０進数を解析する
        /// </summary>
        /// <param name="bPacked">パック１０進数のバイト配列</param>
        /// <returns></returns>
        private static Int64 packToInt(byte[] bPacked)
        {
            int iHiWord = 0;
            int iLoWord = 0;
            Int64 iIntValue = 0;
            int iArrayLength = bPacked.Length;
            for (int i = 0; i < iArrayLength - 1; i++)
            {
                iHiWord = bPacked[i] & 240;
                iHiWord >>= 4;
                iLoWord = bPacked[i] & 15;
                iIntValue = 100 * iIntValue + 10 * iHiWord + iLoWord;
            }
            iHiWord = bPacked[iArrayLength - 1] & 240;
            iHiWord >>= 4;
            iLoWord = bPacked[iArrayLength - 1] & 15;
            iIntValue = 10 * iIntValue + iHiWord;
            //符号の判定
            if (iLoWord == 0x0D)
            {
                iIntValue = -1 * iIntValue;
            }
            return iIntValue;
        }

        /// <summary>
        /// データ変換
        /// </summary>
        /// <param name="type">データタイプ</param>
        /// <param name="buf">データ</param>
        /// <param name="buf">備考（COMP-3時、小数判断用）</param>
        /// <returns>変換した文字列</returns>
        public static string convertStr(String type, byte[] buf, String comm = "")
        {
            string str = "";

            if (buf == null || buf.Length == 0)
            {
                return str;
            }

            if (type == MyConst.DATA_TYPE_9 ||
                type == MyConst.DATA_TYPE_N ||
                type == MyConst.DATA_TYPE_X)
            {
                str = Encoding.GetEncoding("Shift_JIS").GetString(buf);
            }
            else if (type == MyConst.DATA_TYPE_CP1) // COMP-1
            {
                //                float ff = BitConverter.ToSingle(buf, 0);
                //                str = Convert.ToString(ff);

                Int16 ss = BitConverter.ToInt16(buf, 0);
                str = Convert.ToString(ss);
            }
            else if (type == MyConst.DATA_TYPE_CP2) // COMP-2
            {
                //                double dd = BitConverter.ToDouble(buf, 0);
                //                str = Convert.ToString(dd);

                Int32 ii = BitConverter.ToInt32(buf, 0);
                str = Convert.ToString(ii);
            }
            else if (type == MyConst.DATA_TYPE_CP3) // COMP-3
            {
                if (buf.Length > 0 && comm.Contains("V"))
                {
                    // 小数がある場合
                    string ff = "V9(";
                    int startPos = comm.IndexOf(ff);

                    if (startPos >= 0)
                    {
                        int endPos = comm.IndexOf(")", startPos);
                        if (endPos - startPos >= ff.Length + 1)
                        {
                            int dotLen = Convert.ToInt16(comm.Substring(startPos + ff.Length, endPos - startPos - ff.Length));
                            if (dotLen == 0) dotLen = 1;
                            string formatX = "{0:0.".PadRight(dotLen + 5, '0') + "}";

                            str = string.Format(formatX, (double)packToInt(buf) / (double)Math.Pow(10, dotLen));
                        }
                        else
                        {
                            str = "";
                        }
                    }
                    else
                    {
                        str = "";
                    }
                }
                else if (buf.Length > 0 && !comm.Contains("V"))
                {
                    str = Convert.ToString(packToInt(buf));
                }
                else
                {
                    str = "";
                }
            }
            else
            {
                str = Encoding.GetEncoding("Shift_JIS").GetString(buf);
            }

            return str;
        }

        /// <summary>
        /// 外部コマンド実行
        /// </summary>
        /// <param name="filename">外部コマンド</param>
        /// <param name="arguments">パラメータ</param>
        /// <returns></returns>
        public static RtnCode RunExe(string filename, string arguments = null, bool checkMsg = false, string runPath = "", bool noLog = false)
        {
            var process = new System.Diagnostics.Process();

            process.StartInfo.FileName = filename;
            //            process.StartInfo.WorkingDirectory = "";

            if (!string.IsNullOrEmpty(arguments))
            {
                process.StartInfo.Arguments = arguments;
            }
            

            process.StartInfo.CreateNoWindow = true;
            process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            process.StartInfo.UseShellExecute = false;

            process.StartInfo.RedirectStandardError = true;
            process.StartInfo.RedirectStandardOutput = true;
            var stdOutput = new StringBuilder();
            process.OutputDataReceived += (sender, args) => stdOutput.Append(String.IsNullOrEmpty(args.Data) ? "" : args.Data + "\r\n");
            
            RtnCode rt = new RtnCode();

            string stdError = null;
            try
            {
                String curDir = Directory.GetCurrentDirectory();
                if (runPath.Length > 0)
                {
                    Directory.SetCurrentDirectory(runPath);
                }
                else if (Path.GetDirectoryName(filename).Length > 0)
                {
                    Directory.SetCurrentDirectory(Path.GetDirectoryName(filename));
                }

                if(!noLog) MyLog.WriteLog("外部exe実行：" + process.StartInfo.FileName + "<" + process.StartInfo.Arguments + ">");

                process.Start();
                process.BeginOutputReadLine();
                stdError = process.StandardError.ReadToEnd();
                process.WaitForExit();
                Directory.SetCurrentDirectory(curDir);

            }
            catch (Exception e)
            {
                MessageBox.Show("外部ファイル実行時にエラーが発生しました。" + Format(filename, arguments) + ": " + e.Message);
                if (!noLog) MyLog.WriteLog(e.Message, MyConst.RET_V.ERROR);
                //                throw new Exception("OS error while executing " + Format(filename, arguments) + ": " + e.Message, e);
            }

            if (process.ExitCode == 0)
            {
                rt.Code = 0;
                rt.Message = "";
                rt.stdError = stdError.ToString();
                rt.stdOutput = stdOutput.ToString();

                if (stdOutput.Length != 0)
                {
                    MyConst.RET_V lev = MyConst.RET_V.INFO;
                    // Std Outputにキーワード存在する場合
                    if (checkMsg && Program.INI.iniErrString.Any(stdOutput.ToString().Contains))
                    {
                        rt.Code = -1;
                        rt.Message = stdOutput.ToString();
                        lev = MyConst.RET_V.ERROR;
                    }
                    if (!noLog) MyLog.WriteLog("Std Output:" + stdOutput.ToString(), lev);
                }
                if (stdError.Length != 0)
                {
                    rt.Message = stdError.ToString();
                    if (!noLog) MyLog.WriteLog("Std Error:" + stdError, MyConst.RET_V.ERROR);
                }
                return rt;
            }
            else
            {
                var message = new StringBuilder();

                if (!string.IsNullOrEmpty(stdError))
                {
                    message.AppendLine(stdError);
                }

                if (stdOutput.Length != 0)
                {
                    message.AppendLine("Std output:");
                    message.AppendLine(stdOutput.ToString());
                }

                rt.Code = process.ExitCode;
                rt.Message = Format(filename, arguments) + " finished with exit code = " + process.ExitCode + ": " + message;

                if (!noLog) MyLog.WriteLog(rt.Message);
                return rt;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="filename"></param>
        /// <param name="arguments"></param>
        /// <returns></returns>
        private static string Format(string filename, string arguments)
        {
            return "'" + filename +
                ((string.IsNullOrEmpty(arguments)) ? string.Empty : " " + arguments) +
                "'";
        }


        /// <summary>
        /// CFMファイル自動生成
        /// </summary>
        /// <param name="cfmFileName">CFMファイル名</param>
        /// <param name="pathList">対象ファイルパス(\n)区切り</param>
        public static void createCFM(string cfmFileName, string pathList)
        {
            List<string> fl = pathList.Split('\n').ToList<string>();

            fl.Sort();

            string folder = Path.GetDirectoryName(cfmFileName);

            for (int i = 0; i < fl.Count; i++)
            {
                if (fl[i].Length <= 0)
                {
                    continue;
                }

                string fileName = fl[i];
                string section = Path.GetFileNameWithoutExtension(fl[i]).ToUpper();
                string indexFlg = "";

                if (i + 1 < fl.Count && Path.GetExtension(fl[i + 1]).ToUpper() == ".IDX" &&
                    Path.GetFileNameWithoutExtension(fl[i + 1]).ToUpper() == section.ToUpper())
                {
                    indexFlg = "TRUE";
                    i++;
                }

                addItemCfm(cfmFileName, section, folder + addLeftYen(fileName), indexFlg);
            }
        }

        /// <summary>
        /// CFMファイルに項目追加
        /// </summary>
        /// <param name="cfmFileName">CFMファイル名</param>
        /// <param name="section">セクション</param>
        /// <param name="fileName">ファイルパス</param>
        /// <param name="indexFlg">インディクスフラグ</param>
        public static void addItemCfm(string cfmFileName, string section, string fileName, string indexFlg = "")
        {
            CfmFile cfm = new CfmFile(cfmFileName);

            if (!File.Exists(cfmFileName))
            {
                FileStream fs = File.Create(cfmFileName);
                fs.Flush();
                fs.Close();
                System.Threading.Thread.Sleep(100);

                cfm["OWNER=MODE", "MODE"] = "USER";
            }

            cfm[section, "ENGINE"] = "COBOL";
            cfm[section, "FILENAME"] = fileName;
            cfm[section, "ORGANIZATION"] = String.IsNullOrEmpty(indexFlg) ? null : "索引編成";
        }

        /// <summary>
        /// 差分あるシートの色を赤にする
        /// </summary>
        /// <param name="bk">Bookのオブジェクト</param>
        public static void diffSheetColor(Workbook bk)
        {
            for (int i = 2; i <= bk.Sheets.Count; i++)
            {
                Worksheet sh1 = bk.Sheets[i];
                if (sh1.Cells[3, 6].Value2 != null && Convert.ToInt16(sh1.Cells[3, 6].Value2) > 0)
                {
                    sh1.Tab.Color = 255;
                }
            }
        }

        /// <summary>
        /// 現新ファイルを解析し、エクセルに出力する
        /// </summary>
        /// <param name="sheet1">エクセルシート</param>
        /// <param name="inFile">現行ファイル名</param>
        /// <param name="parseTpl">解析用テンプレートファイル名</param>
        /// <param name="cmpFile">比較対象ファイル名</param>
        public static void outExcel(Worksheet sheet1, string inFile,
            List<ParseTplFile> parseTpl, string cmpFile)
        {

            String startCell = MyConst.outStartCol + MyConst.outStartRow.ToString();
            int dstRow = MyConst.outStartRow;
            int rowNo = 1;
            int recordCnt = 0;

            sheet1.Name = Path.GetFileName(inFile);

            sheet1.Cells[dstRow - 1, 1] = "No.";
            sheet1.get_Range("A:A").ColumnWidth = 4;
            sheet1.Cells[dstRow - 1, 2] = "項目名称";
            sheet1.get_Range("B:B").ColumnWidth = 30;
            sheet1.Cells[dstRow - 1, 3] = "データタイプ";
            sheet1.get_Range("C:C").ColumnWidth = 10;
            sheet1.Cells[dstRow - 1, 4] = "桁数";
            sheet1.get_Range("D:D").ColumnWidth = 10;
            sheet1.Cells[dstRow - 1, 5] = "データ（現行）";
            sheet1.get_Range("E:E").ColumnWidth = 30;
            sheet1.get_Range("E:E").NumberFormatLocal = "@";
            sheet1.Cells[dstRow - 1, 6] = "比較結果";
            sheet1.get_Range("F:F").ColumnWidth = 10;
            sheet1.Cells[dstRow - 1, 7] = "データ（新規）";
            sheet1.get_Range("G:G").ColumnWidth = 30;
            sheet1.get_Range("G:G").NumberFormatLocal = "@";

            sheet1.get_Range("A" + (dstRow - 1).ToString() + ":G" + (dstRow - 1).ToString()).Interior.Color = 0x909090;
            sheet1.get_Range("A" + (dstRow - 1).ToString() + ":G" + (dstRow - 1).ToString()).Borders.LineStyle = true;

            // データファイル開く
            FileStream srcFileS = new FileStream(inFile, FileMode.Open, FileAccess.Read);
            FileStream cmpFileS = new FileStream(cmpFile, FileMode.Open, FileAccess.Read);
            byte[] buf1 = new byte[256];
            byte[] buf2 = new byte[256];

            while (true)
            {
                int size1 = 0;
                int size2 = 0;

                // レコード番号
                sheet1.Cells[dstRow, 1] = rowNo;

                foreach (ParseTplFile cf in parseTpl)
                {
                    if (cf.ItemName.Trim().StartsWith("※") && cf.ItemName.Trim().EndsWith("※"))
                    {
                        // 比較対象外の場合
                        Array.Resize(ref buf1, Convert.ToInt32(cf.ItemLen));
                        Array.Resize(ref buf2, Convert.ToInt32(cf.ItemLen));

                        size1 = srcFileS.Read(buf1, 0, buf1.Length);
                        size2 = cmpFileS.Read(buf2, 0, buf2.Length);

                        sheet1.Cells[dstRow, 2] = cf.ItemName;
                        sheet1.Cells[dstRow, 3] = cf.ItemType;
                        sheet1.Cells[dstRow, 4] = cf.ItemLen;
                        sheet1.Cells[dstRow, 5] = convertStr(cf.ItemType, buf1, cf.ItemCom);
                        sheet1.Cells[dstRow, 7] = convertStr(cf.ItemType, buf2, cf.ItemCom);
                        sheet1.Cells[dstRow, 9] = cf.CblName;
                    }
                    else if (cf.ItemType.Length > 0 && cf.ItemType != "-" &&
                       cf.ItemLen.Length > 0 && cf.ItemLen != "-")
                    {
                        Array.Resize(ref buf1, Convert.ToInt32(cf.ItemLen));
                        Array.Resize(ref buf2, Convert.ToInt32(cf.ItemLen));

                        size1 = srcFileS.Read(buf1, 0, buf1.Length);
                        size2 = cmpFileS.Read(buf2, 0, buf2.Length);

                        if (size1 == 0 && size2 == 0)
                        {
                            break;
                        }

                        // エクセルに書き出し
                        sheet1.Cells[dstRow, 2] = cf.ItemName;
                        sheet1.Cells[dstRow, 3] = cf.ItemType;
                        sheet1.Cells[dstRow, 4] = cf.ItemLen;
                        if (size1 == 0)
                        {
                            sheet1.Cells[dstRow, 5] = "-";
                        }
                        else
                        {
                            sheet1.Cells[dstRow, 5] = convertStr(cf.ItemType, buf1, cf.ItemCom);
                        }
                        sheet1.Cells[dstRow, 6].FormulaR1C1 = "=IF(RC[-1]=RC[1],\"○\",\"×\")";
                        if (size2 == 0)
                        {
                            sheet1.Cells[dstRow, 7] = "-";
                        }
                        else
                        {
                            sheet1.Cells[dstRow, 7] = convertStr(cf.ItemType, buf2, cf.ItemCom);
                        }
                        sheet1.Cells[dstRow, 9] = cf.CblName;
                    }
                    else
                    {
                        sheet1.Cells[dstRow, 2] = cf.ItemName;
                        sheet1.Cells[dstRow, 3] = cf.ItemType;
                        sheet1.Cells[dstRow, 4] = cf.ItemLen;
                        sheet1.Cells[dstRow, 9] = cf.CblName;
                    }
                    dstRow = dstRow + 1;
                }

                if (size1 == 0 && size2 == 0)
                {
                    recordCnt = rowNo;
                    break;
                }

                long pos1 = srcFileS.Position;
                // 改行コードを読み取り
                if (!readNR(srcFileS))
                {
                    // 改行コードではなければ、読み取り位置を戻す
                    srcFileS.Position = pos1;
                }

                long pos2 = cmpFileS.Position;
                // 改行コードを読み取り
                if (!readNR(cmpFileS))
                {
                    // 改行コードではなければ、読み取り位置を戻す
                    cmpFileS.Position = pos2;
                }

                if (srcFileS.Length == srcFileS.Position && cmpFileS.Length == cmpFileS.Position)
                {
                    recordCnt = rowNo;
                    // 最後まで読み込んだ
                    break;
                }

                sheet1.get_Range("A" + dstRow.ToString() + ":G" + dstRow.ToString()).Interior.Color = 0x808080;
                sheet1.get_Range("A" + dstRow.ToString() + ":G" + dstRow.ToString()).RowHeight = 4;

                // 最大行数判断
                if (dstRow > Convert.ToInt32(Program.INI.iniExcelMaxRow))
                {
                    recordCnt = rowNo;
                    break;
                }

                dstRow = dstRow + 1;
                rowNo = rowNo + 1;
            }

            // サマリの出力
            sheet1.Cells[2, 1] = "現行";
            sheet1.Cells[2, 2] = Path.GetFileName(inFile);
            sheet1.Cells[3, 1] = "新規";
            sheet1.Cells[3, 2] = Path.GetFileName(cmpFile);

            sheet1.Cells[1, 5] = "レコード数";
            sheet1.Cells[1, 6] = dstRow - MyConst.outStartRow == 0 ? "0" : recordCnt.ToString();
            sheet1.Cells[2, 5] = "総カラム数";
            sheet1.Cells[2, 6].Formula = "=COUNTA(F" + MyConst.outStartRow + ":F" + dstRow + ")";
            sheet1.Cells[3, 5] = "不一致カラム数";
            sheet1.Cells[3, 6].Formula = "=COUNTIF(F" + MyConst.outStartRow + ":F" + dstRow + ",\"×\")";

            // データタイプ列を非表示
            //            sheet1.get_Range("C:C").Hidden = true;
            sheet1.Columns[3].Hidden = true;
            sheet1.Columns[9].Hidden = true;

            // 罫線
            sheet1.get_Range(startCell + ":G" + dstRow.ToString()).Borders.LineStyle = true;

            // 条件付き書式
            FormatCondition fc = sheet1.get_Range("F" + MyConst.outStartRow + ":F" + dstRow).FormatConditions.Add
                (XlFormatConditionType.xlCellValue,
                 XlFormatConditionOperator.xlEqual,
                 "×", null, null, null, null, null);
            fc.Interior.ColorIndex = 3;

            srcFileS.Close();
            srcFileS = null;
            cmpFileS.Close();
            cmpFileS = null;
        }


        /// <summary>
        /// 比較結果の概要シートを作成する
        /// </summary>
        /// <param name="book1">Bookのオブジェクト</param>
        /// <param name="notExistFile">存在しないファイル名</param>
        /// 
        public static CompResult outSummaryExecl(Workbook book1, string notExistFile)
        {
            // 先頭からシート追加
            Worksheet st1 = book1.Sheets.Add(Before: book1.Sheets[1]);

            CompResult rtn = new CompResult();

            st1.Select();
            st1.Name = "結果概要";

            int startRow = 2;
            int row = startRow + 1;
            st1.Cells[startRow, 1] = "No.";
            st1.get_Range("A:A").ColumnWidth = 4;
            st1.Cells[startRow, 2] = "出力ファイル名";
            st1.get_Range("B:B").ColumnWidth = 30;
            st1.Cells[startRow, 3] = "レコード数";
            st1.get_Range("C:C").ColumnWidth = 12;
            st1.Cells[startRow, 4] = "総カラム数";
            st1.get_Range("D:D").ColumnWidth = 12;
            st1.Cells[startRow, 5] = "不一致カラム数";
            st1.get_Range("E:E").ColumnWidth = 12;

            st1.get_Range("A" + (startRow).ToString() + ":E" + (startRow).ToString()).Interior.Color = 0x909090;
            st1.get_Range("A" + (startRow).ToString() + ":E" + (startRow).ToString()).Borders.LineStyle = true;



            for (int i = 2; i <= book1.Sheets.Count; i++)
            {
                rtn.FileCount = i - 1;
                st1.Cells[row, 1] = (i - 1).ToString();  // No.
                st1.Cells[row, 2] = book1.Sheets[i].Name;  // ファイル名
                st1.Cells[row, 3] = book1.Sheets[i].Cells[1, 6].Value; // レコード数
                rtn.RecordCount += Convert.ToUInt16(book1.Sheets[i].Cells[1, 6].Value);
                st1.Cells[row, 4] = book1.Sheets[i].Cells[2, 6].Value; // 総カラム数
                rtn.ColumnCount += Convert.ToUInt16(book1.Sheets[i].Cells[2, 6].Value);
                st1.Cells[row, 5] = book1.Sheets[i].Cells[3, 6].Value; // 不一致カラム数
                rtn.DiffColumnCount += Convert.ToUInt16(book1.Sheets[i].Cells[3, 6].Value);

                row = row + 1;
            }
            
            // 罫線1
            st1.get_Range("A" + (startRow).ToString() + ":E" + (row - 1).ToString()).Borders.LineStyle = true;

            // 条件付き書式
            FormatCondition fc = st1.get_Range("E" + (startRow + 1).ToString() + ":E" + row.ToString()).FormatConditions.Add
                (XlFormatConditionType.xlCellValue,
                 XlFormatConditionOperator.xlGreater,
                 "0", null, null, null, null, null);
            fc.Interior.ColorIndex = 3;

            // 存在しないファイルがあれば、出力する
            if (notExistFile.Length > 0)
            {
                string[] fileA = notExistFile.Split('\n');
                startRow = row + 3;
                row = startRow;

                foreach (string ms in fileA)
                {
                    st1.Cells[row, 2] = ms.Replace("\t", "    ・");
                    st1.get_Range("B" + row.ToString() + ":E" + row.ToString()).Merge();
                    row = row + 1;
                }

                // 罫線2
                st1.get_Range("B" + (startRow).ToString() + ":E" + (row - 1).ToString()).Borders.LineStyle = true;
            }

            return rtn;
        }

        /// <summary>
        /// データ変換
        /// convertData.exe ＆ IndexChange用ツールにてDBのCSV⇒COBOLへ変換を行う
        /// </summary>
        public static void convertData(string caseName)
        {
            String excelFileName = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.CONV_DATA_SET_FILE;
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                Workbook WorkBook = ExcelApp.Workbooks.Open(excelFileName, ReadOnly: true);

                Worksheet sheet = WorkBook.Sheets[1];
                sheet.Select();

                int row_count = sheet.get_Range("A1").End[XlDirection.xlDown].Row;

                for (int row = 2; row <= row_count; row++)
                {
                    string cName = ((Range)sheet.Cells[row, 2]).Text;

                    if (caseName != cName)
                    {
                        continue;
                    }

                    string inFile = ((Range)sheet.Cells[row, 3]).Text;
                    string tbl1 = ((Range)sheet.Cells[row, 4]).Text;
                    string tbl2 = ((Range)sheet.Cells[row, 5]).Text;
                    string outFile = ((Range)sheet.Cells[row, 6]).Text;
                    string idxFlg = ((Range)sheet.Cells[row, 7]).Text;
                    string idxTemp = ((Range)sheet.Cells[row, 8]).Text;

                    string srcDataFile = "";
                    string srcTblFile = "";
                    string dstTblFile = "";
                    string dstDataFile = "";
                    string indexFlg = "";

                    if (!File.Exists(delRightYen(Program.INI.iniSourceDataPath) + addLeftYen(inFile)) ||
                        !File.Exists(delRightYen(Program.INI.iniSourceDDLPath) + addLeftYen(tbl1)) ||
                        !File.Exists(delRightYen(Program.INI.iniDestDDLPath) + addLeftYen(tbl2)))
                    {
                        continue;
                    }

                    srcDataFile = delRightYen(Program.INI.iniSourceDataPath) + addLeftYen(inFile);
                    srcTblFile = delRightYen(Program.INI.iniSourceDDLPath) + addLeftYen(tbl1);
                    dstTblFile = delRightYen(Program.INI.iniDestDDLPath) + addLeftYen(tbl2);

                    if (!Directory.Exists(Path.GetDirectoryName(delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(outFile))))
                    {
                        Directory.CreateDirectory(Path.GetDirectoryName(delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(outFile)));
                    }

                    dstDataFile = delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(outFile);

                    // 索引ファイルフラグ
                    indexFlg = idxFlg;

                    // 実行
                    string convTool = MyConst.CONV_TOOL_NAME;

                    RtnCode rt = null;

                    if (!string.IsNullOrEmpty(indexFlg) && indexFlg.ToUpper() == "TRUE")
                    {
                        if (!Directory.Exists(Path.GetDirectoryName(delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(idxTemp))))
                        {
                            Directory.CreateDirectory(Path.GetDirectoryName(delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(idxTemp)));
                        }

                        string tempFile = delRightYen(Program.INI.iniDestDataPath) + addLeftYen(cName) + addLeftYen(idxTemp);

                        // 索引ファイル変換のために、中間ファイルを作成
                        rt = RunExe(convTool, srcTblFile + " " + srcDataFile + " " + dstTblFile + " " + tempFile, true);

                        // CFMファイル作成
                        string folder = Path.GetDirectoryName(dstDataFile);
                        string cfmFileName = delRightYen(Program.INI.iniDestDataPath) + addLeftYen(Path.GetFileNameWithoutExtension(dstDataFile) + MyConst.CFM_EXT);

                        createCFM(cfmFileName, addLeftYen(cName) + outFile + "\n" + addLeftYen(cName) + idxTemp);
                        System.Threading.Thread.Sleep(200);
                        // CFM登録
                        // 前回登録ファイルを削除
                        RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName);

                        System.Threading.Thread.Sleep(200);

                        // マッピングファイル登録
                        RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptAdd + " " + cfmFileName);

                        // Indexファイルへ変換
                        string toolName = delRightYen(Program.INI.iniIndexChangePath) + addLeftYen(MyConst.IDX_CONV_TOOL_PRE) +
                            Path.GetFileNameWithoutExtension(dstDataFile) + ".exe";

                        rt = RunExe(toolName, checkMsg:true);
                        System.Threading.Thread.Sleep(500);

                        RunExe(Program.INI.iniPreRegExe, Program.INI.iniPreRegOptDel + " " + cfmFileName);
                        File.Delete(cfmFileName);
                    }
                    else
                    {
                        rt = RunExe(convTool, srcTblFile + " " + srcDataFile + " " + dstTblFile + " " + dstDataFile, true);
                    }

                }

                WorkBook.Close();
                //エクセルを閉じる
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MyLog.WriteLog(ex.Message, MyConst.RET_V.ERROR);
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
        }


        /// <summary>
        /// 現行実行の出力と新規の出力ファイルを解析してエクセルに出力する。
        /// </summary>
        /// <param name="ExcelApp">エクセルAPP</param>
        /// <param name="caseName">テストケース名</param>
        /// <param name="outFile">現行実行出力されたファイル</param>
        /// <param name="tplFile">解析用テンプレートファイル</param>
        /// <param name="compFile">比較用新規出力されたファイル</param>
        /// <param name="resultFile">出力されたエクセルファイル</param>
        /// <returns>0:一致、1:不一致、2:エラー</returns>
        public static RtnCode exCompExcel(Microsoft.Office.Interop.Excel.Application ExcelApp, String caseName,
            String outFile, String tplFile, String compFile, String resultFile)
        {
            String startCell = MyConst.tplStartCol + "1";

            Workbook WorkBook1 = null;
            Workbook WorkBook2 = null;

            string[] outFileA = outFile.Replace("\r\n", "\n").Split('\n');
            string[] tplFileA = tplFile.Replace("\r\n", "\n").Split('\n');
            string[] comFileA = compFile.Replace("\r\n", "\n").Split('\n');

            RtnCode rt = new RtnCode();

            //            if (outFileA.Length != tplFileA.Length || outFileA.Length != comFileA.Length)
            //            {
            //                // 三つのファイル数が不一致の場合
            //                rt.Code = 2;
            //                rt.Message = "出力ファイル、解析テンプレートファイル、比較対象ファイルの数が不一致。";
            //                WriteTraceLog("[" + caseName + "]の出力ファイル、解析テンプレートファイル、比較対象ファイルの数が不一致。");
            //                return rt;
            //            }

            if (outFileA.Length == 0)
            {
                // 出力ファイルが設定なしの場合
                rt.Code = 2;
                rt.Message = "出力ファイルが設定していません。";
                MyLog.WriteInfo("[" + caseName + "]の出力ファイルが設定していません。", MyConst.RET_V.ERROR);
                return rt;
            }

            if (tplFileA.Length == 0)
            {
                // 解析テンプレートファイルが設定なしの場合
                rt.Code = 2;
                rt.Message = "解析テンプレートファイルが設定していません。";
                MyLog.WriteInfo("[" + caseName + "]の解析テンプレートファイルが設定していません。", MyConst.RET_V.ERROR);
                return rt;
            }

            if (comFileA.Length == 0)
            {
                // 比較対象ファイルが設定なしの場合
                rt.Code = 2;
                rt.Message = "比較対象ファイルが設定していません。";
                MyLog.WriteInfo("[" + caseName + "]の比較対象ファイルが設定していません。", MyConst.RET_V.ERROR);
                return rt;
            }

            int minLen = Math.Min(outFileA.Length, comFileA.Length);

            // TPLファイルが少ない方より少ない場合
            if (tplFileA.Length < minLen)
            {
                // TPLファイルが少ない方より少ない場合
                rt.Code = 2;
                rt.Message = "解析テンプレートファイルが足りないので、ご確認ください。";
                MyLog.WriteInfo("[" + caseName + "]の解析テンプレートファイルが足りないので、ご確認ください。", MyConst.RET_V.ERROR);
                return rt;
            }

            string retMsg = "";
            // 結果出力ファイル
            WorkBook2 = ExcelApp.Workbooks.Add();
            WorkBook2.Sheets[1].Delete();
            WorkBook2.Sheets[2].Delete();

            for (int idx = 0; idx < minLen; idx++)
            {
                string of = MyConst.workPath + addLeftYen(caseName) + addLeftYen(outFileA[idx]);
                string df = MyConst.workPath + addLeftYen(caseName) + addLeftYen(tplFileA[idx]);
                string cf = MyConst.workPath + addLeftYen(caseName) + addLeftYen(comFileA[idx]);

                if (!File.Exists(of))
                {
                    retMsg = (retMsg.Length == 0 ? "" : "\n") + "出力ファイルが存在しません<" + of + ">";
                    MyLog.WriteInfo("[" + caseName + "]の出力ファイルが存在しません<" + of + ">", MyConst.RET_V.ERROR);
                    continue;
                }

                if (!File.Exists(df))
                {
                    retMsg = (retMsg.Length == 0 ? "" : "\n") + "解析テンプレートファイルが存在しません<" + df + ">";
                    MyLog.WriteInfo("[" + caseName + "]の解析テンプレートファイルが存在しません<" + df + ">", MyConst.RET_V.ERROR);
                    continue;
                }

                if (!File.Exists(cf))
                {
                    retMsg = (retMsg.Length == 0 ? "" : "\n") + "比較対象ファイルが存在しません<" + cf + ">";
                    MyLog.WriteInfo("[" + caseName + "]の比較対象ファイルが存在しません<" + cf + ">", MyConst.RET_V.ERROR);
                    continue;
                }

                // 解析テンプレートファイルを開く
                WorkBook1 = ExcelApp.Workbooks.Open(df);

                Worksheet sheet1 = WorkBook1.Sheets[1];

                //開始セルから見たら下への連続データ数
                int row_count = sheet1.get_Range(startCell).End[XlDirection.xlDown].Row;

                List<ParseTplFile> parseTpl = new List<ParseTplFile>();

                for (int row = MyConst.tplStartRow; row <= row_count; row++)
                {
                    parseTpl.Add(new ParseTplFile()
                    {
                        ItemName = sheet1.Cells[row, 2].Text,
                        ItemType = sheet1.Cells[row, 3].Text,
                        ItemLen = sheet1.Cells[row, 4].Text,
                        ItemCom = sheet1.Cells[row, 5].Text,
                        CblName = sheet1.Cells[row, 7].Text
                    });
                }

                WorkBook1.Close(0);

                // 結果シートに出力
                Worksheet sheet2 = null;
                if (idx + 1 > WorkBook2.Sheets.Count)
                {
                    sheet2 = WorkBook2.Sheets.Add(After: WorkBook2.Sheets[WorkBook2.Sheets.Count]);
                }
                else
                {
                    sheet2 = WorkBook2.Sheets[idx + 1];
                }

                // Excelへ書き込み
                outExcel(sheet2, of, parseTpl, cf);

            }

            string notExistFile = "";

            if (outFileA.Length > minLen)
            {
                // 出力ファイルが多い場合
                notExistFile = "下記の出力ファイルが存在するが、比較対象ファイルが存在しません:";
                for (int i = minLen; i < outFileA.Length; i++)
                {
                    notExistFile = notExistFile + "\n\t" + outFileA[i];
                }
            }
            else if (comFileA.Length > minLen)
            {
                // 比較対象ファイルが多い場合
                notExistFile = "下記の比較対象ファイルが存在するが、出力ファイルが存在しません:";
                for (int i = minLen; i < comFileA.Length; i++)
                {
                    notExistFile = notExistFile + "\n\t" + comFileA[i];
                }
            }

            // 差分の結果情報シートを作成する。
            CompResult cmpRet = outSummaryExecl(WorkBook2, notExistFile);

            // 差分あるシートの色を赤にする
            diffSheetColor(WorkBook2);

            // 比較結果ファイル保存
            ExcelApp.DisplayAlerts = false;
            WorkBook2.SaveAs(resultFile);
            ExcelApp.DisplayAlerts = true;
            // 比較結果ファイル閉じる
            WorkBook2.Close();

            if(retMsg.Length != 0)
            {
                // エラーあり
                rt.Code = 2;
            }
            else if(cmpRet.DiffColumnCount != 0)
            {
                // 不一致
                rt.Code = 1;
            }
            else
            {
                // 一致
                rt.Code = 0;
            }
            
            rt.Message = retMsg;

            return rt;

        }

        /// <summary>
        /// COBOLをローカルにコピーして、コンパイルする。
        /// </summary>
        /// <param name="progList">対象のプログラムリスト</param>
        public static void copyCompileCob(List<String> progList, List<String> cpyItemList = null, bool noLog = false)
        {
            String excelFileName = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.PRE_RUN_FILE;
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            bool findProg = false;

            try
            {
                // ローカルフォルダ作成
                if (!Directory.Exists(MyConst.prePath))
                {
                    Directory.CreateDirectory(MyConst.prePath);
                }

                if (!Directory.Exists(MyConst.prePath + addLeftYen(MyConst.srcFolder)))
                {
                    Directory.CreateDirectory(MyConst.prePath + addLeftYen(MyConst.srcFolder));
                }

                if (!Directory.Exists(MyConst.prePath + addLeftYen(MyConst.libFolder)))
                {
                    Directory.CreateDirectory(MyConst.prePath + addLeftYen(MyConst.libFolder));
                }

                if (!Directory.Exists(MyConst.prePath + addLeftYen(MyConst.lstFolder)))
                {
                    Directory.CreateDirectory(MyConst.prePath + addLeftYen(MyConst.lstFolder));
                }

                if (!Directory.Exists(MyConst.prePath + addLeftYen(MyConst.tmpFolder)))
                {
                    Directory.CreateDirectory(MyConst.prePath + addLeftYen(MyConst.tmpFolder));
                }

                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                //エクセルファイルのオープンと
                //ワークブックをの作成
                Workbook WorkBook = ExcelApp.Workbooks.Open(excelFileName);
                Worksheet sheet = WorkBook.Sheets[1];
                sheet.Select();

                int row_count = sheet.get_Range("A1").End[XlDirection.xlDown].Row;

                if (!noLog) MyLog.WriteInfo("デバッグが開始しました。");

                for (int row = 2; row <= row_count; row++)
                {
                    foreach (string prog in progList)
                    {
                        object value = ((Range)sheet.Cells[row, 1]).Value2;

                        if (Convert.ToString(value).ToUpper() == prog.ToUpper())
                        {
                            // 対象ファイルが見つかった
                            string progFile = Convert.ToString(((Range)sheet.Cells[row, 2]).Value2);
                            string subCobFiles = Convert.ToString(((Range)sheet.Cells[row, 3]).Value2);

                            if (progFile == null) progFile = "";
                            if (subCobFiles == null) subCobFiles = "";

                            findProg = true;

                            // 子プログラムがあればコピー
                            foreach (string file1 in subCobFiles.Split('\n'))
                            {
                                if (!System.IO.File.Exists(Program.INI.iniCobolSrcPath + addLeftYen(file1)))
                                {
                                    continue;
                                }
                                // ファイルをローカルへコピー
                                if (Program.INI.iniAddDebugInfo == "FALSE")
                                {
                                    System.IO.File.Copy(Program.INI.iniCobolSrcPath + addLeftYen(file1),
                                        MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(file1), true);
                                }
                                else
                                {
                                    if (cpyItemList.Count == 0)
                                    {
                                        RunExe("cobAddDisplay.exe", Program.INI.iniCobolSrcPath + addLeftYen(file1)
                                            + " " + MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(file1), noLog:noLog);
                                    }
                                    else
                                    {
                                        string items = "";
                                        foreach (string item in cpyItemList)
                                        {
                                            items = items.Length == 0 ? item : items + " " + item;
                                        }
                                        RunExe("cobAddDisplay.exe", Program.INI.iniCobolSrcPath + addLeftYen(file1)
                                            + " " + MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(file1) + " " + items, noLog: noLog);
                                    }
                                }

                                //                                // コンパイル
                                //                                rtnCode rt1 = compileCobol(file1);
                                //                                if (rt1.Code != 0)
                                //                                {
                                //                                    if (MessageBox.Show(rt1.Message + "\n処理終了したい場合「キャンセル」を選択してください。", "エラー", MessageBoxButtons.OKCancel)
                                //                                        == System.Windows.Forms.DialogResult.Cancel)
                                //                                    {
                                //                                        infoBoxAddMsg("デバッグがキャンセルされました。");
                                //                                        goto ExitLoop;
                                //                                    }
                                //                                }

                            }

                            // プログラムコピー
                            if (!System.IO.File.Exists(Program.INI.iniCobolSrcPath + addLeftYen(progFile)))
                            {
                                MessageBox.Show("ファイル[" + Path.GetFileNameWithoutExtension(prog) + ".cob" +
                                    "]が存在していませんので、ご確認ください");
                                continue;
                            }

                            // ファイルをローカルへコピー
                            if (Program.INI.iniAddDebugInfo == "FALSE")
                            {
                                System.IO.File.Copy(Program.INI.iniCobolSrcPath + addLeftYen(progFile),
                                    MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(progFile), true);
                            }
                            else
                            {
                                if (cpyItemList == null || cpyItemList.Count == 0)
                                {
                                    RunExe("cobAddDisplay.exe", Program.INI.iniCobolSrcPath + addLeftYen(progFile)
                                        + " " + MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(progFile), noLog: noLog);
                                }
                                else
                                {
                                    string items = "";
                                    foreach (string item in cpyItemList)
                                    {
                                        items = items.Length == 0 ? item : items + " " + item;
                                    }
                                    RunExe("cobAddDisplay.exe", Program.INI.iniCobolSrcPath + addLeftYen(progFile)
                                        + " " + MyConst.prePath + addLeftYen(MyConst.srcFolder) + addLeftYen(progFile) + " " + items, noLog: noLog);
                                }
                            }

                            // プログラムのコンパイル
                            //                            rtnCode rt2 = compileCobol(progFile, true);
                            RtnCode rt2 = compileCobolStatic(progFile + " " + subCobFiles.Replace("\n", " "), noLog:noLog);
                            if (rt2.Code != 0)
                            {
                                if (!noLog) MyLog.WriteInfo("[" + progFile + "]" + rt2.Message);

                                if (MessageBox.Show(rt2.Message + "\n処理終了したい場合「キャンセル」を選択してください。",
                                    "エラー", MessageBoxButtons.OKCancel)
                                    == System.Windows.Forms.DialogResult.Cancel)
                                {
                                    if (!noLog) MyLog.WriteInfo("デバッグがキャンセルされました。", MyConst.RET_V.WARN);
                                    goto ExitLoop;
                                }
                            }
                        }
                    }
                }

                if (!findProg) MessageBox.Show("コンパイル対象ファイルの定義が見つかりません。");

                if (!noLog) MyLog.WriteInfo("デバッグが終了しました。");

            ExitLoop:

                //ワークブックを閉じる
                WorkBook.Close();
                //エクセルを閉じる
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception e)
            {
                MessageBox.Show("デバッグ用Excelファイルの読み取りにエラーが発生しました。" + e.Message);
                if (!noLog) MyLog.WriteLog(e.Message, MyConst.RET_V.ERROR);
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
        }

        /// <summary>
        /// COBOLをコンパイル(一括)
        /// </summary>
        /// <param name="fileName">コンパイルファイル名</param>
        /// <returns>コンパイル結果</returns>
        public static RtnCode compileCobolStatic(string fileName, bool noLog = false)
        {
            string cblexe = MyConst.COBOL_COMPILE_EXE;
            string param = MyConst.S_COMPILE_CMD;

            RtnCode rt = new RtnCode();

            if (Program.INI.iniCopyFilePath.Contains(" ") || MyConst.prePath.Contains(" "))
            {
                rt.Code = -1;
                rt.Message = "ご指定されたパスにスペースが含まれますので、ご確認ください。";
                return rt;
            }

            param = param.Replace(MyConst.COPYPATH_REP, Program.INI.iniCopyFilePath);
            param = param.Replace(MyConst.EXEPATH_REP, MyConst.prePath + addLeftYen(MyConst.libFolder) + "\\");

            param = param.Replace(MyConst.PROGRAM_FILES_REP, fileName);

            return RunExe(cblexe, param, runPath: MyConst.prePath + addLeftYen(MyConst.srcFolder), noLog:noLog);
        }

        /// <summary>
        /// COBOLをコンパイル(個別)
        /// </summary>
        /// <param name="fileName">コンパイルファイル名</param>
        /// <param name="bMain">主処理フラグ</param>
        /// <returns>コンパイル結果</returns>
        public static RtnCode compileCobolDynamic(string fileName, bool bMain = false)
        {
            string cblexe = MyConst.COBOL_COMPILE_EXE;
            string param = bMain ? MyConst.D_MAIN_COMPILE_CMD : MyConst.D_SUB_COMPILE_CMD;

            RtnCode rt = new RtnCode();

            if (Program.INI.iniCopyFilePath.Contains(" ") || MyConst.prePath.Contains(" "))
            {
                rt.Code = -1;
                rt.Message = "ご指定されたパスにスペースが含まれますので、ご確認ください。";
                return rt;
            }

            param = param.Replace(MyConst.COPYPATH_REP, Program.INI.iniCopyFilePath);
            param = param.Replace(MyConst.EXEPATH_REP, MyConst.prePath + addLeftYen(MyConst.libFolder) + "\\");
            param = param.Replace(MyConst.OBJPATH_REP, MyConst.prePath + addLeftYen(MyConst.libFolder) + "\\");
            param = param.Replace(MyConst.LISTPATH_REP, MyConst.prePath + addLeftYen(MyConst.lstFolder) + "\\");
            param = param.Replace(MyConst.TMPPATH_REP, MyConst.prePath + addLeftYen(MyConst.tmpFolder) + "\\");
            param = param.Replace(MyConst.LIBFILES_REP, MyConst.prePath + addLeftYen(MyConst.libFolder) + addLeftYen("*.lib"));
            param = param.Replace(MyConst.PROGRAMID_REP, MyConst.prePath + addLeftYen(MyConst.srcFolder) +
                addLeftYen(Path.GetFileNameWithoutExtension(fileName)));

            return RunExe(cblexe, param);
        }

        /// <summary>
        /// 定義エクセルファイルを読み取り
        /// </summary>
        public static void readWorkData()
        {
            String excelFileName = System.AppDomain.CurrentDomain.BaseDirectory + MyConst.SET_MAIN_FILE;
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                //エクセルファイルのオープンと
                //ワークブックをの作成
                Workbook WorkBook = ExcelApp.Workbooks.Open(excelFileName);

                Worksheet sheet = WorkBook.Sheets[1];
                sheet.Select();

                Program.workData1.Clear();

                //A1セルから見たら下への連続データ数
                int row_count = sheet.get_Range("A1").End[XlDirection.xlDown].Row;

                //A1セルから見たら右への連続データ数
                int col_count = sheet.get_Range("A1").End[XlDirection.xlToRight].Column;

                for (int row = 2; row <= row_count; row++)
                {
                    WorkData wd = new WorkData();

                    wd.Check = false;
                    wd.CaseName = ((Range)sheet.Cells[row, 1]).Value2;
                    wd.CaseExe = ((Range)sheet.Cells[row, 2]).Value2;
                    wd.InParm = ((Range)sheet.Cells[row, 3]).Value2;
                    wd.OutParm = ((Range)sheet.Cells[row, 4]).Value2;
                    wd.CompFile = ((Range)sheet.Cells[row, 5]).Value2;
                    wd.TempFile = ((Range)sheet.Cells[row, 6]).Value2;

                    Program.workData1.Add(wd);

                    //for (int col = 1; col <= col_count; col++)
                    //{
                    //    Console.WriteLine(((Range)sheet.Cells[row, col]).Value2);
                    //}
                }
                //Range range = sheet.get_Range("A1");
                //if (range != null)
                //{
                //    Console.WriteLine(range.Value);
                //}

                //ワークブックを閉じる
                WorkBook.Close();
                //エクセルを閉じる
                ExcelApp.Quit();
            }
            catch (Exception e)
            {
                MessageBox.Show("設定Excelファイルの読み取りにエラーが発生しました。" + e.Message);
                MyLog.WriteLog(e.Message, MyConst.RET_V.ERROR);

                //                throw new Exception(e.Message, e);
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

        }

        /// <summary>
        /// 
        /// </summary>
        public static void readManagerList()
        {
            String excelFileName = System.AppDomain.CurrentDomain.BaseDirectory + Program.INI.iniMangerListName;
            Microsoft.Office.Interop.Excel.Application ExcelApp = null;
            try
            {
                // WorkDataが存在しない場合、読み取りしない
                if (Program.workData1.Count <= 0) return;

                // 対象ファイルが存在しない場合、読み取りしない
                if (!File.Exists(excelFileName)) return;

                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                //エクセルファイルのオープンと
                //ワークブックをの作成
                Workbook WorkBook = ExcelApp.Workbooks.Open(excelFileName);
                Worksheet sheet = WorkBook.Sheets[1];
                int row_count = sheet.get_Range("A1").End[XlDirection.xlDown].Row;
                String[,] excelData = new String[row_count-1,4];

                for (int row = 2; row <= row_count; row++)
                {
                    excelData[row - 2, 0] = ((Range)sheet.Cells[row, 2]).MergeArea.Cells[1, 1].value2;
                    excelData[row - 2, 1] = ((Range)sheet.Cells[row, 3]).MergeArea.Cells[1, 1].value2;
                    excelData[row - 2, 2] = ((Range)sheet.Cells[row, 4]).MergeArea.Cells[1, 1].value2;
                    excelData[row - 2, 3] = ((Range)sheet.Cells[row, 5]).MergeArea.Cells[1, 1].value2;
                }

                //ワークブックを閉じる
                WorkBook.Close();
                //エクセルを閉じる
                ExcelApp.Quit();

                foreach(WorkData wd in Program.workData1)
                {
                    String nm = Path.GetFileNameWithoutExtension(wd.CaseExe);

                    for(int i = 0;i < row_count-1; i++)
                    {
                        String caseId = excelData[i, 0];
                        if(nm.Contains(caseId))
                        {
                            wd.FuncName = excelData[i, 1];
                            wd.NewSrcName = excelData[i, 2];
                            wd.SupplierName = excelData[i, 3];
                        }
                    }
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("現新比較ソース一覧ファイルの読み取りにエラーが発生しました。" + e.Message);
                MyLog.WriteLog(e.Message, MyConst.RET_V.ERROR);

                //                throw new Exception(e.Message, e);
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
        }

        /// <summary>
        /// エクセルの内容をリストビューに表示する
        /// </summary>
        public static void addListView(List<WorkData> lwd1, myListView lv1)
        {
            lv1.CheckBoxes = true;
            lv1.OwnerDraw = true;

            //lv1.Clear();
            lv1.Items.Clear();

            lv1.Sorting = SortOrder.None;
            lv1.ListViewItemSorter = null;

            //lv1.addCaseColumn();
            //lv1.addStatusColumn();

            //lv1.addFuncNameColumn();
            //lv1.addNewSrcFileColumn();
            //lv1.addSupplierNameColumn();

            //lv1.addProgressBarColumn();
            

            foreach (WorkData wd in lwd1)
            {
                ListViewItem item1 = new ListViewItem(wd.CaseName, 0);
                item1.Name = wd.CaseName;
                item1.Checked = false;

                item1.SubItems.Add(wd.FuncName);
                item1.SubItems.Add(wd.NewSrcName);
                item1.SubItems.Add(wd.SupplierName);

                item1.SubItems.Add("0");

                lv1.Items.Add(item1);

                //lv1.addProgressBar(34, lv1.Items.Count - 1);
            }

        }

        /// <summary>
        /// コントロール(子コントロールも含む)の描画を停止します。
        /// </summary>
        /// <param name="control">対象コントロール</param>
        public static void BeginUpdate(Control control)
        {
            User32Dll.SendMessage(control.Handle, (int)User32Dll.Msgs.WM_SETREDRAW, 0, 0);
        }
        
        public static void BeginUpdate(Ribbon control)
        {
            User32Dll.SendMessage(control.Handle, (int)User32Dll.Msgs.WM_SETREDRAW, 0, 0);
        }

        /// <summary>
        /// コントロール(子コントロールも含む)の描画を開始します。
        /// </summary>
        /// <param name="control">対象コントロール</param>
        public static void EndUpdate(Control control)
        {
            User32Dll.SendMessage(control.Handle, (int)User32Dll.Msgs.WM_SETREDRAW, 1, 0);
            control.Refresh();
        }

        public static void EndUpdate(Ribbon control)
        {
            User32Dll.SendMessage(control.Handle, (int)User32Dll.Msgs.WM_SETREDRAW, 1, 0);
            control.Refresh();
        }
//        public static void aa(this formMain fm)
//        {
//            addMsg aa = new addMsg(fm.infoBoxAddMsg);
//            aa("tt");
//
//            //Invoke(new addMsg(formMain.infoBoxAddMsg("TT")));
//        }
//
//        private delegate void addMsg(string msg, MyConst.RET_V level = MyConst.RET_V.INFO);



    }

}
