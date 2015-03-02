using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace aat
{
    public class MyConst
    {
        public const string RUN_STAT_BEGIN = "10";
        public const string RUN_STAT_END = "100";
        public const string RUN_STAT_ERR = "ERROR1";

        public const string CMP_STAT_BEGIN = "110";
        public const string CMP_STAT_SAME = "SAME";
        public const string CMP_STAT_DIFF = "DIFF";
        public const string CMP_STAT_ERR = "ERROR2";

        public const string DATA_TYPE_9 = "数字";
        public const string DATA_TYPE_X = "英数字";
        public const string DATA_TYPE_N = "日本語";
        public const string DATA_TYPE_CP1 = "COMP-1";
        public const string DATA_TYPE_CP2 = "COMP-2";
        public const string DATA_TYPE_CP3 = "COMP-3";

        public const string SET_MAIN_FILE = "WorkData.xlsx";
        public const string SET_INI_FILE = "setup.ini";
        public const string PRE_RUN_FILE = "PreData.xlsx";
        public const string RESULT_EXCEL_FILE = "Compare.xlsx";
        public const string CFM_EXT = ".cfm";          // CFMファイルの拡張子
        public const string CONV_DATA_SET_FILE = "ConvertData.xlsx";
        public const string CONV_TOOL_NAME = "ConvertData.exe";
        public const string IDX_CONV_TOOL_PRE = "IndexChange_";

        public const string COBOL_COMPILE_EXE = "CBL.EXE";
        public const string S_COMPILE_CMD = "/M /Ccon /Dy /NOWARNING /O1 /I%COPYPATH% /Fe%EXEPATH% %PRGRAMFILES%";
        public const string D_MAIN_COMPILE_CMD = "/M /Ccon /Dy /NOWARNING /O1 /Hsx /I%COPYPATH% /Fo%OBJPATH% /Fe%EXEPATH% /lf%LISTPATH% /t%TMPPATH% %PRGRAMID%.cob %LIBFILES%";
        public const string D_SUB_COMPILE_CMD = "/Cx /Ccon /Dy /NOWARNING /O1 /Hsx /I%COPYPATH% /Fo%OBJPATH% /Fe%EXEPATH% /lf%LISTPATH% /t%TMPPATH% %PRGRAMID%.cob %LIBFILES%";
        public const string PROGRAMID_REP = "%PRGRAMID%";
        public const string PROGRAM_FILES_REP = "%PRGRAMFILES%";
        public const string COPYPATH_REP = "%COPYPATH%";
        public const string OBJPATH_REP = "%OBJPATH%";
        public const string EXEPATH_REP = "%EXEPATH%"; 
        public const string LISTPATH_REP = "%LISTPATH%";
        public const string TMPPATH_REP = "%TMPPATH%";
        public const string LIBFILES_REP = "%LIBFILES%";

        public const string tplStartCol = "A";    // テンプレートファイルの開始列
        public const int tplStartRow = 2;         // テンプレートファイルの開始行

        public const string outStartCol = "A";   // 結果ファイル開始列
        public const int outStartRow = 5;        // 結果ファイルの開始行

        public const String workDir = "Work";
        public static String workPath = System.AppDomain.CurrentDomain.BaseDirectory + workDir;

        public const String compFolder = "Comp";      // 出力結果ファイル

        public const String preDir = "PreWork";
        public static String prePath = System.AppDomain.CurrentDomain.BaseDirectory + preDir;

        public const String srcFolder = "src";
        public const String libFolder = "lib";
        public const String tmpFolder = "tmp";
        public const String lstFolder = "list";

        //public const string CMP_SAME = "SAME";
        //public const string CMP_SAME = "SAME";
        //public const string CMP_SAME = "SAME";

        public enum RUN_RET { ERROR = -1, SUCCESS = 0 };
        public enum CMP_RET { SAME = 0, DIFF=1, ERROR=2 };

        public enum RET_V { INFO, WARN, ERROR };
        public enum DEBUG_LEVEL { DEBUG = 2, WARN = 1, INFO = 0 };

    }
}
