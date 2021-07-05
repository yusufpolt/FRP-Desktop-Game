namespace UI.Layer.Forms
{
    partial class MainForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.topMenu = new System.Windows.Forms.MenuStrip();
            this.gamePanelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.startGameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.raceClassToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.userSettingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminPanelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.storySettingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contactToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contactUsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.eXITFORMToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ımageList1 = new System.Windows.Forms.ImageList(this.components);
            this.ımageList2 = new System.Windows.Forms.ImageList(this.components);
            this.btnExit = new System.Windows.Forms.Button();
            this.topMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // topMenu
            // 
            this.topMenu.BackColor = System.Drawing.Color.White;
            this.topMenu.Enabled = false;
            this.topMenu.Font = new System.Drawing.Font("MV Boli", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.topMenu.ImageScalingSize = new System.Drawing.Size(48, 48);
            this.topMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gamePanelToolStripMenuItem,
            this.adminPanelToolStripMenuItem,
            this.contactToolStripMenuItem,
            this.eXITFORMToolStripMenuItem});
            this.topMenu.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.HorizontalStackWithOverflow;
            this.topMenu.Location = new System.Drawing.Point(0, 0);
            this.topMenu.Name = "topMenu";
            this.topMenu.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.topMenu.Size = new System.Drawing.Size(1425, 56);
            this.topMenu.TabIndex = 1;
            this.topMenu.Text = "menuStrip1";
            // 
            // gamePanelToolStripMenuItem
            // 
            this.gamePanelToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.startGameToolStripMenuItem,
            this.raceClassToolStripMenuItem,
            this.userSettingsToolStripMenuItem});
            this.gamePanelToolStripMenuItem.Font = new System.Drawing.Font("MV Boli", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gamePanelToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.gamepad;
            this.gamePanelToolStripMenuItem.Name = "gamePanelToolStripMenuItem";
            this.gamePanelToolStripMenuItem.Size = new System.Drawing.Size(326, 52);
            this.gamePanelToolStripMenuItem.Text = "Game Panel          ";
            // 
            // startGameToolStripMenuItem
            // 
            this.startGameToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.videogame;
            this.startGameToolStripMenuItem.Name = "startGameToolStripMenuItem";
            this.startGameToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));
            this.startGameToolStripMenuItem.Size = new System.Drawing.Size(337, 36);
            this.startGameToolStripMenuItem.Text = "Start Game";
            this.startGameToolStripMenuItem.Click += new System.EventHandler(this.startGameToolStripMenuItem_Click);
            // 
            // raceClassToolStripMenuItem
            // 
            this.raceClassToolStripMenuItem.Image = global::UI.Layer.Properties.Resources._delegate;
            this.raceClassToolStripMenuItem.Name = "raceClassToolStripMenuItem";
            this.raceClassToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.C)));
            this.raceClassToolStripMenuItem.Size = new System.Drawing.Size(337, 36);
            this.raceClassToolStripMenuItem.Text = "Race and Class";
            this.raceClassToolStripMenuItem.Click += new System.EventHandler(this.raceClassToolStripMenuItem_Click);
            // 
            // userSettingsToolStripMenuItem
            // 
            this.userSettingsToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.gear;
            this.userSettingsToolStripMenuItem.Name = "userSettingsToolStripMenuItem";
            this.userSettingsToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.S)));
            this.userSettingsToolStripMenuItem.Size = new System.Drawing.Size(337, 36);
            this.userSettingsToolStripMenuItem.Text = "User Settings";
            this.userSettingsToolStripMenuItem.Click += new System.EventHandler(this.userSettingsToolStripMenuItem_Click);
            // 
            // adminPanelToolStripMenuItem
            // 
            this.adminPanelToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.storySettingsToolStripMenuItem,
            this.reportingToolStripMenuItem});
            this.adminPanelToolStripMenuItem.Font = new System.Drawing.Font("MV Boli", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.adminPanelToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.gear__1_;
            this.adminPanelToolStripMenuItem.Name = "adminPanelToolStripMenuItem";
            this.adminPanelToolStripMenuItem.Size = new System.Drawing.Size(335, 52);
            this.adminPanelToolStripMenuItem.Text = "Admin Panel          ";
            // 
            // storySettingsToolStripMenuItem
            // 
            this.storySettingsToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.book;
            this.storySettingsToolStripMenuItem.Name = "storySettingsToolStripMenuItem";
            this.storySettingsToolStripMenuItem.Size = new System.Drawing.Size(257, 36);
            this.storySettingsToolStripMenuItem.Text = "Story Settings";
            this.storySettingsToolStripMenuItem.Click += new System.EventHandler(this.storySettingsToolStripMenuItem_Click);
            // 
            // reportingToolStripMenuItem
            // 
            this.reportingToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.doctor;
            this.reportingToolStripMenuItem.Name = "reportingToolStripMenuItem";
            this.reportingToolStripMenuItem.Size = new System.Drawing.Size(257, 36);
            this.reportingToolStripMenuItem.Text = "Reporting";
            this.reportingToolStripMenuItem.Click += new System.EventHandler(this.reportingToolStripMenuItem_Click);
            // 
            // contactToolStripMenuItem
            // 
            this.contactToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.contactUsToolStripMenuItem});
            this.contactToolStripMenuItem.Font = new System.Drawing.Font("MV Boli", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.contactToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.team;
            this.contactToolStripMenuItem.Name = "contactToolStripMenuItem";
            this.contactToolStripMenuItem.Size = new System.Drawing.Size(282, 52);
            this.contactToolStripMenuItem.Text = "Contact          ";
            // 
            // contactUsToolStripMenuItem
            // 
            this.contactUsToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.teamwork;
            this.contactUsToolStripMenuItem.Name = "contactUsToolStripMenuItem";
            this.contactUsToolStripMenuItem.Size = new System.Drawing.Size(215, 36);
            this.contactUsToolStripMenuItem.Text = "Contact Us";
            this.contactUsToolStripMenuItem.Click += new System.EventHandler(this.contactUsToolStripMenuItem_Click);
            // 
            // eXITFORMToolStripMenuItem
            // 
            this.eXITFORMToolStripMenuItem.Image = global::UI.Layer.Properties.Resources.exit3;
            this.eXITFORMToolStripMenuItem.Name = "eXITFORMToolStripMenuItem";
            this.eXITFORMToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.F4)));
            this.eXITFORMToolStripMenuItem.Size = new System.Drawing.Size(174, 52);
            this.eXITFORMToolStripMenuItem.Text = "Sign Out";
            this.eXITFORMToolStripMenuItem.Click += new System.EventHandler(this.eXITFORMToolStripMenuItem_Click);
            // 
            // ımageList1
            // 
            this.ımageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ımageList1.ImageStream")));
            this.ımageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.ımageList1.Images.SetKeyName(0, "contact.png");
            this.ımageList1.Images.SetKeyName(1, "gamepad.png");
            this.ımageList1.Images.SetKeyName(2, "gear (1).png");
            this.ımageList1.Images.SetKeyName(3, "gear.png");
            this.ımageList1.Images.SetKeyName(4, "exit.png");
            // 
            // ımageList2
            // 
            this.ımageList2.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ımageList2.ImageStream")));
            this.ımageList2.TransparentColor = System.Drawing.Color.Transparent;
            this.ımageList2.Images.SetKeyName(0, "exit.png");
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.Transparent;
            this.btnExit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnExit.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnExit.ForeColor = System.Drawing.Color.Transparent;
            this.btnExit.ImageKey = "exit.png";
            this.btnExit.ImageList = this.ımageList2;
            this.btnExit.Location = new System.Drawing.Point(1251, 783);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(154, 83);
            this.btnExit.TabIndex = 5;
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1425, 885);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.topMenu);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.topMenu;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MainForm";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.topMenu.ResumeLayout(false);
            this.topMenu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ToolStripMenuItem gamePanelToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem startGameToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem userSettingsToolStripMenuItem;
        public System.Windows.Forms.MenuStrip topMenu;
        public System.Windows.Forms.ToolStripMenuItem adminPanelToolStripMenuItem;
        public System.Windows.Forms.ToolStripMenuItem storySettingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem contactToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem contactUsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem raceClassToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportingToolStripMenuItem;
        private System.Windows.Forms.ImageList ımageList1;
        private System.Windows.Forms.ImageList ımageList2;
        public System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.ToolStripMenuItem eXITFORMToolStripMenuItem;
    }
}