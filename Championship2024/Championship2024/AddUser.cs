using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;

namespace Championship2024
{
    public partial class AddUser : Form
    {
        public AddUser()
        {
            InitializeComponent();
        }

        private void backBtn_Click(object sender, EventArgs e)
        {
            UserMenu userMenu = new UserMenu();
            userMenu.StartPosition = FormStartPosition.Manual;
            userMenu.Size = Size;
            userMenu.Location = Location;
            userMenu.Show();
            Hide();

            GC.Collect();
        }

        private void AddUser_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void userPhotoPicB_SizeChanged(object sender, EventArgs e)
        {
            GC.Collect();
        }

        private void clearBtn_Click(object sender, EventArgs e)
        {
            fieldTB.Text = string.Empty;
            userPhotoPicB.Image = null;
            fieldTB.Focus();

            GC.Collect();
        }

        private void chooseBtn_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog addAnImage = new OpenFileDialog();

                addAnImage.Filter = "Image files (*.jpg, *.jpeg, *.png)|*.jpg;*.jpeg;*.png";

                if (addAnImage.ShowDialog() == DialogResult.OK)
                {
                    string selectedImagePath = addAnImage.FileName;
                    userPhotoPicB.Image = new Bitmap(selectedImagePath);
                    userPhotoPicB.SizeMode = PictureBoxSizeMode.StretchImage;
                }
            }
            catch
            {
                MessageBox.Show("Объект не найден!", "Информация", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            GC.Collect();
        }
    }
}
