--to see all the transactions in the database
SELECT * FROM sys.dm_tran_active_transactions
--to see how many of them
SELECT count(*)AS Active_Transactions FROM sys.dm_tran_active_transactions


-- Insert new User with transaction and error handling
BEGIN TRY
    BEGIN TRANSACTION; -- Start the transaction
    
    -- Insert into Users
    INSERT INTO Users (Username, Password, Role)
    VALUES ('NewAdmin', 'AdminPass123!', 'Admin');
    
    -- Insert into Students table
    INSERT INTO Students (Name, DateOfBirth, DepartmentID, EnrollmentDate, EntityID)
    VALUES ('John Doe', '1998-09-15', 1, GETDATE(), 1);
    
    -- Insert into Professors table
    INSERT INTO Professors (ProfessorName, HireDate, DepartmentID, EntityID)
    VALUES ('Dr. Smith', '2010-06-01', 1, 2);
    
    -- Commit the transaction if all inserts succeed
    COMMIT TRANSACTION;
    PRINT 'Transaction successfully committed.';
    
END TRY
BEGIN CATCH
    -- Rollback the transaction if there is an error
    ROLLBACK TRANSACTION;
    
    -- Log the error details
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    SELECT 
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();
    
    -- Print or log the error message
    PRINT 'Error occurred: ' + @ErrorMessage;
END CATCH;

--select
SELECT * FROM Users
SELECT * FROM Students
SELECT * FROM Professors


--5
-- Insert enrollment with error handling and transaction
BEGIN TRY
    BEGIN TRANSACTION; -- Start the transaction
    
    -- Insert into Enrollments
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, EntityID)
    VALUES (1, 101, GETDATE(), 3);
    
    -- Insert related Grade (initial grade entry)
    INSERT INTO Grades (StudentID, CourseID, Grade, GradeDate, EntityID)
    VALUES (1, 101, 'A', GETDATE(), 3);
    
    -- Commit the transaction
    COMMIT TRANSACTION;
    PRINT 'Transaction committed successfully.';
    
END TRY
BEGIN CATCH
    -- Rollback in case of an error
    ROLLBACK TRANSACTION;
    
    -- Capture and log the error
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;
    
    SELECT 
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();
    
    PRINT 'Error during transaction: ' + @ErrorMessage;
END CATCH;

--6
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