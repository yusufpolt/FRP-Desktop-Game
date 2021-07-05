using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using UI.Layer.Properties;

namespace UI.Layer.Forms
{
    public partial class GameForm : Form
    {
        public GameForm()
        {
            InitializeComponent();
        }

        private void IconBtnRoll_Click(object sender, EventArgs e)
        {
            tmrRoll.Start();
        }

        int dice1, dice2;
        Random diceRandom = new Random();
        private void tmrRoll_Tick(object sender, EventArgs e)
        {
            prgBarDice.Increment(5);

            if (prgBarDice.Value==100)
            {
                tmrRoll.Stop();
                prgBarDice.Value = 0;
            }
            else
            {
                dice1 = diceRandom.Next(1, 7);
                dice2= diceRandom.Next(1, 7);

                switch (dice1)
                {
                    case 1:
                        picDice1.Image = Resources.dice_1;
                        break;
                    case 2:
                        picDice1.Image = Resources.dice_2;
                        break;
                    case 3:
                        picDice1.Image = Resources.dice_3;
                        break;
                    case 4:
                        picDice1.Image = Resources.dice_4;
                        break;
                    case 5:
                        picDice1.Image = Resources.dice_5;
                        break;
                    case 6:
                        picDice1.Image = Resources.dice_6;
                        break;
                    default:
                        break;
                }

                switch (dice2)
                {
                    case 1:
                        picDice2.Image = Resources.dice_1;
                        break;
                    case 2:
                        picDice2.Image = Resources.dice_2;
                        break;
                    case 3:
                        picDice2.Image = Resources.dice_3;
                        break;
                    case 4:
                        picDice2.Image = Resources.dice_4;
                        break;
                    case 5:
                        picDice2.Image = Resources.dice_5;
                        break;
                    case 6:
                        picDice2.Image = Resources.dice_6;
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
