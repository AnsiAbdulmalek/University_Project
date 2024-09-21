-- Stored Procedures for Users Table

CREATE PROCEDURE InsertUser
    @Username VARCHAR(50),
    @Password VARCHAR(50),
    @Role VARCHAR(20)
AS
BEGIN
    INSERT INTO Users (Username, Password, Role)
    VALUES (@Username, @Password, @Role);
END;

CREATE PROCEDURE UpdateUser
    @UserID INT,
    @Username VARCHAR(50),
    @Password VARCHAR(50),
    @Role VARCHAR(20)
AS
BEGIN
    UPDATE Users
    SET Username = @Username,
        Password = @Password,
        Role = @Role
    WHERE UserID = @UserID;
END;

CREATE PROCEDURE DeleteUser
    @UserID INT
AS
BEGIN
    DELETE FROM Users WHERE UserID = @UserID;
END;

CREATE PROCEDURE SelectAllUsers
AS
BEGIN
    SELECT * FROM Users;
END;

-- Stored Procedures for UniversityEntities Table

CREATE PROCEDURE InsertUniversityEntity
    @EntityType VARCHAR(20),
    @EntityName VARCHAR(100)
AS
BEGIN
    INSERT INTO UniversityEntities (EntityType, EntityName)
    VALUES (@EntityType, @EntityName);
END;

CREATE PROCEDURE UpdateUniversityEntity
    @EntityID INT,
    @EntityType VARCHAR(20),
    @EntityName VARCHAR(100)
AS
BEGIN
    UPDATE UniversityEntities
    SET EntityType = @EntityType,
        EntityName = @EntityName
    WHERE EntityID = @EntityID;
END;

CREATE PROCEDURE DeleteUniversityEntity
    @EntityID INT
AS
BEGIN
    DELETE FROM UniversityEntities WHERE EntityID = @EntityID;
END;

CREATE PROCEDURE SelectAllUniversityEntities
AS
BEGIN
    SELECT * FROM UniversityEntities;
END;

-- Stored Procedures for Departments Table

CREATE PROCEDURE InsertDepartment
    @DepartmentName VARCHAR(100),
    @EntityID INT
AS
BEGIN
    INSERT INTO Departments (DepartmentName, EntityID)
    VALUES (@DepartmentName, @EntityID);
END;

CREATE PROCEDURE UpdateDepartment
    @DepartmentID INT,
    @DepartmentName VARCHAR(100),
    @EntityID INT
AS
BEGIN
    UPDATE Departments
    SET DepartmentName = @DepartmentName,
        EntityID = @EntityID
    WHERE DepartmentID = @DepartmentID;
END;

CREATE PROCEDURE DeleteDepartment
    @DepartmentID INT
AS
BEGIN
    DELETE FROM Departments WHERE DepartmentID = @DepartmentID;
END;

CREATE PROCEDURE SelectAllDepartments
AS
BEGIN
    SELECT * FROM Departments;
END;

-- Stored Procedures for Professors Table

CREATE PROCEDURE InsertProfessor
    @ProfessorName VARCHAR(100),
    @HireDate DATE,
    @DepartmentID INT,
    @EntityID INT
AS
BEGIN
    INSERT INTO Professors (ProfessorName, HireDate, DepartmentID, EntityID)
    VALUES (@ProfessorName, @HireDate, @DepartmentID, @EntityID);
END;

CREATE PROCEDURE UpdateProfessor
    @ProfessorID INT,
    @ProfessorName VARCHAR(100),
    @HireDate DATE,
    @DepartmentID INT,
    @EntityID INT
AS
BEGIN
    UPDATE Professors
    SET ProfessorName = @ProfessorName,
        HireDate = @HireDate,
        DepartmentID = @DepartmentID,
        EntityID = @EntityID
    WHERE ProfessorID = @ProfessorID;
END;

CREATE PROCEDURE DeleteProfessor
    @ProfessorID INT
AS
BEGIN
    DELETE FROM Professors WHERE ProfessorID = @ProfessorID;
END;

CREATE PROCEDURE SelectAllProfessors
AS
BEGIN
    SELECT * FROM Professors;
END;

-- Stored Procedures for Students Table

CREATE PROCEDURE InsertStudent
    @Name VARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    INSERT INTO Students (Name, DateOfBirth, DepartmentID, EnrollmentDate, EntityID)
    VALUES (@Name, @DateOfBirth, @DepartmentID, @EnrollmentDate, @EntityID);
