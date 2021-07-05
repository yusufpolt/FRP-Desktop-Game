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
    public partial class ContactForm : Form
    {
        CityConcrete cityConcrete = new CityConcrete();
        CountyConcrete countyConcrete = new CountyConcrete();
        ContactConcrete contactConcrete = new ContactConcrete();
        public ContactForm()
        {
            InitializeComponent();
        }
        private void cmbCities_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbCities.SelectedIndex > 0)
            {
                var cityId = Convert.ToInt32(cmbCities.SelectedValue);
                cmbCounties.DataSource = countyConcrete.GetAll(c => c.City == cityId);
                cmbCounties.DisplayMember = "County";
                cmbCounties.ValueMember = "CountyId";
            }
        }

        private void ContactForm_Load_1(object sender, EventArgs e)
        {
            cmbCities.DataSource = cityConcrete.GetAll();
            cmbCities.DisplayMember = "City";
            cmbCities.ValueMember = "CityId";
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            contactConcrete.Insert(new Contact
            {
                FirstName = txtFirstName.Text.Trim(),
                LastName = txtLastName.Text.Trim(),
                MessageText = txtMessage.Text.Trim(),
                CreatedDate = dtpDate.Value,
                CityId = Convert.ToInt32(cmbCities.SelectedValue),
                CountyId = Convert.ToInt32(cmbCounties.SelectedValue)
            });
        }
    }
}
