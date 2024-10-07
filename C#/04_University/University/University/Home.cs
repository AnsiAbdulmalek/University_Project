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
    public partial class Home : KryptonForm
    {
        public Home()
        {
            InitializeComponent();
        }

        private void Home_Load(object sender, EventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            DialogResult check = MessageBox.Show("Are You Sure You Wand To Logout ?", "Confirmtion Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(check == DialogResult.Yes)
            {
                this.Hide();
                new LoginPage().Show();
            }
        }

        private void dashboard_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = true;
            professors_btn.Visible = false;
            departments_btn.Visible = false;
            enrollments_btn.Visible = false;
            courses_btn.Visible = false;
            grades_btn.Visible = false; */
        }

        private void students_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = true;
            departments_btn.Visible = false;
            enrollments_btn.Visible = false;
            courses_btn.Visible = false;
            grades_btn.Visible = false; */
        }

        private void professors_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = true;
            departments_btn.Visible = false;
            enrollments_btn.Visible = false;
            courses_btn.Visible = false;
            grades_btn.Visible = false; */
        }

        private void departments_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = false;
            departments_btn.Visible = true;
            enrollments_btn.Visible = false;
            courses_btn.Visible = false;
            grades_btn.Visible = false; */
        }

        private void enrollments_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = false;
            departments_btn.Visible = false;
            enrollments_btn.Visible = true;
            courses_btn.Visible = false;
            grades_btn.Visible = false; */
        }

        private void courses_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = false;
            departments_btn.Visible = false;
            enrollments_btn.Visible = false;
            courses_btn.Visible = true;
            grades_btn.Visible = false; */
        }

        private void grades_Click(object sender, EventArgs e)
        {
            /*dashboard_btn.Visible = false;
            professors_btn.Visible = false;
            departments_btn.Visible = false;
            enrollments_btn.Visible = false;
            courses_btn.Visible = false;
            grades_btn.Visible = true;*/
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
