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

namespace UI.Layer.Forms
{
    public partial class StorySettingForm : Form
    {
        public StorySettingForm()
        {
            InitializeComponent();
            
        }

        GameStorySettingsConcrete gameStory = new GameStorySettingsConcrete();

        private void GetStory()
        {
            dgvStory.DataSource = gameStory.GetAll();
        }
        private void StorySettingForm_Load(object sender, EventArgs e)
        {
            GetStory();
        }
        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (!CheckBox())
                    return;

                DialogResult result = MessageBox.Show("Are you sure do you want to add this new story?", "Question", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button3);

                switch (result)
                {
                    case DialogResult.None:
                        break;
                    case DialogResult.OK:
                        break;
                    case DialogResult.Cancel:
                        break;
                    case DialogResult.Abort:
                        break;
                    case DialogResult.Retry:
                        break;
                    case DialogResult.Ignore:
                        break;
                    case DialogResult.Yes:
                        gameStory.Insert(new GameStory
                        {
                            StoryName = txtStoryName.Text,
                            StoryTopic = txtStoryTopic.Text
                        });
                        break;
                        GetStory();
                    case DialogResult.No:
                        break;
                    default:
                        break;
                }
            }
            catch (Exception)
            {

                
            }
       
           
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!CheckBox())
            return;

            DialogResult result = MessageBox.Show("Are you sure do you want to update this story?", "Question", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button3);
            switch (result)
            {
                case DialogResult.None:
                    break;
                case DialogResult.OK:
                    break;
                case DialogResult.Cancel:
                    break;
                case DialogResult.Abort:
                    break;
                case DialogResult.Retry:
                    break;
                case DialogResult.Ignore:
                    break;
                case DialogResult.Yes:
                    gameStory.Update(new GameStory
                    {
                        StoryId = Convert.ToInt32(txtStoryId.Text),
                        StoryName = txtStoryName.Text,
                        StoryTopic = txtStoryTopic.Text
                    });
                    GetStory();
                    break;
                case DialogResult.No:
                    break;
                default:
                    break;
            }
         
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {           
            DialogResult result = MessageBox.Show("Are you sure do you want to delete this story?", "Question", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button3);
            switch (result)
            {
                case DialogResult.None:
                    break;
                case DialogResult.OK:
                    break;
                case DialogResult.Cancel:
                    break;
                case DialogResult.Abort:
                    break;
                case DialogResult.Retry:
                    break;
                case DialogResult.Ignore:
                    break;
                case DialogResult.Yes:
                    gameStory.Delete(Convert.ToInt32(txtStoryId.Text));
                    GetStory();
                    break;
                case DialogResult.No:
                    break;
                default:
                    break;
            }
            
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            foreach (var control in this.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Clear();
                }
            }
        }

        private bool CheckBox()
        {
            if (txtStoryName.Text.Trim() == "")
            {
                MessageBox.Show("Story Name Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (txtStoryTopic.Text.Trim()=="")
            {
                MessageBox.Show("Story Topic Field Cannot Be Empty", "Wrong Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void dgvStory_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow selectedRow = dgvStory.Rows[e.RowIndex];

            txtStoryId.Text = selectedRow.Cells["StoryId"].Value.ToString();
            txtStoryName.Text = selectedRow.Cells["StoryName"].Value.ToString();
            txtStoryTopic.Text = selectedRow.Cells["StoryTopic"].Value.ToString();
        }
    }
}
