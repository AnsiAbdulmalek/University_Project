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