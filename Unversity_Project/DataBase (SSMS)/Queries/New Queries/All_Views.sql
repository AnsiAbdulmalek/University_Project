--1
CREATE VIEW ActiveStudentEnrollments AS
SELECT 
    s.StudentID,
    s.Name AS StudentName,
    s.DateOfBirth,
    s.EnrollmentDate,
    c.CourseID,
    c.CourseName,
    p.ProfessorName,
    e.EnrollmentDate AS CourseEnrollmentDate
FROM 
    Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
WHERE 
    s.EnrollmentDate IS NOT NULL;

--2
CREATE VIEW CourseOfferings AS
SELECT 
    c.CourseID,
    c.CourseName,
    c.CourseDescription,
    d.DepartmentName,
    p.ProfessorName,
    u.EntityName AS University
FROM 
    Courses c
JOIN Departments d ON c.DepartmentID = d.DepartmentID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
JOIN UniversityEntities u ON c.EntityID = u.EntityID;


--3
CREATE VIEW StudentGradesView AS
SELECT 
    s.StudentID,
    s.Name AS StudentName,
    c.CourseID,
    c.CourseName,
    g.Grade,
    g.GradeDate,
    p.ProfessorName,
    d.DepartmentName
FROM 
    Students s
JOIN Grades g ON s.StudentID = g.StudentID
JOIN Courses c ON g.CourseID = c.CourseID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
JOIN Departments d ON c.DepartmentID = d.DepartmentID;


--4
CREATE VIEW ProfessorCourses AS
SELECT 
    p.ProfessorID,
    p.ProfessorName,
    c.CourseID,
    c.CourseName,
    d.DepartmentName
FROM 
    Professors p
JOIN Courses c ON p.ProfessorID = c.ProfessorID
JOIN Departments d ON c.DepartmentID = d.DepartmentID;


--5
CREATE VIEW UniversityOverview AS
SELECT 
    u.EntityName AS UniversityName,
    d.DepartmentName,
    p.ProfessorName,
    c.CourseName,
    c.CourseDescription
FROM 
    UniversityEntities u
JOIN Departments d ON u.EntityID = d.EntityID
JOIN Professors p ON d.DepartmentID = p.DepartmentID
JOIN Courses c ON p.ProfessorID = c.ProfessorID;


--6
CREATE VIEW StudentDepartmentView AS
SELECT 
    s.StudentID,
    s.Name AS StudentName,
    d.DepartmentName,
    u.EntityName AS University
FROM 
    Students s
JOIN Departments d ON s.DepartmentID = d.DepartmentID
JOIN UniversityEntities u ON s.EntityID = u.EntityID;

--7
CREATE VIEW CourseEnrollmentSummary AS
SELECT 
    c.CourseID,
    c.CourseName,
    p.ProfessorName,
    d.DepartmentName,
    COUNT(e.StudentID) AS TotalEnrolled
FROM 
    Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
JOIN Departments d ON c.DepartmentID = d.DepartmentID
GROUP BY 
    c.CourseID, 
    c.CourseName, 
    p.ProfessorName, 
    d.DepartmentName;


--8
	CREATE VIEW FullEnrollmentDetails AS
SELECT 
    s.StudentID,
    s.Name AS StudentName,
    c.CourseID,
    c.CourseName,
    p.ProfessorName,
    d.DepartmentName,
    e.EnrollmentDate
FROM 
    Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
JOIN Departments d ON c.DepartmentID = d.DepartmentID;


--9
CREATE VIEW LowGrades AS
SELECT 
    s.StudentID,
    s.Name AS StudentName,
    c.CourseName,
    g.Grade,
    p.ProfessorName,
    d.DepartmentName
FROM 
    Students s
JOIN Grades g ON s.StudentID = g.StudentID
JOIN Courses c ON g.CourseID = c.CourseID
JOIN Professors p ON c.ProfessorID = p.ProfessorID
JOIN Departments d ON c.DepartmentID = d.DepartmentID
WHERE 
    g.Grade < 'C';  -- Modify this threshold as needed
