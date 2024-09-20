--to see all triggers in db
SELECT count(*)AS Total_Triggers FROM sys.triggers

-- Trigger to log the creation of a new student record
CREATE TRIGGER trg_AfterInsert_Student
ON Students
AFTER INSERT
AS
BEGIN
    DECLARE @StudentID INT, @Name NVARCHAR(100);
    
    -- Fetching the inserted data
    SELECT @StudentID = i.StudentID, @Name = i.Name
    FROM INSERTED i;

    -- Inserting a log entry when a new student is added
    INSERT INTO StudentLog (StudentID, LogMessage, LogDate)
    VALUES (@StudentID, 'New student added: ' + @Name, GETDATE());
END;

--2
-- Trigger to delete related enrollment records when a course is deleted
CREATE TRIGGER trg_AfterDelete_Course
ON Courses
AFTER DELETE
AS
BEGIN
    -- Delete related enrollments
    DELETE FROM Enrollments
    WHERE CourseID IN (SELECT d.CourseID FROM DELETED d);
    
    -- This action could trigger other related operations, such as cleanup in other tables.
END;