using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.IO;
using System.Reflection;
using System.Xml.Serialization;

namespace cobAddDisplay
{
    class CobolStreamReader : StreamReader
    {
        readonly static FieldInfo charPosField = typeof(StreamReader).GetField("charPos", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | BindingFlags.DeclaredOnly);
        readonly static FieldInfo byteLenField = typeof(StreamReader).GetField("byteLen", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | BindingFlags.DeclaredOnly);
        readonly static FieldInfo charBufferField = typeof(StreamReader).GetField("charBuffer", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | BindingFlags.DeclaredOnly);
        private const string DELIMITER = "ZZZカイギョウZZZ";

        private readonly String[] COB_KEYWORD = 
        {              // 文の先頭となる句
          "ACCEPT", "ADD", "ALTER",
          "CALL", "CANCEL", "CLOSE", "COMPUTE", "CONTINUE",
          "DELETE", "DISPLAY", "DIVIDE",
          "END-ADD", "END-CALL", "END-COMPUTE", "END-DELETE", "END-DIVIDE", "END-EVALUATE",
          "END-IF", "END-MULTIPLY", "END-OF-PAGE", "END-PERFORM", "END-READ", "END-RECEIVE",
          "END-RETURN", "END-REWRITE", "END-SEARCH", "END-START", "END-STRING", "END-SUBTRACT",
          "END-UNSTRING", "END-WRITE", "ENTRY", "EVALUATE", "EXIT",
          "GOBACK", "GO",
          "IF", "INITIALIZE", "INSPECT", "INVOKE",
          "MERGE", "MOVE", "MULTIPLY",
          "OPEN",
          "PERFORM",
          "READ", "RELEASE", "RETURN", "REWRITE",
          "SEARCH", "SET", "SORT", "START", "STOP", "STRING", "SUBTRACT",
          "UNSTRING", "WRITE"
        };

        private static Syntax Cobol85Syntax = null;

        private long _position = 0;
        private long _line = 0;

        public CobolStreamReader(Stream s, Encoding e)
            : base(s, e)
        {
            readSyntax();
        }

        public override string ReadLine()
        {
            string data = base.ReadLine();

            if (data != null)
            {
                _line++;
                _position += base.CurrentEncoding.GetBytes(data).Length;
                setPosition(_position);

                char[] rn = new char[2];
                int ch = base.Read(rn, 0, 2);

                if (rn[0] == '\n')
                {
                    _position++;
                }
                else if (rn[0] == '\r')
                {
                    _position++;

                    //int ch2 = base.Read();

                    if (rn[1] == '\n')
                    {
                        _position++;
                    }
                }

                setPosition(_position);

            }
            return data;
        }

        public long getLine()
        {
            return _line;
        }

        public long getPosition()
        {
            return _position;
        }

        public void setPosition(long pos)
        {
            _position = pos;

            base.BaseStream.Seek(pos, SeekOrigin.Begin);
            base.DiscardBufferedData();
        }

        public string Read1Line()
        {
            if (base.Peek() <= -1) return null;

            string rtn = "";
            string line = ReadLine();
            if (line == null) return null;

            rtn = line;

            //while (line != null && line.Substring(6, 1) == "*")
            //{
            //    line = sr.ReadLine();
            //    rtn = rtn + DELIMITER + line;
            //}

            //if (line == null) return null;

            while (!checkEnd(rtn))
            {
                long pos1 = base.BaseStream.Position;
                //long pos = GetPosition(sr);
                long pos = getPosition();

                string l = ReadLine();
                if (l == null)
                {
                    break;
                }

                if (newLine(l))
                {
                    // sr.BaseStream.Position = pos;
                    // SetPosition(sr, pos);
                    setPosition(pos);
                    break;
                }

                rtn = rtn + DELIMITER + l;
                while (l != null && l.Substring(6, 1) == "*")
                {
                    l = ReadLine();
                    rtn = rtn + DELIMITER + l;
                }
                if (l == null)
                {
                    break;
                }

            }

            return rtn;
        }

        private bool newLine(string data)
        {
            if (data == null || data.Length <= 7 || data.Substring(6, 1) == "*") return false;

            string firstWord = "";
            string line = data.Substring(7).Trim();

            int pos = 0;
            while (true)
            {
                if (line.Length <= pos) break;

                string p = line.Substring(pos, 1);
                if (p != " ")
                {
                    firstWord = firstWord + p;
                    pos++;
                }
                else
                {
                    break;
                }
            }

            if (Array.IndexOf(COB_KEYWORD, firstWord) >= 0)
            {
                return true;
            }

            //string ndata = data.Substring(7);

            //foreach(string key in keyword)
            //{
            //    if (ndata.TrimStart().StartsWith(key + " ") ) return true;
            //}

            return false;
        }

