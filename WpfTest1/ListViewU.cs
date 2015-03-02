using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WpfTest1
{
    public partial class ListViewU : System.Windows.Forms.ListView 
    {
        private ColumnHeader chCaseName;
        private ColumnHeader chStatus;

        private static int statusIndex;
        private bool checkFromDoubleClick = false;

        
        public ListViewU()
        {
            InitializeComponent();
//            this.CreateMyListView();
//            addStatusColumn();
        }

        public void addCaseColumn()
        {
            chCaseName = new ColumnHeader();
            chCaseName.Text = "ケース名";
            chCaseName.TextAlign = HorizontalAlignment.Left;
            chCaseName.Width = 400;
            //
            this.Columns.Add(chCaseName);
        }

        public void addStatusColumn()
        {
            chStatus = new ColumnHeader();
            chStatus.Text = "ステータス";
            chStatus.TextAlign = HorizontalAlignment.Left;
            chStatus.Width = 300;
            // 
            this.Columns.Add(chStatus);
            statusIndex = this.Columns.Count - 1;

            this.DrawColumnHeader += new DrawListViewColumnHeaderEventHandler(lv_DrawColumnHeader);
            this.DrawItem += new DrawListViewItemEventHandler(lv_DrawItem);
            this.MouseMove += new MouseEventHandler(lv_MouseMove);
        }

        public void setStatus(ListViewItem it, String data)
        {
            it.SubItems[statusIndex].Text = data;
        }

        private void CreateMyListView()
        {
            //// Create a new ListView control.
//            ListView listView1 = new ListView();
//            listView1.Bounds = new Rectangle(new Point(18, 20), new Size(680, 240));

            // Set the view to show details.
//            listView1.View = View.Details;
            this.View = View.Details;
            // Allow the user to edit item text.
//            listView1.LabelEdit = true;
            this.LabelEdit = false;
            // Allow the user to rearrange columns.
//            listView1.AllowColumnReorder = true;
            this.AllowColumnReorder = true;
            // Display check boxes.
//            listView1.CheckBoxes = true;
            this.CheckBoxes = true;
            // Select the item and subitems when selection is made.
//            listView1.FullRowSelect = true;
            this.FullRowSelect = true;
            // Display grid lines.
//            listView1.GridLines = true;
            this.GridLines = true;
            // Sort the items in the list in ascending order.
//            listView1.Sorting = SortOrder.Ascending;
//            this.Sorting = SortOrder.None;
            // 
//            listView1.OwnerDraw = true;
            this.OwnerDraw = true;

            this.ListViewItemSorter = null;

            //// Create three items and three sets of subitems for each item.
            //ListViewItem item1 = new ListViewItem("item1", 0);
            //// Place a check mark next to the item.
            //item1.Checked = true;
            //item1.SubItems.Add("1");
            //item1.SubItems.Add("2");
            //item1.SubItems.Add("3");
            //item1.SubItems.Add("30");

            //ListViewItem item2 = new ListViewItem("item2", 1);
            //item2.SubItems.Add("4");
            //item2.SubItems.Add("5");
            //item2.SubItems.Add("6");
            //item2.SubItems.Add("60");

            //ListViewItem item3 = new ListViewItem("item3", 0);
            //// Place a check mark next to the item.
            //item3.Checked = true;
            //item3.SubItems.Add("7");
            //item3.SubItems.Add("8");
            //item3.SubItems.Add("9");
            //item3.SubItems.Add("90");

            ////Add the items to the ListView.
            //listView1.Items.AddRange(new ListViewItem[] { item1, item2, item3 });

            //// Create two ImageList objects.
            //ImageList imageListSmall = new ImageList();
            //ImageList imageListLarge = new ImageList();

            //// Initialize the ImageList objects with bitmaps.
            //imageListSmall.Images.Add(Bitmap.FromFile("C:\\Work\\temp\\splash.bmp"));
            //imageListSmall.Images.Add(Bitmap.FromFile("C:\\Work\\temp\\splash.bmp"));
            ////imageListLarge.Images.Add(Bitmap.FromFile("C:\\MyLargeImage1.bmp"));
            ////imageListLarge.Images.Add(Bitmap.FromFile("C:\\MyLargeImage2.bmp"));

            ////Assign the ImageList objects to the ListView.
            //listView1.LargeImageList = imageListLarge;
            //listView1.SmallImageList = imageListSmall;

            // Create columns for the items and subitems.
            // Width of -2 indicates auto-size.
            chCaseName = new ColumnHeader();
            chCaseName.Text = "ケース名";
            chCaseName.TextAlign = HorizontalAlignment.Left;
            chCaseName.Width = -2;
//            listView1.Columns.Add(chCaseName);
            this.Columns.Add(chCaseName);

            //listView1.Columns.Add("ケース名", -2, HorizontalAlignment.Left);
//            listView1.Columns.Add("Column 2", -2, HorizontalAlignment.Left);
//            listView1.Columns.Add("Column 3", -2, HorizontalAlignment.Left);
//            listView1.Columns.Add("Column 4", -2, HorizontalAlignment.Center);
            this.Columns.Add("Column 2", -2, HorizontalAlignment.Left);
            this.Columns.Add("Column 3", -2, HorizontalAlignment.Left);
            this.Columns.Add("Column 4", -2, HorizontalAlignment.Center);

            chStatus = new ColumnHeader();
            chStatus.Text = "ステータス";
            chStatus.TextAlign = HorizontalAlignment.Left;
            chStatus.Width = 60;
//            listView1.Columns.Add(chStatus);
            this.Columns.Add(chStatus);
            //listView1.Columns.Add("Status", -2, HorizontalAlignment.Left);


            // Add Draw event 
//            listView1.DrawColumnHeader += new DrawListViewColumnHeaderEventHandler(lv_DrawColumnHeader);
//            listView1.DrawItem += new DrawListViewItemEventHandler(lv_DrawItem);
            this.DrawColumnHeader += new DrawListViewColumnHeaderEventHandler(lv_DrawColumnHeader);
            this.DrawItem += new DrawListViewItemEventHandler(lv_DrawItem);

            // Add the ListView to the control collection.
//            this.Controls.Add(listView1);
        }


        protected override void OnItemCheck(ItemCheckEventArgs ice)
        {
            if (this.checkFromDoubleClick)
            {
                ice.NewValue = ice.CurrentValue;
                this.checkFromDoubleClick = false;
            }
            else
                base.OnItemCheck(ice);
        }

        protected override void OnMouseDown(MouseEventArgs e)
        {
            // Is this a double-click?
            if ((e.Button == MouseButtons.Left) && (e.Clicks > 1))
            {
                this.checkFromDoubleClick = true;
            }
            base.OnMouseDown(e);
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            this.checkFromDoubleClick = false;
            base.OnKeyDown(e);
        }

        private void lv_DrawItem(object sender, DrawListViewItemEventArgs e)
        {

            Graphics g = e.Graphics;

            ListView lv = (ListView)sender;

            //フォント
            Font f1 = lv.Font;

            //フォント
            Font f2 = new Font(lv.Font.Name, lv.Font.Size, System.Drawing.FontStyle.Bold );

            //文字描画に用いるStringFormat
            System.Drawing.StringFormat sf1 = new StringFormat();
            sf1.Alignment = StringAlignment.Near;
            sf1.LineAlignment = StringAlignment.Center;
            sf1.Trimming = StringTrimming.EllipsisCharacter;

            System.Drawing.StringFormat sf2 = new StringFormat();
            sf2.Alignment = StringAlignment.Center;
            sf2.LineAlignment = StringAlignment.Center;
            sf2.Trimming = StringTrimming.EllipsisCharacter;
            

            //文字の色
            Brush textColor1;
            Brush textColor2;
            Brush textColor3;

            //選択時の背景色
            Brush backColor;

            //プログレスバーの色
            Brush progressColor1;
            Brush progressColor2;
            Brush progressColorE;

            //背景の描画
            if (e.Item.Selected)
            {
                textColor1 = Brushes.White;
                textColor2 = Brushes.LightYellow;
                textColor3 = Brushes.Red;
                backColor = Brushes.Navy;
                progressColor1 = Brushes.Aqua;
                progressColor2 = Brushes.LightBlue;
                progressColorE = Brushes.Red;
            }
            else
            {
                textColor1 = Brushes.Black;
                textColor2 = Brushes.Green;
                textColor3 = Brushes.Red;
                backColor = Brushes.White;
                progressColor1 = Brushes.Aqua;
                progressColor2 = Brushes.LightBlue;
                progressColorE = Brushes.Red;
            }
            g.FillRectangle(backColor, e.Bounds);

            //描画位置
            int left = e.Bounds.Left+2;

            //DisplayIndexが小さい順に(左側から描画する)
            //for (int i = 0; i < lv.Columns.Count; i++)
            //{
                //DisplayIndexと同じカラムを探す
                for (int k = 0; k < lv.Columns.Count; k++)
                {
                    //if (lv.Columns[k].DisplayIndex == i)
                    //{
                        if (lv.Columns[k] == chStatus)
                        {//ステータスカラムの時
                            e.DrawDefault = false;

                            if (e.Item.SubItems[k].Text == ConstT.RUN_STAT_ERR)
                            {
                                // 実行時エラー
                                Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width ), e.Bounds.Height - 2);
                                g.FillRectangle(progressColorE, rect);
                            }
                            else if (e.Item.SubItems[k].Text == ConstT.CMP_STAT_ERR)
                            {
                                // 結果出力時エラー
                                Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width), e.Bounds.Height - 2);
                                g.FillRectangle(progressColorE, rect);
                            }
                            else if (e.Item.SubItems[k].Text == ConstT.CMP_STAT_DIFF)
                            {
                                // 比較結果不一致
                                Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width ), e.Bounds.Height - 2);
                                g.FillRectangle(progressColor2, rect);
                                g.DrawString("現新不一致", f2, textColor3, rect, sf2);
                            }
                            else if (e.Item.SubItems[k].Text == ConstT.CMP_STAT_SAME)
                            {
                                // 比較結果一致
                                Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width ), e.Bounds.Height - 2);
                                g.FillRectangle(progressColor2, rect);
                                g.DrawString("現新一致", f1, textColor2, rect, sf2);
                            }
                            else
                            {
                                int status = int.Parse(e.Item.SubItems[k].Text);
                                if (status > 100)
                                {
                                    // 結果出力
                                    status = status - 100;
                                    Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width * status / 100.0), e.Bounds.Height - 2);
                                    g.FillRectangle(progressColor2, rect);
                                }
                                else
                                {
                                    // 実行
                                    Rectangle rect = new Rectangle(left, e.Bounds.Top, (int)(lv.Columns[k].Width * status / 100.0), e.Bounds.Height - 2);
                                    g.FillRectangle(progressColor1, rect);
                                }
                            }
                        }
                        else if (lv.Columns[k] == chCaseName)
                        {
                            //CheckBoxRenderer.DrawCheckBox(g, new Point(e.Bounds.X + 1, e.Bounds.Y + 1), System.Windows.Forms.VisualStyles.CheckBoxState.CheckedNormal);
                            e.DrawDefault = true;
                            if (e.Item.Checked)
                            {
                                CheckBoxRenderer.DrawCheckBox(g, new Point(e.Bounds.X + 1, e.Bounds.Y + 1), System.Windows.Forms.VisualStyles.CheckBoxState.CheckedNormal);
                            }
                            else
                            {
                                CheckBoxRenderer.DrawCheckBox(g, new Point(e.Bounds.X + 1, e.Bounds.Y + 1), System.Windows.Forms.VisualStyles.CheckBoxState.UncheckedNormal);
                            }
                            Rectangle rect = new Rectangle(left+15, e.Bounds.Top, lv.Columns[k].Width, e.Bounds.Height);
                            g.DrawString(e.Item.SubItems[k].Text, f1, textColor1, rect, sf1);

                        }
                        else
                        {
                            e.DrawDefault = true;
                            //描画する
                            Rectangle rect = new Rectangle(left, e.Bounds.Top, lv.Columns[k].Width, e.Bounds.Height);
                            g.DrawString(e.Item.SubItems[k].Text, f1, textColor1, rect, sf1);
                        }
                        left += lv.Columns[k].Width;
                    //}
                }
            //}

            //解放
            sf1.Dispose();
            sf2.Dispose();
        }

        private void lv_MouseMove(object sender, MouseEventArgs e)
        {
            ListViewItem item = this.GetItemAt(e.X, e.Y);
            if (item != null && item.Tag == null)
            {
                this.Invalidate(item.Bounds);
                item.Tag = "tagged";
            }
        }

        private void lv_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
        {
            e.DrawDefault = true;
        }
    }

    
}
