using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace aat
{
    public class WorkData
    {
        //        private bool check;
        /// テストケースの名前（設定ファイルより）
        //        private String caseName;
        /// テストケース実行ファイル（設定ファイルより）
        //        private String caseExe;
        /// テストケース実行の入力ファイル（設定ファイルより）
        //        private String inParm;
        /// テストケース実行の出力ファイル（設定ファイルより）
        //        private String outParm;
        /// 比較対象ファイル（設定ファイルより）
        //        private String compFile;
        /// 解析用定義ファイル（設定ファイルより）
        //        private String tempFile;
        /// 実行後の出力ファイル（Workの下）
        //        private String outDataFile;
        /// 比較結果格納ファイル（Compの下）
        //        private String outExcelFile;
        /// テストケース実行結果
        //        private rtnCode result;      

        public bool Check
        {
            get;// { return check; }
            set;// { check = value; }
        }

        /// <summary>
        /// テストケース名称
        /// </summary>
        public String CaseName
        {
            get;// { return caseName; }
            set;// { caseName = value; }
        }

        /// <summary>
        /// テストケースの実行ファイル名
        /// </summary>
        public String CaseExe
        {
            get;// { return caseExe; }
            set;// { caseExe = value; }
        }

        /// <summary>
        /// 現行入力ファイル
        /// </summary>
        public String InParm
        {
            get;// { return inParm; }
            set;// { inParm = value; }
        }

        /// <summary>
        /// 現行出力ファイル
        /// </summary>
        public String OutParm
        {
            get;// { return outParm; }
            set;// { outParm = value; }
        }

        /// <summary>
        /// 現行実行後、出力されたファイル
        /// </summary>
        public String OutDataFile
        {
            get;// { return outDataFile; }
            set;// { outDataFile = value; }
        }

        /// <summary>
        /// 比較結果ファイル
        /// </summary>
        public String OutExcelFile
        {
            get;// { return outExcelFile; }
            set;// { outExcelFile = value; }
        }

        /// <summary>
        /// 比較用データファイル（新規の出力）
        /// </summary>
        public String CompFile
        {
            get;// { return compFile; }
            set;// { compFile = value; }
        }

        /// <summary>
        /// 実行結果
        /// </summary>
        public RtnCode Result
        {
            get;// { return result; }
            set;// { result = value; }
        }

        /// <summary>
        /// 解析テンプレートファイル
        /// </summary>
        public String TempFile
        {
            get;// { return tempFile; }
            set;// { tempFile = value; }
        }

        /// <summary>
        /// 機能名
        /// </summary>
        public String FuncName
        {
            get;
            set;
        }

        /// <summary>
        /// 新規システム対象ソース名
        /// </summary>
        public String NewSrcName
        {
            get;
            set;
        }

        /// <summary>
        /// 担当者
        /// </summary>
        public String SupplierName
        {
            get;
            set;
        }
    }
}
