-- View to show detailed student information
CREATE VIEW vw_StudentDetails
AS
SELECT s.StudentID, s.Name, s.DateOfBirth, d.DepartmentName, e.EnrollmentDate
FROM Students s
JOIN Departments d ON s.DepartmentID = d.DepartmentID
JOIN Enrollments e ON s.StudentID = e.StudentID;

SELECT * FROM vw_StudentDetails