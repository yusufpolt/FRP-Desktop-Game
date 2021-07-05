using BusinessLayer.Repository.Concrete;
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
using System.Text.RegularExpressions;
using UI.Layer.Properties;

namespace UI.Layer.Forms
{
    public partial class LoginRegisterForm : Form
    {
        public LoginRegisterForm()
        {
            InitializeComponent();
        }

        UserRegisterConcrete urc = new UserRegisterConcrete();
        
        public static UserViewModel userLogin;
 
        private void btnRegister_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (!CheckBoxes())
                    return;
                
               
                    var result = MessageBox.Show("Do You Want To Complete the Registration Process", "Confirmation", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button3);
                    switch (result)
                    {
                        case DialogResult.Cancel:
                            break;
                        case DialogResult.Yes:                       
                        urc.Insert(new UserRegister
                            {
                                FirstName = txtFirstName.Text.Trim(),
                                LastName = txtLastName.Text.Trim(),
                                UserName = txtRUserName.Text.Trim(),
                                UserPassword = mtxtRPassword.Text.Trim(),
                                Email = txtEmail.Text.Trim(),
                            });
                            MessageBox.Show("Registration Complete");
                            TextBoxClear();
                            break;
                        case DialogResult.No:
                            break;
                        default:
                            break;
                    }
                    return;                
            }
            catch (Exception)
            {
                MessageBox.Show("This User Name Is Already Using!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
               txtRUserName.Clear();
            }
            
            

        }

        private void TextBoxClear()
        {
            txtFirstName.Clear();
            txtLastName.Clear();
            txtRUserName.Clear();
            mtxtRPassword.Clear();
            txtEmail.Clear();
        }

        private void CreateMyPasswordMTextBox()
        {
            TextBox textBox1 = new TextBox();
            textBox1.MaxLength = 8;
            textBox1.PasswordChar = '*';
            textBox1.CharacterCasing = CharacterCasing.Lower;

        }

        private void txtEmail_Leave(object sender, EventArgs e)
        {
            string pattern = "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";
            if (Regex.IsMatch(txtEmail.Text,pattern))
            {
                errorProvider1.Clear();
            }
            else
            {               
                errorProvider1.SetError(this.txtEmail, "Please Enter Valid Email Address!");
                return;
            }
        }

        private bool CheckBoxes()
        {
            if (txtFirstName.Text.Trim()=="")
            {
                MessageBox.Show("First Name Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (txtLastName.Text.Trim()=="")
            {
                MessageBox.Show("Last Name Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (txtRUserName.Text.Trim()=="")
            {
                MessageBox.Show("User Name Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (mtxtRPassword.Text.Trim()=="")
            {
                MessageBox.Show("Password Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (txtEmail.Text.Trim()=="")
            {
                MessageBox.Show("E-mail Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }
        private bool CheckForm()
        {
            var result = true;
            foreach (Control control in this.Controls)
            {
                if (control is TextBox)
                {
                    string.IsNullOrEmpty(((TextBox)control).Text);
                    result = false;
                    break;
                }
                else if (control is MaskedTextBox)
                {
                    string.IsNullOrEmpty(((MaskedTextBox)control).Text);
                    result = false;
                    break;
                }
            }

            return result;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            //var returnvalue = urc.Get(txtUsername.Text, mtxtPassword.Text);
            //switch (returnvalue)
            //{
            //    case -1:
            //        MessageBox.Show("Kullanıcı adına ait şifre doğrulanamadı. Bilgilerinizi kontrol ediniz.", "Dikkat", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);
            //        break;
            //    case 0:
            //        MessageBox.Show("Kullanıcı tanımlı değil. Bilgilerinizi kontrol ediniz.", "Dikkat", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);
            //        break;
            //    case 1:
            //        var mainForm = (MainForm)this.MdiParent;
            //        mainForm.topMenu.Enabled = true;
            //        this.Close();
            //        break;
            //}

            string loginName = txtUsername.Text;
            string loginPassword = mtxtPassword.Text;
            userLogin = urc.GetUser(txtUsername.Text, mtxtPassword.Text);
            if (userLogin != null)
            {
                //if (ckRemember.Checked)
                //{
                //    Settings.Default.userName = loginName;
                //    Settings.Default.userName = loginPassword;
                //    Settings.Default.Setting = true;
                //}
                //else
                //{
                //    Settings.Default.Setting = false;
                //}
                //Settings.Default.Save();

                var mainForm = (MainForm)this.MdiParent;
                mainForm.topMenu.Enabled = true;
                this.Close();
                mainForm.btnExit.Enabled = true;
            }
            else
            {
                MessageBox.Show("Kullanıcı tanımlı değil. Bilgilerinizi kontrol ediniz.");
            }

         
        }

        private void LoginRegisterForm_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin.PerformClick();
            }

            //this.ActiveControl = txtUsername;
            //this.ControlBox = false;
            //if (Settings.Default.Setting)
            //{
            //    if (Settings.Default.userName!=string.Empty)
            //    {
            //        txtUsername.Text = Settings.Default.userName;
            //    }
            //    if (Settings.Default.userPassword!=string.Empty)
            //    {
            //        mtxtPassword.Text = Settings.Default.userPassword;
            //    }
            //}
            //else
            //{
            //    txtUsername.Text = string.Empty;
            //    mtxtPassword.Text = string.Empty;
            //}
            //ckRemember.Checked = Settings.Default.Setting;

        }
    }
}
