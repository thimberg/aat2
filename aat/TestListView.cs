using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace aat
{
    public partial class TestListView : Form
    {
        private ColumnHeader chCaseName;
        private ColumnHeader chStatus;

        public TestListView()
        {
            InitializeComponent();

            this.CreateMyListView();
            ////ボタンコントロール配列の作成
            //this.testButtons = new System.Windows.Forms.Button[5];

            ////ボタンコントロールの配列にすでに作成されているインスタンスを代入
            //this.testButtons[0] = this.Button1;
            //this.testButtons[1] = this.Button2;
            //this.testButtons[2] = this.Button3;
            //this.testButtons[3] = this.Button4;
            //this.testButtons[4] = this.Button5;

            ////または、次のようにもできる
            ////this.testButtons = new System.Windows.Forms.Button[]
            ////    {this.Button1, this.Button2, this.Button3, this.Button4, this.Button5};

            ////イベントハンドラに関連付け（必要な時のみ）
            //for (int i = 0; i < this.testButtons.Length; i++)
            //    this.testButtons[i].Click +=
            //        new EventHandler(this.testButtons_Click);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(((System.Windows.Forms.Button)sender).Text);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //ファイルを開いて終了まで待機する
            System.Diagnostics.Process p =
                System.Diagnostics.Process.Start("C:\\work\\temp\\vv.txt");
            p.WaitForExit();

            MessageBox.Show("終了しました。" +
                "\n終了コード:" + p.ExitCode.ToString() +
                "\n終了時間:" + p.ExitTime.ToString());
        }


        ////Buttonのクリックイベントハンドラ
        //private void testButtons_Click(object sender, EventArgs e)
        //{
        //    //クリックされたボタンを表示する
        //    MessageBox.Show(((System.Windows.Forms.Button)sender).Text);
        //}

        private void CreateMyListView()
        {
            //// Create a new ListView control.
            ListView listView1 = new ListView();
            listView1.Bounds = new Rectangle(new Point(18, 20), new Size(680, 240));

            // Set the view to show details.
            listView1.View = View.Details;
            // Allow the user to edit item text.
            listView1.LabelEdit = true;
            // Allow the user to rearrange columns.
            listView1.AllowColumnReorder = true;
            // Display check boxes.
            listView1.CheckBoxes = true;
            // Select the item and subitems when selection is made.
            listView1.FullRowSelect = true;
            // Display grid lines.
            listView1.GridLines = true;
            // Sort the items in the list in ascending order.
            listView1.Sorting = SortOrder.Ascending;
            // 
            listView1.OwnerDraw = true;


            // Create three items and three sets of subitems for each item.
            ListViewItem item1 = new ListViewItem("item1", 0);
            // Place a check mark next to the item.
            item1.Checked = true;
            item1.SubItems.Add("1");
            item1.SubItems.Add("2");
            item1.SubItems.Add("3");
            item1.SubItems.Add("30");

            ListViewItem item2 = new ListViewItem("item2", 1);
            item2.SubItems.Add("4");
            item2.SubItems.Add("5");
            item2.SubItems.Add("6");
            item2.SubItems.Add("60");

            ListViewItem item3 = new ListViewItem("item3", 0);
            // Place a check mark next to the item.
            item3.Checked = true;
            item3.SubItems.Add("7");
            item3.SubItems.Add("8");
            item3.SubItems.Add("9");
            item3.SubItems.Add("90");

            // Create columns for the items and subitems.
            // Width of -2 indicates auto-size.
            chCaseName = new ColumnHeader();
            chCaseName.Text = "ケース名";
            chCaseName.TextAlign = HorizontalAlignment.Left;
            chCaseName.Width = -2;
            listView1.Columns.Add(chCaseName);

            //listView1.Columns.Add("ケース名", -2, HorizontalAlignment.Left);
            listView1.Columns.Add("Column 2", -2, HorizontalAlignment.Left);
            listView1.Columns.Add("Column 3", -2, HorizontalAlignment.Left);
            listView1.Columns.Add("Column 4", -2, HorizontalAlignment.Center);

            chStatus = new ColumnHeader();
            chStatus.Text = "ステータス";
            chStatus.TextAlign = HorizontalAlignment.Left;
            chStatus.Width = 40;
            listView1.Columns.Add(chStatus);
            //listView1.Columns.Add("Status", -2, HorizontalAlignment.Left);

            //Add the items to the ListView.
            listView1.Items.AddRange(new ListViewItem[] { item1, item2, item3 });

            // Create two ImageList objects.
            ImageList imageListSmall = new ImageList();
            ImageList imageListLarge = new ImageList();

            // Initialize the ImageList objects with bitmaps.
            //            imageListSmall.Images.Add(Bitmap.FromFile("C:\\Work\\temp\\splash.bmp"));
            //            imageListSmall.Images.Add(Bitmap.FromFile("C:\\Work\\temp\\splash.bmp"));
            //imageListLarge.Images.Add(Bitmap.FromFile("C:\\MyLargeImage1.bmp"));
            //imageListLarge.Images.Add(Bitmap.FromFile("C:\\MyLargeImage2.bmp"));

            //Assign the ImageList objects to the ListView.
            listView1.LargeImageList = imageListLarge;
            listView1.SmallImageList = imageListSmall;

            // Add Draw event 
            listView1.DrawColumnHeader += new DrawListViewColumnHeaderEventHandler(lv_DrawColumnHeader);
            listView1.DrawItem += new DrawListViewItemEventHandler(lv_DrawItem);

            // Add the ListView to the control collection.
            this.Controls.Add(listView1);
        }

        private void lv_DrawItem(object sender, DrawListViewItemEventArgs e)
        {

            Graphics g = e.Graphics;

            ListView lv = (ListView)sender;

            //フォント
            Font f = lv.Font;

            //文字描画に用いるStringFormat
            System.Drawing.StringFormat sf = new StringFormat();
            sf.Alignment = StringAlignment.Near;
            sf.LineAlignment = StringAlignment.Center;
            sf.Trimming = StringTrimming.EllipsisCharacter;

            //文字の色
            Brush textColor;

            //選択時の背景色
            Brush backColor;

            //プログレスバーの色
            Brush progressColor;

            //背景の描画
            if (e.Item.Selected)
            {
                textColor = Brushes.White;
                backColor = Brushes.Navy;
                progressColor = Brushes.White;
            }
            else
            {
                textColor = Brushes.Black;
                backColor = Brushes.White;
                progressColor = Brushes.Orange;
            }
            g.FillRectangle(backColor, e.Bounds);

            //描画位置
            int left = e.Bounds.Left;

            //DisplayIndexが小さい順に(左側から描画する)
            for (int i = 0; i < lv.Columns.Count; i++)
            {
                //DisplayIndexと同じカラムを探す
                for (int k = 0; k < lv.Columns.Count; k++)
                {
                    if (lv.Columns[k].DisplayIndex == i)
                    {
                        if (lv.Columns[k] == chStatus)
                        {//ステータスカラムの時
                            //e.DrawDefault = false;
                            Rectangle rect = new Rectangle(left, e.Bounds.Top + 1, (int)(lv.Columns[k].Width * int.Parse(e.Item.SubItems[k].Text) / 100.0), e.Bounds.Height - 2);
                            g.FillRectangle(progressColor, rect);
                        }
                        else if (lv.Columns[k] == chCaseName)
                        {
                            CheckBoxRenderer.DrawCheckBox(g, new Point(e.Bounds.X + 1, e.Bounds.Y + 1), System.Windows.Forms.VisualStyles.CheckBoxState.CheckedNormal);
                            //e.DrawDefault = true;
                            //If( item.Checked)
                            //{
                            //    CheckBoxRenderer.DrawCheckBox(e.Graphics, New Point(e.Bounds.X + 5, e.Bounds.Y + 10), VisualStyles.CheckBoxState.CheckedNormal)
                            //}
                            //Else
                            //{
                            //    CheckBoxRenderer.DrawCheckBox(e.Graphics, New Point(e.Bounds.X + 5, e.Bounds.Y + 10), VisualStyles.CheckBoxState.UncheckedNormal)
                            //}


                        }
                        else
                        {
                            //e.DrawDefault = false;
                            //描画する
                            Rectangle rect = new Rectangle(left, e.Bounds.Top, lv.Columns[k].Width, e.Bounds.Height);
                            g.DrawString(e.Item.SubItems[k].Text, f, textColor, rect, sf);
                        }
                        left += lv.Columns[k].Width;
                    }
                }
            }

            //解放
            sf.Dispose();
        }

        private void lv_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
        {
            e.DrawDefault = true;
        }

    }
}
