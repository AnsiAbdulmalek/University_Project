namespace University
{
    partial class Home
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Home));
            this.kryptonPalette1 = new ComponentFactory.Krypton.Toolkit.KryptonPalette(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.logout_btn = new System.Windows.Forms.Button();
            this.grades_btn = new System.Windows.Forms.Button();
            this.courses_btn = new System.Windows.Forms.Button();
            this.enrollments_btn = new System.Windows.Forms.Button();
            this.departments_btn = new System.Windows.Forms.Button();
            this.professors_btn = new System.Windows.Forms.Button();
            this.students_btn = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.dashboard_btn = new System.Windows.Forms.Button();
            this.exit = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // kryptonPalette1
            // 
            this.kryptonPalette1.FormStyles.FormMain.StateCommon.Border.DrawBorders = ((ComponentFactory.Krypton.Toolkit.PaletteDrawBorders)((((ComponentFactory.Krypton.Toolkit.PaletteDrawBorders.Top | ComponentFactory.Krypton.Toolkit.PaletteDrawBorders.Bottom) 
            | ComponentFactory.Krypton.Toolkit.PaletteDrawBorders.Left) 
            | ComponentFactory.Krypton.Toolkit.PaletteDrawBorders.Right)));
            this.kryptonPalette1.FormStyles.FormMain.StateCommon.Border.Rounding = 12;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.logout_btn);
            this.panel1.Controls.Add(this.grades_btn);
            this.panel1.Controls.Add(this.courses_btn);
            this.panel1.Controls.Add(this.enrollments_btn);
            this.panel1.Controls.Add(this.departments_btn);
            this.panel1.Controls.Add(this.professors_btn);
            this.panel1.Controls.Add(this.students_btn);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Controls.Add(this.dashboard_btn);
            this.panel1.Location = new System.Drawing.Point(0, -2);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel1.Name = "panel1";
            this.panel1.Padding = new System.Windows.Forms.Padding(13, 12, 13, 12);
            this.panel1.Size = new System.Drawing.Size(303, 754);
            this.panel1.TabIndex = 1;
            // 
            // logout_btn
            // 
            this.logout_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.logout_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.logout_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.logout_btn.Image = ((System.Drawing.Image)(resources.GetObject("logout_btn.Image")));
            this.logout_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.logout_btn.Location = new System.Drawing.Point(49, 567);
            this.logout_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.logout_btn.Name = "logout_btn";
            this.logout_btn.Size = new System.Drawing.Size(180, 57);
            this.logout_btn.TabIndex = 14;
            this.logout_btn.Text = "Logout";
            this.logout_btn.UseVisualStyleBackColor = true;
            this.logout_btn.Click += new System.EventHandler(this.button8_Click);
            // 
            // grades_btn
            // 
            this.grades_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.grades_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grades_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.grades_btn.Image = ((System.Drawing.Image)(resources.GetObject("grades_btn.Image")));
            this.grades_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.grades_btn.Location = new System.Drawing.Point(0, 498);
            this.grades_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.grades_btn.Name = "grades_btn";
            this.grades_btn.Size = new System.Drawing.Size(303, 62);
            this.grades_btn.TabIndex = 13;
            this.grades_btn.Text = "Grades";
            this.grades_btn.UseVisualStyleBackColor = true;
            this.grades_btn.Click += new System.EventHandler(this.grades_Click);
            // 
            // courses_btn
            // 
            this.courses_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.courses_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.courses_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.courses_btn.Image = ((System.Drawing.Image)(resources.GetObject("courses_btn.Image")));
            this.courses_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.courses_btn.Location = new System.Drawing.Point(0, 430);
            this.courses_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.courses_btn.Name = "courses_btn";
            this.courses_btn.Size = new System.Drawing.Size(303, 62);
            this.courses_btn.TabIndex = 12;
            this.courses_btn.Text = "Courses";
            this.courses_btn.UseVisualStyleBackColor = true;
            this.courses_btn.Click += new System.EventHandler(this.courses_Click);
            // 
            // enrollments_btn
            // 
            this.enrollments_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.enrollments_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.enrollments_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.enrollments_btn.Image = ((System.Drawing.Image)(resources.GetObject("enrollments_btn.Image")));
            this.enrollments_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.enrollments_btn.Location = new System.Drawing.Point(0, 361);
            this.enrollments_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.enrollments_btn.Name = "enrollments_btn";
            this.enrollments_btn.Size = new System.Drawing.Size(303, 62);
            this.enrollments_btn.TabIndex = 11;
            this.enrollments_btn.Text = "Enrollments";
            this.enrollments_btn.UseVisualStyleBackColor = true;
            this.enrollments_btn.Click += new System.EventHandler(this.enrollments_Click);
            // 
            // departments_btn
            // 
            this.departments_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.departments_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.departments_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.departments_btn.Image = ((System.Drawing.Image)(resources.GetObject("departments_btn.Image")));
            this.departments_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.departments_btn.Location = new System.Drawing.Point(0, 292);
            this.departments_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.departments_btn.Name = "departments_btn";
            this.departments_btn.Size = new System.Drawing.Size(303, 62);
            this.departments_btn.TabIndex = 10;
            this.departments_btn.Text = "Departments";
            this.departments_btn.UseVisualStyleBackColor = true;
            this.departments_btn.Click += new System.EventHandler(this.departments_Click);
            // 
            // professors_btn
            // 
            this.professors_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.professors_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.professors_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.professors_btn.Image = ((System.Drawing.Image)(resources.GetObject("professors_btn.Image")));
            this.professors_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.professors_btn.Location = new System.Drawing.Point(0, 223);
            this.professors_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.professors_btn.Name = "professors_btn";
            this.professors_btn.Size = new System.Drawing.Size(303, 62);
            this.professors_btn.TabIndex = 9;
            this.professors_btn.Text = "Professors";
            this.professors_btn.UseVisualStyleBackColor = true;
            this.professors_btn.Click += new System.EventHandler(this.professors_Click);
            // 
            // students_btn
            // 
            this.students_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.students_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.students_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.students_btn.Image = ((System.Drawing.Image)(resources.GetObject("students_btn.Image")));
            this.students_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.students_btn.Location = new System.Drawing.Point(0, 154);
            this.students_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.students_btn.Name = "students_btn";
            this.students_btn.Size = new System.Drawing.Size(303, 62);
            this.students_btn.TabIndex = 8;
            this.students_btn.Text = "Students";
            this.students_btn.UseVisualStyleBackColor = true;
            this.students_btn.Click += new System.EventHandler(this.students_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(13, 12);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(277, 62);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 7;
            this.pictureBox1.TabStop = false;
            // 
            // dashboard_btn
            // 
            this.dashboard_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.dashboard_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dashboard_btn.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(221)))), ((int)(((byte)(255)))));
            this.dashboard_btn.Image = ((System.Drawing.Image)(resources.GetObject("dashboard_btn.Image")));
            this.dashboard_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.dashboard_btn.Location = new System.Drawing.Point(0, 85);
            this.dashboard_btn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dashboard_btn.Name = "dashboard_btn";
            this.dashboard_btn.Size = new System.Drawing.Size(303, 62);
            this.dashboard_btn.TabIndex = 0;
            this.dashboard_btn.Text = "Dashboard";
            this.dashboard_btn.UseVisualStyleBackColor = true;
            this.dashboard_btn.Click += new System.EventHandler(this.dashboard_Click);
            // 
            // exit
            // 
            this.exit.AutoSize = true;
            this.exit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(236)))), ((int)(((byte)(235)))), ((int)(((byte)(242)))));
            this.exit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.exit.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.exit.Location = new System.Drawing.Point(1485, -1);
            this.exit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.exit.Name = "exit";
            this.exit.Size = new System.Drawing.Size(21, 24);
            this.exit.TabIndex = 15;
            this.exit.Text = "x";
            this.exit.Click += new System.EventHandler(this.exit_Click);
            // 
            // panel2
            // 
            this.panel2.Location = new System.Drawing.Point(311, 11);
            this.panel2.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1196, 726);
            this.panel2.TabIndex = 16;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(236)))), ((int)(((byte)(235)))), ((int)(((byte)(242)))));
            this.ClientSize = new System.Drawing.Size(1515, 750);
            this.Controls.Add(this.exit);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Home";
            this.Palette = this.kryptonPalette1;
            this.PaletteMode = ComponentFactory.Krypton.Toolkit.PaletteMode.Custom;
            this.Text = "University";
            this.Load += new System.EventHandler(this.Home_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private ComponentFactory.Krypton.Toolkit.KryptonPalette kryptonPalette1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button dashboard_btn;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button logout_btn;
        private System.Windows.Forms.Button grades_btn;
        private System.Windows.Forms.Button courses_btn;
        private System.Windows.Forms.Button enrollments_btn;
        private System.Windows.Forms.Button departments_btn;
        private System.Windows.Forms.Button professors_btn;
        private System.Windows.Forms.Button students_btn;
        private System.Windows.Forms.Label exit;
        private System.Windows.Forms.Panel panel2;
    }
}