        private bool checkEnd(string data)
        {
            if (data == null || data.Length <= 7) return false;

            string data2 = "";

            // コメント判定
            if (!data.Contains(DELIMITER) && data.Length > 7 && data.Substring(6, 1) == "*")
            {
                // 一行だけ　かつ　七文字目が*の場合
                //Console.WriteLine(data.TrimEnd());
                return true;
            }
            else
            {
                foreach (string l in data.Split(new string[] { DELIMITER }, StringSplitOptions.None))
                {
                    if (l.Length > 7 && data.Substring(6, 1) == "*")
                    {

                    }
                    else
                    {
                        data2 = data2 + l.Substring(7);
                    }
                }
            }

            if (data2.Trim().EndsWith("."))
            {
                //Console.WriteLine(data2.TrimEnd());
                return true;
            }

            foreach (Token tk in Cobol85Syntax.tokens)
            {
                foreach (Style s in tk.styles)
                {
                    Regex r = new Regex(s.regex);
                    //if (r.Match(Regex.Replace(data2, DELIMITER + ".{6}", "")).Success)
                    if (r.Match(data2).Success)
                    {
                        //                        Console.WriteLine(data2.TrimEnd());
                        return true;
                    }
                }

            }
            return false;
        }

        private void readSyntax()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Syntax));
            CustomXmlSerializer se = new CustomXmlSerializer(typeof(Syntax));

            //Syntax sy = null;
            //String xmlData = null;

            Assembly thisAssembly = Assembly.GetExecutingAssembly();
            using (Stream resourceStream = thisAssembly.GetManifestResourceStream("cobAddDisplay.Cobol85_Syntax.XML"))
            {
                Cobol85Syntax = (Syntax)serializer.Deserialize(resourceStream);

                foreach (Token tk in Cobol85Syntax.tokens)
                {
                    foreach (Style s in tk.styles)
                    {
                        //string reg = @"(^.{6} ) *(" + tk.Key + ")";
                        string reg = @" *(" + tk.Key + ")";

                        for (int i = 0; i < s.Procs.Count; i++)
                        {
                            // To Do: Posにより、ソート
                            if (s.Procs[i].CMD.ToUpper() == "ANY")
                            {
                                //reg = reg + @" +(\S+)";
                                reg = reg + @" +(.+)";
                            }
                            else if (s.Procs[i].CMD.ToUpper() == "FORMULA")
                            {
                                reg = reg + @" +(" + @"\S+ +(\+|\-|\*|\/) +\S+" + ")";
                            }
                            else
                            {
                                reg = reg + @" +(" + s.Procs[i].CMD + ")";
                            }
                        }
                        s.regex = reg;
                    }

                }
                //                using (StreamReader resourceReader = new StreamReader(resourceStream))
                //                {
                //                    xmlData = resourceReader.ReadToEnd();
                //                }
            }

            //            sy = (Syntax)se.Deserialize(new MemoryStream(Encoding.UTF8.GetBytes(xmlData)));
        }

        private static long GetPosition(StreamReader reader)
        {
            //shift position back from BaseStream.Position by the number of bytes read
            //into internal buffer.
            int byteLen = (int)byteLenField.GetValue(reader);
            long position = reader.BaseStream.Position - byteLen;

            //if we have consumed chars from the buffer we need to calculate how many
            //bytes they represent in the current encoding and add that to the position.
            int charPos = (int)charPosField.GetValue(reader);
            if (charPos > 0)
            {
                char[] charBuffer = (char[])charBufferField.GetValue(reader);
                int bytesConsumed = reader.CurrentEncoding.GetBytes(charBuffer, 0, charPos).Length;
                position += bytesConsumed;
            }

            return position;
        }

        private static void SetPosition(StreamReader reader, long position)
        {
            reader.BaseStream.Seek(position, SeekOrigin.Begin);
            reader.DiscardBufferedData();
        }

    }

    public interface IXmlDeserializationCallback
    {
        void OnXmlDeserialization(object sender);
    }

    public class CustomXmlSerializer : XmlSerializer
    {
        public CustomXmlSerializer(Type type)
            : base(type)
        {
        }

        protected override object Deserialize(XmlSerializationReader reader)
        {
            var result = base.Deserialize(reader);

            var deserializedCallback = result as IXmlDeserializationCallback;
            if (deserializedCallback != null)
            {
                deserializedCallback.OnXmlDeserialization(this);
            }

            return result;
        }
    }
}
