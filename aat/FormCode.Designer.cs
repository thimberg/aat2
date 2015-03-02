namespace aat
{
    partial class FormCode
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.rtb1 = new aat.RichTextBoxEx();
            this.SuspendLayout();
            // 
            // rtb1
            // 
            this.rtb1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtb1.Font = new System.Drawing.Font("ＭＳ ゴシック", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(128)));
            this.rtb1.Location = new System.Drawing.Point(0, 0);
            this.rtb1.Name = "rtb1";
            this.rtb1.NumberAlignment = System.Drawing.StringAlignment.Center;
            this.rtb1.NumberBackground1 = System.Drawing.SystemColors.InactiveCaption;
            this.rtb1.NumberBackground2 = System.Drawing.SystemColors.InactiveCaption;
            this.rtb1.NumberBorder = System.Drawing.SystemColors.Highlight;
            this.rtb1.NumberBorderThickness = 1F;
            this.rtb1.NumberColor = System.Drawing.Color.Black;
            this.rtb1.NumberFont = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rtb1.NumberLeadingZeroes = false;
            this.rtb1.NumberLineCounting = aat.RichTextBoxEx.LineCounting.CRLF;
            this.rtb1.NumberPadding = 2;
            this.rtb1.ShowLineNumbers = false;
            this.rtb1.Size = new System.Drawing.Size(784, 562);
            this.rtb1.TabIndex = 0;
            this.rtb1.Text = "";
            this.rtb1.WordWrap = false;
            this.rtb1.VScroll += new System.EventHandler(this.rtb1_VScroll);
            // 
            // FormCode
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 562);
            this.Controls.Add(this.rtb1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormCode";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormSource";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.FormSource_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private RichTextBoxEx rtb1;
    }
}