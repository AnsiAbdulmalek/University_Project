--to see all triggers in db
SELECT count(*)AS Total_Triggers FROM sys.triggers


CREATE TABLE ChangeLog (
    ChangeLogID INT IDENTITY(1,1) PRIMARY KEY, -- Unique identifier for each log entry
    TableName VARCHAR(50),                     -- Name of the table where the change occurred
    Operation VARCHAR(10),                     -- Type of operation (INSERT, UPDATE, DELETE)
    UserID INT,                                -- ID of the user who made the change
    ChangeDate DATETIME DEFAULT GETDATE(),     -- Date and time of the change
    Details VARCHAR(MAX)                       -- Details of what was changed
);

-- Trigger for INSERT on Users table
CREATE TRIGGER UserInsertLog
ON Users
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: Username=', i.Username, ', Role=', i.Role)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Users', 'INSERT', i.UserID, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Users table
CREATE TRIGGER UserUpdateLog
ON Users
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldUsername=', d.Username, ', NewUsername=', i.Username, ', OldRole=', d.Role, ', NewRole=', i.Role)
    FROM inserted i
    JOIN deleted d ON i.UserID = d.UserID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Users', 'UPDATE', i.UserID, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Users table
CREATE TRIGGER UserDeleteLog
ON Users
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: Username=', d.Username, ', Role=', d.Role)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Users', 'DELETE', d.UserID, GETDATE(), @Details
    FROM deleted d;
END;

-- Trigger for INSERT on UniversityEntities table
CREATE TRIGGER EntityInsertLog
ON UniversityEntities
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: EntityType=', i.EntityType, ', EntityName=', i.EntityName)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'UniversityEntities', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on UniversityEntities table
CREATE TRIGGER EntityUpdateLog
ON UniversityEntities
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldEntityType=', d.EntityType, ', NewEntityType=', i.EntityType, ', OldEntityName=', d.EntityName, ', NewEntityName=', i.EntityName)
    FROM inserted i
    JOIN deleted d ON i.EntityID = d.EntityID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'UniversityEntities', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on UniversityEntities table
CREATE TRIGGER EntityDeleteLog
ON UniversityEntities
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: EntityType=', d.EntityType, ', EntityName=', d.EntityName)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'UniversityEntities', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

-- Trigger for INSERT on Departments table
CREATE TRIGGER DepartmentInsertLog
ON Departments
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: DepartmentName=', i.DepartmentName, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Departments', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Departments table
CREATE TRIGGER DepartmentUpdateLog
ON Departments
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldDepartmentName=', d.DepartmentName, ', NewDepartmentName=', i.DepartmentName, ', OldEntityID=', d.EntityID, ', NewEntityID=', i.EntityID)
    FROM inserted i
    JOIN deleted d ON i.DepartmentID = d.DepartmentID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Departments', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Departments table
CREATE TRIGGER DepartmentDeleteLog
ON Departments
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: DepartmentName=', d.DepartmentName, ', EntityID=', d.EntityID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Departments', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

-- Trigger for INSERT on Professors table
CREATE TRIGGER ProfessorInsertLog
ON Professors
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: ProfessorName=', i.ProfessorName, ', HireDate=', i.HireDate, ', DepartmentID=', i.DepartmentID, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Professors', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Professors table
CREATE TRIGGER ProfessorUpdateLog
ON Professors
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldProfessorName=', d.ProfessorName, ', NewProfessorName=', i.ProfessorName, ', OldHireDate=', d.HireDate, ', NewHireDate=', i.HireDate, ', OldDepartmentID=', d.DepartmentID, ', NewDepartmentID=', i.DepartmentID)
    FROM inserted i
    JOIN deleted d ON i.ProfessorID = d.ProfessorID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Professors', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Professors table
CREATE TRIGGER ProfessorDeleteLog
ON Professors
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: ProfessorName=', d.ProfessorName, ', HireDate=', d.HireDate, ', DepartmentID=', d.DepartmentID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Professors', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

	-- Trigger for INSERT on Students table
CREATE TRIGGER StudentInsertLog
ON Students
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: Name=', i.Name, ', DateOfBirth=', i.DateOfBirth, ', DepartmentID=', i.DepartmentID, ', EnrollmentDate=', i.EnrollmentDate, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Students', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Students table
CREATE TRIGGER StudentUpdateLog
ON Students
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldName=', d.Name, ', NewName=', i.Name, ', OldDateOfBirth=', d.DateOfBirth, ', NewDateOfBirth=', i.DateOfBirth, 
                            ', OldDepartmentID=', d.DepartmentID, ', NewDepartmentID=', i.DepartmentID, 
                            ', OldEnrollmentDate=', d.EnrollmentDate, ', NewEnrollmentDate=', i.EnrollmentDate,
                            ', OldEntityID=', d.EntityID, ', NewEntityID=', i.EntityID)
    FROM inserted i
    JOIN deleted d ON i.StudentID = d.StudentID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Students', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Students table
