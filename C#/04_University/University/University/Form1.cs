using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ComponentFactory.Krypton.Toolkit;


namespace University
{
    public partial class LoginPage : KryptonForm
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void showpassword_CheckedChanged(object sender, EventArgs e)
        {
            password.PasswordChar = showpassword.Checked ? '\0' : '*';
        }

        private void login_btn_Click(object sender, EventArgs e)
        {

            if (username.Text == "admin" && password.Text == "admin")
            {
                this.Hide();
                new Home().Show();
            }else
            {
                error1.Visible = true;
            }
        }

        private void username_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
