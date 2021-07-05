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
    public partial class ReportForm : Form
    {
        public ReportForm()
        {
            InitializeComponent();
        }
        private void ReportForm_Load(object sender, EventArgs e)
        {
           
        }
        private void GetUserReport()
        {
            Reporting.UserReport userReport = new Reporting.UserReport();
            crViewer.ReportSource = userReport;
            crViewer.RefreshReport();
        }
        private void GetStoryReport()
        {
            Reporting.GameStoryReport gameStoryReport = new Reporting.GameStoryReport();
            crViewer.ReportSource = gameStoryReport;
            crViewer.RefreshReport();
        }
        private void GetContactReport()
        {
            Reporting.ContactReport contactReport = new Reporting.ContactReport();
            crViewer.ReportSource = contactReport;
            crViewer.RefreshReport();
        }
        private void GetChooseReport()
        {
            Reporting.UserChooseReport userChooseReport = new Reporting.UserChooseReport();
            crViewer.ReportSource = userChooseReport;
            crViewer.RefreshReport();
        }
        private void RadioButtonClear()
        {
            foreach (var control  in this.Controls)
            {
                if (control is RadioButton)
                {
                    ((RadioButton)control).Checked = false;
                }
            }
        }
            
        private void btnGetReport_Click(object sender, EventArgs e)
        {
            if (rbUserReport.Checked)
            {
                GetUserReport();               
            }
            else if (rbStoryReports.Checked)
            {
                GetStoryReport();                
            }
            else if (rbContactReport.Checked)
            {
                GetContactReport();              
            }
            else if (rbUserChoose.Checked)
            {
                GetChooseReport();
            }
            else
            {
                MessageBox.Show("Choose any report!","Warning",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            
           


        }

       
    }
}