CREATE TRIGGER StudentDeleteLog
ON Students
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: Name=', d.Name, ', DateOfBirth=', d.DateOfBirth, ', DepartmentID=', d.DepartmentID, ', EnrollmentDate=', d.EnrollmentDate, ', EntityID=', d.EntityID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Students', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;


--why stopped
-- Trigger for INSERT on Courses table
CREATE TRIGGER CourseInsertLog
ON Courses
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: CourseName=', i.CourseName, ', CourseDescription=', i.CourseDescription, ', DepartmentID=', i.DepartmentID, ', ProfessorID=', i.ProfessorID, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Courses', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Courses table
CREATE TRIGGER CourseUpdateLog
ON Courses
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldCourseName=', d.CourseName, ', NewCourseName=', i.CourseName, 
                            ', OldCourseDescription=', d.CourseDescription, ', NewCourseDescription=', i.CourseDescription, 
                            ', OldDepartmentID=', d.DepartmentID, ', NewDepartmentID=', i.DepartmentID,
                            ', OldProfessorID=', d.ProfessorID, ', NewProfessorID=', i.ProfessorID,
                            ', OldEntityID=', d.EntityID, ', NewEntityID=', i.EntityID)
    FROM inserted i
    JOIN deleted d ON i.CourseID = d.CourseID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Courses', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Courses table
CREATE TRIGGER CourseDeleteLog
ON Courses
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: CourseName=', d.CourseName, ', CourseDescription=', d.CourseDescription, ', DepartmentID=', d.DepartmentID, ', ProfessorID=', d.ProfessorID, ', EntityID=', d.EntityID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Courses', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

-- Trigger for INSERT on Enrollments table
CREATE TRIGGER EnrollmentInsertLog
ON Enrollments
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: StudentID=', i.StudentID, ', CourseID=', i.CourseID, ', EnrollmentDate=', i.EnrollmentDate, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Enrollments', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Enrollments table
CREATE TRIGGER EnrollmentUpdateLog
ON Enrollments
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldStudentID=', d.StudentID, ', NewStudentID=', i.StudentID, 
                            ', OldCourseID=', d.CourseID, ', NewCourseID=', i.CourseID, 
                            ', OldEnrollmentDate=', d.EnrollmentDate, ', NewEnrollmentDate=', i.EnrollmentDate,
                            ', OldEntityID=', d.EntityID, ', NewEntityID=', i.EntityID)
    FROM inserted i
    JOIN deleted d ON i.EnrollmentID = d.EnrollmentID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Enrollments', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Enrollments table
CREATE TRIGGER EnrollmentDeleteLog
ON Enrollments
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: StudentID=', d.StudentID, ', CourseID=', d.CourseID, ', EnrollmentDate=', d.EnrollmentDate, ', EntityID=', d.EntityID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Enrollments', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

-- Trigger for INSERT on Grades table
CREATE TRIGGER GradeInsertLog
ON Grades
AFTER INSERT
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was inserted
    SELECT @Details = CONCAT('Inserted: StudentID=', i.StudentID, ', CourseID=', i.CourseID, ', Grade=', i.Grade, ', GradeDate=', i.GradeDate, ', EntityID=', i.EntityID)
    FROM inserted i;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Grades', 'INSERT', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for UPDATE on Grades table
CREATE TRIGGER GradeUpdateLog
ON Grades
AFTER UPDATE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was updated
    SELECT @Details = CONCAT('Updated: OldStudentID=', d.StudentID, ', NewStudentID=', i.StudentID, 
                            ', OldCourseID=', d.CourseID, ', NewCourseID=', i.CourseID, 
                            ', OldGrade=', d.Grade, ', NewGrade=', i.Grade, 
                            ', OldGradeDate=', d.GradeDate, ', NewGradeDate=', i.GradeDate,
                            ', OldEntityID=', d.EntityID, ', NewEntityID=', i.EntityID)
    FROM inserted i
    JOIN deleted d ON i.GradeID = d.GradeID;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Grades', 'UPDATE', NULL, GETDATE(), @Details
    FROM inserted i;
END;

-- Trigger for DELETE on Grades table
CREATE TRIGGER GradeDeleteLog
ON Grades
AFTER DELETE
AS
BEGIN
    DECLARE @Details VARCHAR(MAX);

    -- Build details of what was deleted
    SELECT @Details = CONCAT('Deleted: StudentID=', d.StudentID, ', CourseID=', d.CourseID, ', Grade=', d.Grade, ', GradeDate=', d.GradeDate, ', EntityID=', d.EntityID)
    FROM deleted d;

    -- Log the change to ChangeLog
    INSERT INTO ChangeLog (TableName, Operation, UserID, ChangeDate, Details)
    SELECT 'Grades', 'DELETE', NULL, GETDATE(), @Details
    FROM deleted d;
END;

