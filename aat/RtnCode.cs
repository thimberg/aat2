using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace aat
{
    public class RtnCode
    {
        public RtnCode()
        {
            Code = 0;
            Message = "";
        }

        public RtnCode(int cd, string msg)
        {
            Code = cd;
            Message = msg;
        }

        public int Code { get; set; }

        public String Message { get; set; }

        public String stdOutput { get; set; }

        public String stdError { get; set; }
    }
}
