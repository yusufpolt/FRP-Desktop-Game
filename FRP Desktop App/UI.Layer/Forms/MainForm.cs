using DataLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UI.Layer.Forms
{
    public partial class MainForm : Form
    {
        Dictionary<string, Form> FormDictionary;
        public MainForm()
        {
            InitializeComponent();
            CloseMdiChild();
            FormDictionary = new Dictionary<string, Form>();
        }
        public void FormLoad(string name)
        {
            Form form = null;
            if (FormDictionary.ContainsKey(name))
            {
                form = this.FormDictionary[name];
                form.WindowState = FormWindowState.Normal;
                form.Activate();
            }
            else
            {
                switch (name)
                {
                    case "LoginRegisterForm":
                        form = new LoginRegisterForm();
                        break;
                    case "GameForm":
                        form = new GameForm();
                        break;
                    case "UserSettingForm":
                        form = new UserSettingForm();
                        break;
                    case "StorySettingForm":
                        form = new StorySettingForm();
                        break;
                    case "ContactForm":
                        form = new ContactForm();
                        break;
                    case "ChooseForm":
                        form = new ChooseForm();
                        break;
                    case "ReportForm":
                        form = new ReportForm();
                        break;
                    default:
                        break;
                }
                FormDictionary.Add(name, form);
                form.MdiParent = this;
                form.Show();
            }
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            FormLoad("LoginRegisterForm");
        }

        private void startGameToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormLoad("GameForm");                     
        }

        private void userSettingsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormLoad("UserSettingForm");                     
        }

        private void storySettingsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var result = LoginRegisterForm.userLogin.RolesForm.Where(f => f.FormName == "StorySettingForm").FirstOrDefault();

            if (result!=null)
            {
                FormLoad("StorySettingForm");
            }
            else
            {
                MessageBox.Show("No Authorization", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
           
        }

        private void contactUsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormLoad("ContactForm");
        }

        private void raceClassToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormLoad("ChooseForm");
        }

        private void reportingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var result = LoginRegisterForm.userLogin.RolesForm.Where(f => f.FormName == "ReportForm").FirstOrDefault();
            if (result!=null)
            {
                FormLoad("ReportForm");
            }
            else
            {
                MessageBox.Show("No Authorization","Warning",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            
        }    

        private void CloseMdiChild()
        {
            
                foreach (Form c in this.MdiChildren)
                {
                    c.Close();
                }
            
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();        
        }

        private void eXITFORMToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LoginRegisterForm loginRegisterForm = new LoginRegisterForm();
            loginRegisterForm.MdiParent = this;
            loginRegisterForm.Show();
            topMenu.Enabled = false;
        }
    }
}
