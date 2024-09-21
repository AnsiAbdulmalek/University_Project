INSERT INTO Users (Username, Password, Role)
VALUES 
('ahmed_hassan', 'ahmedPass', 'Admin'),
('omar_ali', 'omarPass', 'User'),
('sara_youssef', 'sara2021', 'User'),
('khaled_admin', 'adminKhaled!', 'Admin'),
('fatima_ali', 'fatima2020', 'User'),
('nour_hussein', 'nourPass', 'User'),
('abdullah_salem', 'abdullah2021', 'Admin'),
('reem_salem', 'reemPass', 'User'),
('yousef_alawi', 'yousef123', 'User'),
('laila_omar', 'lailaPass', 'User'),
('hassan_mustafa', 'hassanAdmin', 'Admin'),
('salma_ahmed', 'salmaPass', 'User'),
('mohammed_nasser', 'mohammedPass', 'User'),
('zeina_khalid', 'zeina123', 'User'),
('huda_nour', 'huda2021!', 'Admin');

INSERT INTO UniversityEntities (EntityType, EntityName)
VALUES 
('Student', 'Abdullah Hussein'),
('Student', 'Ahmed Omar'),
('Student', 'Fatima Ali'),
('Professor', 'Dr. Khaled Mohammed'),
('Professor', 'Dr. Sara Adel'),
('Course', 'Advanced Programming'),
('Course', 'Database Fundamentals'),
('Department', 'Faculty of Computing'),
('Department', 'Faculty of Engineering'),
('Enrollment', 'Course Registration'),
('Grade', 'A'),
('Grade', 'B+'),
('Grade', 'C'),
('Student', 'Reem Gamal'),
('Professor', 'Dr. Hassan Abd Al-Rahman');

INSERT INTO Departments (DepartmentName, EntityID)
VALUES 
('Faculty of Computing', 8),
('Faculty of Engineering', 9),
('Faculty of Science', 15),
('Faculty of Arts', 8),
('Faculty of Commerce', 9),
('Faculty of Medicine', 15),
('Faculty of Pharmacy', 8),
('Faculty of Education', 9),
('Faculty of Tourism and Hotels', 15),
('Faculty of Media', 8),
('Faculty of Fine Arts', 9),
('Faculty of Agriculture', 15),
('Faculty of Islamic Studies', 8),
('Faculty of Law', 9),
('Faculty of Veterinary Medicine', 15);

INSERT INTO Professors (ProfessorName, HireDate, DepartmentID, EntityID)
VALUES 
('Dr. Khaled Mohammed', '2010-09-15', 1, 4),
('Dr. Sara Adel', '2012-08-01', 2, 5),
('Dr. Hassan Abd Al-Rahman', '2011-11-22', 3, 15),
('Dr. Laila Nasser', '2015-04-17', 4, 5),
('Dr. Mohammed Emad', '2018-03-14', 5, 5),
('Dr. Adel Youssef', '2019-09-23', 6, 4),
('Dr. Nadia Saleh', '2016-07-09', 7, 5),
('Dr. Mona Ibrahim', '2020-10-05', 8, 4),
('Dr. Ahmed Ali', '2021-01-19', 9, 5),
('Dr. Khaled Mahmoud', '2022-02-22', 10, 4),
('Dr. Sami Mostafa', '2023-04-15', 11, 5),
('Dr. Inas Ahmed', '2010-09-15', 12, 5),
('Dr. Tarek Hussein', '2012-08-01', 13, 4),
('Dr. Amr Khaled', '2018-03-14', 14, 5),
('Dr. Laila Hani', '2019-09-23', 15, 4);

