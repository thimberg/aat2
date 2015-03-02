using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cobAddDisplay
{
    [System.Xml.Serialization.XmlRoot("syntax")]
    public class Syntax
    {
        [System.Xml.Serialization.XmlElement("token")]
        public List<Token> tokens { get; set; }
    }

    public class Token
    {
        [System.Xml.Serialization.XmlAttribute("key")]
        public String Key { get; set; }

        [System.Xml.Serialization.XmlAttribute("type")]
        public String Type { get; set; }

        [System.Xml.Serialization.XmlElement("style")]
        public List<Style> styles { get; set; }

        public String regex { get; set; }
    }

    public class Style
    {
        [System.Xml.Serialization.XmlAttribute("id")]
        public String ID { get; set; }

        [System.Xml.Serialization.XmlElement("proc")]
        public List<Procedure> Procs { get; set; }

        public String regex { get; set; }
    }

    public class Procedure
    {
        [System.Xml.Serialization.XmlAttribute("pos")]
        public String Pos { get; set; }

        [System.Xml.Serialization.XmlAttribute("cmd")]
        public String CMD { get; set; }

    }
}
