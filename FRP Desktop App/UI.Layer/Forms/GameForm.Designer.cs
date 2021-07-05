namespace UI.Layer.Forms
{
    partial class GameForm
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
            this.listView1 = new System.Windows.Forms.ListView();
            this.prgBarDice = new System.Windows.Forms.ProgressBar();
            this.tmrRoll = new System.Windows.Forms.Timer(this.components);
            this.IconBtnRoll = new FontAwesome.Sharp.IconButton();
            this.picDice2 = new System.Windows.Forms.PictureBox();
            this.picDice1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.picDice2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picDice1)).BeginInit();
            this.SuspendLayout();
            // 
            // listView1
            // 
            this.listView1.Dock = System.Windows.Forms.DockStyle.Top;
            this.listView1.HideSelection = false;
            this.listView1.Location = new System.Drawing.Point(0, 0);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(800, 219);
            this.listView1.TabIndex = 0;
            this.listView1.UseCompatibleStateImageBehavior = false;
            // 
            // prgBarDice
            // 
            this.prgBarDice.Location = new System.Drawing.Point(336, 390);
            this.prgBarDice.Name = "prgBarDice";
            this.prgBarDice.Size = new System.Drawing.Size(100, 23);
            this.prgBarDice.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
            this.prgBarDice.TabIndex = 5;
            // 
            // tmrRoll
            // 
            this.tmrRoll.Tick += new System.EventHandler(this.tmrRoll_Tick);
            // 
            // IconBtnRoll
            // 
            this.IconBtnRoll.Flip = FontAwesome.Sharp.FlipOrientation.Normal;
            this.IconBtnRoll.Font = new System.Drawing.Font("MV Boli", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IconBtnRoll.IconChar = FontAwesome.Sharp.IconChar.Dice;
            this.IconBtnRoll.IconColor = System.Drawing.Color.Black;
            this.IconBtnRoll.IconSize = 48;
            this.IconBtnRoll.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.IconBtnRoll.Location = new System.Drawing.Point(316, 336);
            this.IconBtnRoll.Name = "IconBtnRoll";
            this.IconBtnRoll.Rotation = 0D;
            this.IconBtnRoll.Size = new System.Drawing.Size(141, 48);
            this.IconBtnRoll.TabIndex = 0;
            this.IconBtnRoll.Text = "Dice Roll";
            this.IconBtnRoll.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.IconBtnRoll.UseVisualStyleBackColor = true;
            this.IconBtnRoll.Click += new System.EventHandler(this.IconBtnRoll_Click);
            // 
            // picDice2
            // 
            this.picDice2.Location = new System.Drawing.Point(400, 247);
            this.picDice2.Name = "picDice2";
            this.picDice2.Size = new System.Drawing.Size(75, 75);
            this.picDice2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picDice2.TabIndex = 2;
            this.picDice2.TabStop = false;
            // 
            // picDice1
            // 
            this.picDice1.Location = new System.Drawing.Point(299, 247);
            this.picDice1.Name = "picDice1";
            this.picDice1.Size = new System.Drawing.Size(75, 75);
            this.picDice1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picDice1.TabIndex = 1;
            this.picDice1.TabStop = false;
            // 
            // GameForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Crimson;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.prgBarDice);
            this.Controls.Add(this.IconBtnRoll);
            this.Controls.Add(this.picDice2);
            this.Controls.Add(this.picDice1);
            this.Controls.Add(this.listView1);
            this.Name = "GameForm";
            this.Text = "GameForm";
            ((System.ComponentModel.ISupportInitialize)(this.picDice2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picDice1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.PictureBox picDice1;
        private System.Windows.Forms.PictureBox picDice2;
        private FontAwesome.Sharp.IconButton IconBtnRoll;
        private System.Windows.Forms.ProgressBar prgBarDice;
        private System.Windows.Forms.Timer tmrRoll;
    }
}