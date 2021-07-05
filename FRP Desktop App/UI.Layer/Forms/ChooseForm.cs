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
    public partial class ChooseForm : Form
    {
        RaceConcrete raceConcrete = new RaceConcrete();
        ClassConcrete classConcrete = new ClassConcrete();
        UserChooseConcrete userChooseConcrete = new UserChooseConcrete();
        
        public ChooseForm()
        {
            InitializeComponent();
        }

        private void ChooseForm_Load(object sender, EventArgs e)
        {
            ChooseRace();
            ChooseClass();
        }

        private void ChooseRace()
        {
            cmbRace.DataSource = raceConcrete.GetAll();
            cmbRace.DisplayMember = "RaceName";
            cmbRace.ValueMember = "RaceId";
        }
        private void ChooseClass()
        {
            cmbClass.DataSource = classConcrete.GetAll();
            cmbClass.DisplayMember = "ClassName";
            cmbClass.ValueMember = "ClassId";
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            userChooseConcrete.Insert(new UserChoose
            {
                UserChooseRace = Convert.ToInt32(cmbRace.SelectedValue),
                UserChooseClass = Convert.ToInt32(cmbClass.SelectedValue)
            });
        }
    }
}
