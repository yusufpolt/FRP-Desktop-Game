namespace UI.Layer.Forms
{
    partial class ReportForm
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReportForm));
            this.crViewer = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.rbUserReport = new System.Windows.Forms.RadioButton();
            this.rbContactReport = new System.Windows.Forms.RadioButton();
            this.rbStoryReports = new System.Windows.Forms.RadioButton();
            this.rbUserChoose = new System.Windows.Forms.RadioButton();
            this.ımageList1 = new System.Windows.Forms.ImageList(this.components);
            this.pictureBox5 = new System.Windows.Forms.PictureBox();
            this.pictureBox4 = new System.Windows.Forms.PictureBox();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnGetReport = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // crViewer
            // 
            this.crViewer.ActiveViewIndex = -1;
            this.crViewer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crViewer.Cursor = System.Windows.Forms.Cursors.Default;
            this.crViewer.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.crViewer.Location = new System.Drawing.Point(0, 261);
            this.crViewer.Name = "crViewer";
            this.crViewer.Size = new System.Drawing.Size(996, 423);
            this.crViewer.TabIndex = 5;
            this.crViewer.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // rbUserReport
            // 
            this.rbUserReport.AutoSize = true;
            this.rbUserReport.Font = new System.Drawing.Font("MV Boli", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbUserReport.ForeColor = System.Drawing.Color.White;
            this.rbUserReport.Location = new System.Drawing.Point(311, 64);
            this.rbUserReport.Name = "rbUserReport";
            this.rbUserReport.Size = new System.Drawing.Size(146, 29);
            this.rbUserReport.TabIndex = 0;
            this.rbUserReport.TabStop = true;
            this.rbUserReport.Text = "User Reports";
            this.rbUserReport.UseVisualStyleBackColor = true;
            // 
            // rbContactReport
            // 
            this.rbContactReport.AutoSize = true;
            this.rbContactReport.Font = new System.Drawing.Font("MV Boli", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbContactReport.ForeColor = System.Drawing.Color.White;
            this.rbContactReport.Location = new System.Drawing.Point(311, 125);
            this.rbContactReport.Name = "rbContactReport";
            this.rbContactReport.Size = new System.Drawing.Size(177, 29);
            this.rbContactReport.TabIndex = 2;
            this.rbContactReport.TabStop = true;
            this.rbContactReport.Text = "Contact Reports";
            this.rbContactReport.UseVisualStyleBackColor = true;
            // 
            // rbStoryReports
            // 
            this.rbStoryReports.AutoSize = true;
            this.rbStoryReports.Font = new System.Drawing.Font("MV Boli", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbStoryReports.ForeColor = System.Drawing.Color.White;
            this.rbStoryReports.Location = new System.Drawing.Point(564, 64);
            this.rbStoryReports.Name = "rbStoryReports";
            this.rbStoryReports.Size = new System.Drawing.Size(214, 29);
            this.rbStoryReports.TabIndex = 1;
            this.rbStoryReports.TabStop = true;
            this.rbStoryReports.Text = "Game Story Reports";
            this.rbStoryReports.UseVisualStyleBackColor = true;
            // 
            // rbUserChoose
            // 
            this.rbUserChoose.AutoSize = true;
            this.rbUserChoose.Font = new System.Drawing.Font("MV Boli", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbUserChoose.ForeColor = System.Drawing.Color.White;
            this.rbUserChoose.Location = new System.Drawing.Point(565, 125);
            this.rbUserChoose.Name = "rbUserChoose";
            this.rbUserChoose.Size = new System.Drawing.Size(213, 29);
            this.rbUserChoose.TabIndex = 3;
            this.rbUserChoose.TabStop = true;
            this.rbUserChoose.Text = "User Choose Reports";
            this.rbUserChoose.UseVisualStyleBackColor = true;
            // 
            // ımageList1
            // 
            this.ımageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ımageList1.ImageStream")));
            this.ımageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.ımageList1.Images.SetKeyName(0, "search.png");
            // 
            // pictureBox5
            // 
            this.pictureBox5.Image = global::UI.Layer.Properties.Resources.development;
            this.pictureBox5.Location = new System.Drawing.Point(520, 116);
            this.pictureBox5.Name = "pictureBox5";
            this.pictureBox5.Size = new System.Drawing.Size(38, 38);
            this.pictureBox5.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox5.TabIndex = 13;
            this.pictureBox5.TabStop = false;
            // 
            // pictureBox4
            // 
            this.pictureBox4.Image = global::UI.Layer.Properties.Resources.message;
            this.pictureBox4.Location = new System.Drawing.Point(520, 55);
            this.pictureBox4.Name = "pictureBox4";
            this.pictureBox4.Size = new System.Drawing.Size(38, 38);
            this.pictureBox4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox4.TabIndex = 12;
            this.pictureBox4.TabStop = false;
            // 
            // pictureBox3
            // 
            this.pictureBox3.Image = global::UI.Layer.Properties.Resources.customer_service;
            this.pictureBox3.Location = new System.Drawing.Point(267, 116);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(38, 38);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox3.TabIndex = 11;
            this.pictureBox3.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::UI.Layer.Properties.Resources.consultation;
            this.pictureBox2.Location = new System.Drawing.Point(267, 55);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(38, 38);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 10;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::UI.Layer.Properties.Resources.big_data;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 85);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 9;
            this.pictureBox1.TabStop = false;
            // 
            // btnGetReport
            // 
            this.btnGetReport.Font = new System.Drawing.Font("MV Boli", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGetReport.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnGetReport.ImageKey = "search.png";
            this.btnGetReport.ImageList = this.ımageList1;
            this.btnGetReport.Location = new System.Drawing.Point(419, 186);
            this.btnGetReport.Name = "btnGetReport";
            this.btnGetReport.Size = new System.Drawing.Size(150, 50);
            this.btnGetReport.TabIndex = 4;
            this.btnGetReport.Text = "Get Report";
            this.btnGetReport.UseVisualStyleBackColor = true;
            this.btnGetReport.Click += new System.EventHandler(this.btnGetReport_Click);
            // 
            // ReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(996, 684);
            this.Controls.Add(this.pictureBox5);
            this.Controls.Add(this.pictureBox4);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.rbUserChoose);
            this.Controls.Add(this.rbStoryReports);
            this.Controls.Add(this.rbContactReport);
            this.Controls.Add(this.rbUserReport);
            this.Controls.Add(this.btnGetReport);
            this.Controls.Add(this.crViewer);
            this.Name = "ReportForm";
            this.Text = "ReportForm";
            this.Load += new System.EventHandler(this.ReportForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crViewer;
        private System.Windows.Forms.Button btnGetReport;
        private System.Windows.Forms.RadioButton rbUserReport;
        private System.Windows.Forms.RadioButton rbContactReport;
        private System.Windows.Forms.RadioButton rbStoryReports;
        private System.Windows.Forms.RadioButton rbUserChoose;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.PictureBox pictureBox4;
        private System.Windows.Forms.PictureBox pictureBox5;
        private System.Windows.Forms.ImageList ımageList1;
    }
}