INSERT INTO Students (Name, DateOfBirth, DepartmentID, EnrollmentDate, EntityID)
VALUES 
('Abdullah Hussein', '1998-05-23', 1, '2021-09-01', 1),
('Ahmed Omar', '1999-11-30', 2, '2021-09-01', 2),
('Fatima Ali', '2000-03-19', 3, '2022-02-14', 3),
('Reem Gamal', '1997-07-22', 4, '2021-09-01', 14),
('Yasmin Khaled', '1998-10-25', 5, '2020-09-10', 1),
('Mohammed Ahmed', '1999-02-14', 6, '2021-09-01', 3),
('Laila Saeed', '1997-05-19', 7, '2020-09-10', 3),
('Noura Ali', '1999-08-05', 8, '2022-02-14', 1),
('Khaled Mostafa', '2000-11-13', 9, '2021-09-01', 3),
('Huda Sameer', '1998-04-21', 10, '2020-09-10', 2),
('Hassan Abdulaziz', '1999-06-30', 11, '2021-09-01', 3),
('Laila Nour', '1997-12-12', 12, '2021-09-01', 1),
('Sami Mahmoud', '1999-10-08', 13, '2022-02-14', 2),
('Amani Ahmed', '1998-03-05', 14, '2021-09-01', 2),
('Youssef Abdulrahman', '2000-07-07', 15, '2022-02-14', 1);

INSERT INTO Courses (CourseName, CourseDescription, DepartmentID, ProfessorID, EntityID)
VALUES 
('Advanced Programming', 'An advanced course in programming with various languages.', 1, 4, 6),
('Database Fundamentals', 'Introduction to database design and management.', 2, 5, 7),
('Software Engineering', 'Principles of software development and maintenance.', 3, 15, 6),
('Project Management', 'Skills for planning and managing projects.', 4, 5, 7),
('Systems Analysis', 'Concepts and techniques of systems analysis.', 5, 5, 6),
('Computer Mathematics', 'Mathematical foundations for information technology.', 6, 4, 7),
('Computer Networks', 'Fundamentals and applications of computer networking.', 7, 5, 6),
('Artificial Intelligence', 'Introduction to AI and its applications.', 8, 4, 7),
('Operating Systems', 'Principles of operating and managing computer systems.', 9, 5, 6),
('Object-Oriented Programming', 'Concepts of object-oriented programming.', 10, 4, 7),
('Machine Learning', 'Introduction to machine learning.', 11, 5, 6),
('Information Security', 'Basics of information security and data protection.', 12, 4, 7),
('Data Analysis', 'Principles and techniques of data analysis.', 13, 5, 6),
('Web Design', 'Techniques for designing and developing websites.', 14, 4, 7),
('Data Science', 'Introduction to data science and analytics.', 15, 5, 6);

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, EntityID)
VALUES 
(1, 1, '2021-09-10', 10),
(2, 2, '2021-09-10', 11),
(3, 3, '2021-09-10', 12),
(4, 4, '2021-09-10', 10),
(5, 5, '2022-02-20', 11),
(6, 6, '2022-02-20', 12),
(7, 7, '2022-02-20', 10),
(8, 8, '2022-02-20', 11),
(9, 9, '2021-09-10', 12),
(10, 10, '2021-09-10', 10),
(11, 11, '2021-09-10', 11),
(12, 12, '2022-02-20', 12),
(13, 13, '2022-02-20', 10),
(14, 14, '2022-02-20', 11),
(15, 15, '2022-02-20', 12);

INSERT INTO Grades (StudentID, CourseID, Grade, GradeDate, EntityID)
VALUES 
(1, 1, 'A', '2022-01-15', 10),
(2, 2, 'B+', '2022-01-16', 11),
(3, 3, 'A-', '2022-01-17', 12),
(4, 4, 'B', '2022-01-18', 10),
(5, 5, 'C+', '2022-01-19', 11),
(6, 6, 'A', '2022-01-20', 12),
(7, 7, 'B-', '2022-01-21', 10),
(8, 8, 'A', '2022-01-22', 11),
(9, 9, 'B+', '2022-01-23', 12),
(10, 10, 'C', '2022-01-24', 10),
(11, 11, 'A-', '2022-01-25', 11),
(12, 12, 'B', '2022-01-26', 12),
(13, 13, 'A', '2022-01-27', 10),
(14, 14, 'B+', '2022-01-28', 11),
(15, 15, 'A-', '2022-01-29', 12);
