--to see the codes of the stored procedures
sp_helptext 'sp_AddStudent';
sp_helptext 'sp_UpdateStudent';
sp_helptext 'sp_DeleteStudent';

-- Stored Procedure to insert a new student
CREATE PROCEDURE sp_AddStudent
    @Name NVARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT,
    @EnrollmentDate DATE
AS
BEGIN
    INSERT INTO Students (Name, DateOfBirth, DepartmentID, EnrollmentDate)
    VALUES (@Name, @DateOfBirth, @DepartmentID, @EnrollmentDate);
    
    -- Optionally, return a message
    PRINT 'New student inserted successfully';
END;

--2
-- Stored Procedure to update a student's data
CREATE PROCEDURE sp_UpdateStudent
    @StudentID INT,
    @Name NVARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT
AS
BEGIN
    UPDATE Students
    SET Name = @Name,
        DateOfBirth = @DateOfBirth,
        DepartmentID = @DepartmentID
    WHERE StudentID = @StudentID;
    
    PRINT 'Student updated successfully';
END;

--3
CREATE PROCEDURE sp_DeleteStudent
@ID INT
AS
BEGIN
    DELETE from  Students
    WHERE StudentID = @ID
	PRINT 'Student deleted successfully';
	END;

	--8
	-- View to show detailed student information
CREATE VIEW vw_StudentDetails
AS
SELECT s.StudentID, s.Name, s.DateOfBirth, d.DepartmentName, e.EnrollmentDate
FROM Students s
JOIN Departments d ON s.DepartmentID = d.DepartmentID
JOIN Enrollments e ON s.StudentID = e.StudentID;

SELECT * FROM vw_StudentDetails