END;

CREATE PROCEDURE UpdateStudent
    @StudentID INT,
    @Name VARCHAR(100),
    @DateOfBirth DATE,
    @DepartmentID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    UPDATE Students
    SET Name = @Name,
        DateOfBirth = @DateOfBirth,
        DepartmentID = @DepartmentID,
        EnrollmentDate = @EnrollmentDate,
        EntityID = @EntityID
    WHERE StudentID = @StudentID;
END;

CREATE PROCEDURE DeleteStudent
    @StudentID INT
AS
BEGIN
    DELETE FROM Students WHERE StudentID = @StudentID;
END;

CREATE PROCEDURE SelectAllStudents
AS
BEGIN
    SELECT * FROM Students;
END;

-- Stored Procedures for Courses Table

CREATE PROCEDURE InsertCourse
    @CourseName VARCHAR(100),
    @CourseDescription TEXT,
    @DepartmentID INT,
    @ProfessorID INT,
    @EntityID INT
AS
BEGIN
    INSERT INTO Courses (CourseName, CourseDescription, DepartmentID, ProfessorID, EntityID)
    VALUES (@CourseName, @CourseDescription, @DepartmentID, @ProfessorID, @EntityID);
END;

CREATE PROCEDURE UpdateCourse
    @CourseID INT,
    @CourseName VARCHAR(100),
    @CourseDescription TEXT,
    @DepartmentID INT,
    @ProfessorID INT,
    @EntityID INT
AS
BEGIN
    UPDATE Courses
    SET CourseName = @CourseName,
        CourseDescription = @CourseDescription,
        DepartmentID = @DepartmentID,
        ProfessorID = @ProfessorID,
        EntityID = @EntityID
    WHERE CourseID = @CourseID;
END;

CREATE PROCEDURE DeleteCourse
    @CourseID INT
AS
BEGIN
    DELETE FROM Courses WHERE CourseID = @CourseID;
END;

CREATE PROCEDURE SelectAllCourses
AS
BEGIN
    SELECT * FROM Courses;
END;

-- Stored Procedures for Enrollments Table

CREATE PROCEDURE InsertEnrollment
    @StudentID INT,
    @CourseID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, EntityID)
    VALUES (@StudentID, @CourseID, @EnrollmentDate, @EntityID);
END;

CREATE PROCEDURE UpdateEnrollment
    @EnrollmentID INT,
    @StudentID INT,
    @CourseID INT,
    @EnrollmentDate DATE,
    @EntityID INT
AS
BEGIN
    UPDATE Enrollments
    SET StudentID = @StudentID,
        CourseID = @CourseID,
        EnrollmentDate = @EnrollmentDate,
        EntityID = @EntityID
    WHERE EnrollmentID = @EnrollmentID;
END;

CREATE PROCEDURE DeleteEnrollment
    @EnrollmentID INT
AS
BEGIN
    DELETE FROM Enrollments WHERE EnrollmentID = @EnrollmentID;
END;

CREATE PROCEDURE SelectAllEnrollments
AS
BEGIN
    SELECT * FROM Enrollments;
END;

-- Stored Procedures for Grades Table

CREATE PROCEDURE InsertGrade
    @StudentID INT,
    @CourseID INT,
    @Grade VARCHAR(5),
    @GradeDate DATE,
    @EntityID INT
AS
BEGIN
    INSERT INTO Grades (StudentID, CourseID, Grade, GradeDate, EntityID)
    VALUES (@StudentID, @CourseID, @Grade, @GradeDate, @EntityID);
END;

CREATE PROCEDURE UpdateGrade
    @GradeID INT,
    @StudentID INT,
    @CourseID INT,
    @Grade VARCHAR(5),
    @GradeDate DATE,
    @EntityID INT
AS
BEGIN
    UPDATE Grades
    SET StudentID = @StudentID,
        CourseID = @CourseID,
        Grade = @Grade,
        GradeDate = @GradeDate,
        EntityID = @EntityID
    WHERE GradeID = @GradeID;
END;

CREATE PROCEDURE DeleteGrade
    @GradeID INT
AS
BEGIN
    DELETE FROM Grades WHERE GradeID = @GradeID;
END;

CREATE PROCEDURE SelectAllGrades
AS
BEGIN
    SELECT * FROM Grades;
END;
