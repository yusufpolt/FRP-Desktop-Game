using BusinessLayer.Repository.Concrete;
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
    public partial class UserSettingForm : Form
    {
        UserSettingsConcrete userSettingsConcrete = new UserSettingsConcrete();
        public UserSettingForm()
        {
            InitializeComponent();
        }

        private void UserSettingForm_Load(object sender, EventArgs e)
        {
            GetUser();
        }
        private void GetUser()
        {
            dgvUpdateAccount.DataSource = userSettingsConcrete.GetAll();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            
        }

        private void dgvUpdateAccount_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow selectedRow = dgvUpdateAccount.Rows[e.RowIndex];
            txtUserId.Text = selectedRow.Cells["UserId"].Value.ToString();
            txtRUserName.Text = selectedRow.Cells["UserName"].Value.ToString();
            mtxtRPassword.Text = selectedRow.Cells["UserPassword"].Value.ToString();
            txtFirstName.Text = selectedRow.Cells["FirstName"].Value.ToString();
            txtLastName.Text = selectedRow.Cells["LastName"].Value.ToString();
            txtEmail.Text = selectedRow.Cells["Email"].Value.ToString();
        }
    }
}
