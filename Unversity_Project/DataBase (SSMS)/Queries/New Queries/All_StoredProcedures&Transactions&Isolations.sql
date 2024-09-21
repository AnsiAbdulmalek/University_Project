--to see all the transactions in the database
SELECT * FROM sys.dm_tran_active_transactions
--to see how many of them
SELECT count(*)AS Active_Transactions FROM sys.dm_tran_active_transactions

CREATE PROCEDURE InsertUser
    @Username VARCHAR(50),
    @Password VARCHAR(50),
    @Role VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Users (Username, Password, Role)
        VALUES (@Username, @Password, @Role);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateUser
    @UserID INT,
    @Username VARCHAR(50),
    @Password VARCHAR(50),
    @Role VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Users
        SET Username = @Username,
            Password = @Password,
            Role = @Role
        WHERE UserID = @UserID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteUser
    @UserID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Users WHERE UserID = @UserID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllUsers
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Users;
END;
GO


CREATE PROCEDURE InsertUniversityEntity
    @EntityType VARCHAR(20),
    @EntityName VARCHAR(100)
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO UniversityEntities (EntityType, EntityName)
        VALUES (@EntityType, @EntityName);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateUniversityEntity
    @EntityID INT,
    @EntityType VARCHAR(20),
    @EntityName VARCHAR(100)
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE UniversityEntities
        SET EntityType = @EntityType,
            EntityName = @EntityName
        WHERE EntityID = @EntityID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteUniversityEntity
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM UniversityEntities WHERE EntityID = @EntityID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllUniversityEntities
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM UniversityEntities;
END;
GO


CREATE PROCEDURE InsertDepartment
    @DepartmentName VARCHAR(100),
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Departments (DepartmentName, EntityID)
        VALUES (@DepartmentName, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateDepartment
    @DepartmentID INT,
    @DepartmentName VARCHAR(100),
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Departments
        SET DepartmentName = @DepartmentName,
            EntityID = @EntityID
        WHERE DepartmentID = @DepartmentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteDepartment
    @DepartmentID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Departments WHERE DepartmentID = @DepartmentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllDepartments
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Departments;
END;
GO


CREATE PROCEDURE InsertProfessor
    @ProfessorName VARCHAR(100),
    @HireDate DATE,
    @DepartmentID INT,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Professors (ProfessorName, HireDate, DepartmentID, EntityID)
        VALUES (@ProfessorName, @HireDate, @DepartmentID, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateProfessor
    @ProfessorID INT,
    @ProfessorName VARCHAR(100),
    @HireDate DATE,
    @DepartmentID INT,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Professors
        SET ProfessorName = @ProfessorName,
            HireDate = @HireDate,
            DepartmentID = @DepartmentID,
            EntityID = @EntityID
        WHERE ProfessorID = @ProfessorID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteProfessor
    @ProfessorID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Professors WHERE ProfessorID = @ProfessorID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllProfessors
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Professors;
END;
GO


CREATE PROCEDURE InsertStudent
    @Name VARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Students (Name, DateOfBirth, DepartmentID, EnrollmentDate, EntityID)
        VALUES (@Name, @DateOfBirth, @DepartmentID, @EnrollmentDate, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateStudent
    @StudentID INT,
    @Name VARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Students
        SET Name = @Name,
            DateOfBirth = @DateOfBirth,
            DepartmentID = @DepartmentID,
            EnrollmentDate = @EnrollmentDate,
            EntityID = @EntityID
        WHERE StudentID = @StudentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteStudent
    @StudentID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Students WHERE StudentID = @StudentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllStudents
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Students;
END;
GO


CREATE PROCEDURE InsertCourse
    @CourseName VARCHAR(100),
    @CourseDescription TEXT,
    @DepartmentID INT,
    @ProfessorID INT,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Courses (CourseName, CourseDescription, DepartmentID, ProfessorID, EntityID)
        VALUES (@CourseName, @CourseDescription, @DepartmentID, @ProfessorID, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateCourse
    @CourseID INT,
    @CourseName VARCHAR(100),
    @CourseDescription TEXT,
    @DepartmentID INT,
    @ProfessorID INT,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Courses
        SET CourseName = @CourseName,
            CourseDescription = @CourseDescription,
            DepartmentID = @DepartmentID,
            ProfessorID = @ProfessorID,
            EntityID = @EntityID
        WHERE CourseID = @CourseID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteCourse
    @CourseID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Courses WHERE CourseID = @CourseID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllCourses
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Courses;
END;
GO


CREATE PROCEDURE InsertEnrollment
    @StudentID INT,
    @CourseID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, EntityID)
        VALUES (@StudentID, @CourseID, @EnrollmentDate, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateEnrollment
    @EnrollmentID INT,
    @StudentID INT,
    @CourseID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Enrollments
        SET StudentID = @StudentID,
            CourseID = @CourseID,
            EnrollmentDate = @EnrollmentDate,
            EntityID = @EntityID
        WHERE EnrollmentID = @EnrollmentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteEnrollment
    @EnrollmentID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        DELETE FROM Enrollments WHERE EnrollmentID = @EnrollmentID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllEnrollments
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Enrollments;
END;
GO


CREATE PROCEDURE InsertGrade
    @StudentID INT,
    @CourseID INT,
    @Grade VARCHAR(5),
    @GradeDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        INSERT INTO Grades (StudentID, CourseID, Grade, GradeDate, EntityID)
        VALUES (@StudentID, @CourseID, @Grade, @GradeDate, @EntityID);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE UpdateGrade
    @GradeID INT,
    @StudentID INT,
    @CourseID INT,
    @Grade VARCHAR(5),
    @GradeDate DATE,
    @EntityID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
        UPDATE Grades
        SET StudentID = @StudentID,
            CourseID = @CourseID,
            Grade = @Grade,
            GradeDate = @GradeDate,
            EntityID = @EntityID
        WHERE GradeID = @GradeID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE DeleteGrade
    @GradeID INT
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
		DELETE FROM Grades WHERE GradeID = @GradeID;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO

CREATE PROCEDURE SelectAllGrades
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
    SELECT * FROM Grades;
END;
GO