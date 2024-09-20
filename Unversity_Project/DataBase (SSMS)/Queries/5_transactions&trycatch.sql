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