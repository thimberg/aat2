using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.IO;

namespace createCFM
{
    class Program
    {

        static void Main(string[] args)
        {
           Microsoft.Office.Interop.Excel.Application ExcelApp = null;

            try
            {
                ExcelApp = new Microsoft.Office.Interop.Excel.Application();
                ExcelApp.Visible = false;

                Microsoft.Office.Interop.Excel.Workbook wb1 = null;
                wb1 = ExcelApp.Workbooks.Open(args[0], ReadOnly: true);
                Microsoft.Office.Interop.Excel.Worksheet sheet1 = wb1.Sheets[1];

                string aa = sheet1.Cells[2, 3].Text;
                string bb = sheet1.Cells[2, 4].Text;

                string cc = aa + "\n" + bb;

                Dictionary<string,cfmItem> dict1 = new Dictionary<string,cfmItem>();

                //List<cfmItem> item1 = new List<cfmItem>();

                foreach(string file in cc.Split('\n'))
                {
                    string sec = Path.GetFileNameWithoutExtension(file);
                    string ext = Path.GetExtension(file);

                    if(!dict1.ContainsKey(sec) && ext.ToUpper() == "")
                    {
                        dict1.Add(sec, new cfmItem(sec, file, ""));
                    }
                }

                //エクセルを閉じる
                ExcelApp.Quit();
                System.Runtime.InteropServices.Marshal.ReleaseComObject(ExcelApp);
                ExcelApp = null;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
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
    }

    public class cfmItem
    {
        public String Section {get; set;}
        public String FileName { get; set; }
        public String IndexFlg { get; set; }

        public cfmItem(string section, string fileName, string indexFlg = "")
        {
            this.Section = section;
            this.FileName = fileName;
            this.IndexFlg = indexFlg;
        }
    }
    
}
