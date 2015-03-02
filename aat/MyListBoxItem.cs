using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace aat
{
    public class MyListBoxItem
    {
        public MyListBoxItem(string m)
        {
            ItemColor = Color.Black;
            Message = m;
        }

        public MyListBoxItem(string m, Color c)
        {
            ItemColor = c;
            Message = m;
        }
        public Color ItemColor { get; set; }
        public string Message { get; set; }
    }
}
