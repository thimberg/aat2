using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WpfTest1
{
    public partial class testForm3 : Form
    {
        public testForm3()
        {
            InitializeComponent();
        }

        private void testForm3_Load(object sender, EventArgs e)
        {
            //表示する文字列
            string s = "DOBOETWW";

            //描画先とするImageオブジェクトを作成する
            Bitmap canvas = new Bitmap(PictureBox1.Width, PictureBox1.Height);
            //ImageオブジェクトのGraphicsオブジェクトを作成する
            Graphics g = Graphics.FromImage(canvas);
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            g.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;

            //フォントオブジェクトの作成
            Font fnt = new Font("Arial", 25, FontStyle.Italic);
            //StringFormatオブジェクトの作成
            StringFormat sf = new StringFormat();

            //幅の最大値が1000ピクセルとして、文字列を描画するときの大きさを計測する
            SizeF stringSize = g.MeasureString(s, fnt, 1000, sf);
            SizeF aa = g.MeasureString(s, fnt);
            //取得した文字列の大きさを使って四角を描画する
            g.DrawRectangle(Pens.Red, 0, 0, stringSize.Width, stringSize.Height);

            //より正確に大きさを計測する
            Rectangle rect = MeasureStringPrecisely(g, s, fnt, canvas.Size, sf);
            g.DrawRectangle(Pens.Blue, rect.Left, rect.Top, rect.Width, rect.Height);

            //文字列を描画する
            g.DrawString(s, fnt, Brushes.Black, 0, 0, sf);

            //リソースを解放する
            fnt.Dispose();
            sf.Dispose();
            g.Dispose();

            //PictureBox1に表示する
            PictureBox1.Image = canvas;
        }

        /// <summary>
        /// Graphics.DrawStringで文字列を描画した時の大きさと位置を正確に計測する
        /// </summary>
        /// <param name="g">文字列を描画するGraphics</param>
        /// <param name="text">描画する文字列</param>
        /// <param name="font">描画に使用するフォント</param>
        /// <param name="proposedSize">これ以上大きいことはないというサイズ。
        /// できるだけ小さくすること。</param>
        /// <param name="stringFormat">描画に使用するStringFormat</param>
        /// <returns>文字列が描画される範囲。
        /// 見つからなかった時は、Rectangle.Empty。</returns>
        public static Rectangle MeasureStringPrecisely(Graphics g,
            string text, Font font, Size proposedSize, StringFormat stringFormat)
        {
            //解像度を引き継いで、Bitmapを作成する
            Bitmap bmp = new Bitmap(proposedSize.Width, proposedSize.Height, g);
            //BitmapのGraphicsを作成する
            Graphics bmpGraphics = Graphics.FromImage(bmp);
            //Graphicsのプロパティを引き継ぐ
            bmpGraphics.TextRenderingHint = g.TextRenderingHint;
            bmpGraphics.TextContrast = g.TextContrast;
            bmpGraphics.PixelOffsetMode = g.PixelOffsetMode;
            //文字列の描かれていない部分の色を取得する
            Color backColor = bmp.GetPixel(0, 0);
            //実際にBitmapに文字列を描画する
            bmpGraphics.DrawString(text, font, Brushes.Black,
                new RectangleF(0f, 0f, proposedSize.Width, proposedSize.Height),
                stringFormat);
            bmpGraphics.Dispose();
            //文字列が描画されている範囲を計測する
            Rectangle resultRect = MeasureForegroundArea(bmp, backColor);
            bmp.Dispose();

            return resultRect;
        }

        /// <summary>
        /// 指定されたBitmapで、backColor以外の色が使われている範囲を計測する
        /// </summary>
        private static Rectangle MeasureForegroundArea(Bitmap bmp, Color backColor)
        {
            int backColorArgb = backColor.ToArgb();
            int maxWidth = bmp.Width;
            int maxHeight = bmp.Height;

            //左側の空白部分を計測する
            int leftPosition = -1;
            for (int x = 0; x < maxWidth; x++)
            {
                for (int y = 0; y < maxHeight; y++)
                {
                    //違う色を見つけたときは、位置を決定する
                    if (bmp.GetPixel(x, y).ToArgb() != backColorArgb)
                    {
                        leftPosition = x;
                        break;
                    }
                }
                if (0 <= leftPosition)
                {
                    break;
                }
            }
            //違う色が見つからなかった時
            if (leftPosition < 0)
            {
                return Rectangle.Empty;
            }

            //右側の空白部分を計測する
            int rightPosition = -1;
            for (int x = maxWidth - 1; leftPosition < x; x--)
            {
                for (int y = 0; y < maxHeight; y++)
                {
                    if (bmp.GetPixel(x, y).ToArgb() != backColorArgb)
                    {
                        rightPosition = x;
                        break;
                    }
                }
                if (0 <= rightPosition)
                {
                    break;
                }
            }
            if (rightPosition < 0)
            {
                rightPosition = leftPosition;
            }

            //上の空白部分を計測する
            int topPosition = -1;
            for (int y = 0; y < maxHeight; y++)
            {
                for (int x = leftPosition; x <= rightPosition; x++)
                {
                    if (bmp.GetPixel(x, y).ToArgb() != backColorArgb)
                    {
                        topPosition = y;
                        break;
                    }
                }
                if (0 <= topPosition)
                {
                    break;
                }
            }
            if (topPosition < 0)
            {
                return Rectangle.Empty;
            }

            //下の空白部分を計測する
            int bottomPosition = -1;
            for (int y = maxHeight - 1; topPosition < y; y--)
            {
                for (int x = leftPosition; x <= rightPosition; x++)
                {
                    if (bmp.GetPixel(x, y).ToArgb() != backColorArgb)
                    {
                        bottomPosition = y;
                        break;
                    }
                }
                if (0 <= bottomPosition)
                {
                    break;
                }
            }
            if (bottomPosition < 0)
            {
                bottomPosition = topPosition;
            }

            //結果を返す
            return new Rectangle(leftPosition, topPosition,
                rightPosition - leftPosition, bottomPosition - topPosition);
        }

        private static Rectangle MeasureForegroundArea(Bitmap bmp)
        {
            return MeasureForegroundArea(bmp, bmp.GetPixel(0, 0));
        }
    }
}
