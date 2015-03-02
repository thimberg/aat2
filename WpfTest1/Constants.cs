using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfTest1
{
    class ConstT
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
        public const string COMPILE_CMD = "/M /Ccon /Dy /NOWARNING /O1 /I%COPYPATH% /Fe%EXEPATH% %PRGRAMFILES%";
        public const string MAIN_COMPILE_CMD = "/M /Ccon /Dy /NOWARNING /O1 /Hsx /I%COPYPATH% /Fo%OBJPATH% /Fe%EXEPATH% /lf%LISTPATH% /t%TMPPATH% %PRGRAMID%.cob %LIBFILES%";
        public const string SUB_COMPILE_CMD = "/Cx /Ccon /Dy /NOWARNING /O1 /Hsx /I%COPYPATH% /Fo%OBJPATH% /Fe%EXEPATH% /lf%LISTPATH% /t%TMPPATH% %PRGRAMID%.cob %LIBFILES%";
        public const string PROGRAMID = "%PRGRAMID%";
        public const string PROGRAM_FILES = "%PRGRAMFILES%";
        public const string COPYPATH_COMPILE_CMD = "%COPYPATH%";
        public const string OBJPATH_COMPILE_CMD = "%OBJPATH%";
        public const string EXEPATH_COMPILE_CMD = "%EXEPATH%"; 
        public const string LISTPATH_COMPILE_CMD = "%LISTPATH%";
        public const string TMPPATH_COMPILE_CMD = "%TMPPATH%";
        public const string LIBFILES_COMPILE_CMD = "%LIBFILES%";

        //public const string CMP_SAME = "SAME";
        //public const string CMP_SAME = "SAME";
        //public const string CMP_SAME = "SAME";

        public enum RUN_RET { ERROR = -1, SUCCESS = 0 };
        public enum CMP_RET { SAME = 0, DIFF=1, ERROR=2 };

        public enum RET_V { INFO, WARN, ERROR };


    }
}
