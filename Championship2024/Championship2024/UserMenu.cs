using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Npgsql;

namespace Championship2024
{
    public partial class UserMenu : Form
    {
        public UserMenu()
        {
            InitializeComponent();
        }

        private void searchBtn_Click(object sender, EventArgs e)
        {
            try
            {
                //имя пользователя
                string stringUserName = null;
                
                //относительный путь к файлу изображения
                string relativePath = null;

                //полный путь к файлу
                string filePath;

                NpgsqlConnection conn = new NpgsqlConnection("host=localhost; port=5432; username=postgres; database=championship2024; password=12345");
                NpgsqlCommand cmd = new NpgsqlCommand("select name, photo from users where name = @name", conn);
                cmd.Parameters.AddWithValue("@name", fieldTB.Text);
                conn.Open();

                NpgsqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    stringUserName = reader.GetString(0);
                    relativePath = reader.GetString(1);
                }
                conn.Close();

                userNameLb.Text = stringUserName;

                //получаем абсолютный путь к файлу изображения
                filePath = Path.Combine(Application.StartupPath, relativePath);

                //проверяем существует ли файл
                if (File.Exists(filePath))
                {
                    //создаем новый объект Bitmap из файла
                    Bitmap image = new Bitmap(filePath);

                    userPhotoPicB.Image = image;
                    userPhotoPicB.SizeMode = PictureBoxSizeMode.StretchImage;
                }
                else
                {
                    MessageBox.Show("Файл с изображением не найден!", "Информация", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch
            {
                MessageBox.Show("Объект не найден!", "Информация", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            GC.Collect();
        }

        private void newUserBtn_Click(object sender, EventArgs e)
        {
            AddUser addUser = new AddUser();
            addUser.StartPosition = FormStartPosition.Manual;
            addUser.Location = Location;
            addUser.Size = Size;
            addUser.Show();
            Hide();

            GC.Collect();
        }

        private void UserMenu_FormClosing(object sender, FormClosingEventArgs e)
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
    }
}
