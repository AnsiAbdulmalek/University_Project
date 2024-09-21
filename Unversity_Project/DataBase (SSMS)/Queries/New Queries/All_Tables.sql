-- Drop tables and entities separately
IF OBJECT_ID('Grades', 'U') IS NOT NULL DROP TABLE Grades;
IF OBJECT_ID('Enrollments', 'U') IS NOT NULL DROP TABLE Enrollments;
IF OBJECT_ID('Courses', 'U') IS NOT NULL DROP TABLE Courses;
IF OBJECT_ID('Students', 'U') IS NOT NULL DROP TABLE Students;
IF OBJECT_ID('Professors', 'U') IS NOT NULL DROP TABLE Professors;
IF OBJECT_ID('Departments', 'U') IS NOT NULL DROP TABLE Departments;
IF OBJECT_ID('UniversityEntities', 'U') IS NOT NULL DROP TABLE UniversityEntities;
IF OBJECT_ID('Users', 'U') IS NOT NULL DROP TABLE Users;

-- Drop roles separately
IF EXISTS(SELECT * FROM sys.database_principals WHERE name = 'AdminRole') DROP ROLE AdminRole;
IF EXISTS(SELECT * FROM sys.database_principals WHERE name = 'UserRole') DROP ROLE UserRole;

-- Drop logins separately
IF EXISTS(SELECT * FROM sys.sql_logins WHERE name = 'AdminLogin') DROP LOGIN AdminLogin;
IF EXISTS(SELECT * FROM sys.sql_logins WHERE name = 'UserLogin') DROP LOGIN UserLogin;

-- Drop users separately
IF EXISTS(SELECT * FROM sys.database_principals WHERE name = 'Admin') DROP USER Admin;
IF EXISTS(SELECT * FROM sys.database_principals WHERE name = 'User') DROP USER [User];

-- Create the UniversityDB database and use it
IF DB_ID('UniversityDB') IS NOT NULL DROP DATABASE UniversityDB;
GO

CREATE DATABASE UniversityDB;
GO

USE UniversityDB;
GO

-- Step 1: Create the Users table for managing admins and users
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Role VARCHAR(20) CHECK (Role IN ('Admin', 'User')),
    CreatedDate DATETIME DEFAULT GETDATE()
);

-- Step 2: Create the normalization table (UniversityEntities)
CREATE TABLE UniversityEntities (
    EntityID INT PRIMARY KEY IDENTITY(1,1),
    EntityType VARCHAR(20) CHECK (EntityType IN ('Student', 'Professor', 'Course', 'Department', 'Enrollment', 'Grade')),
    EntityName VARCHAR(100)
);

-- Step 3: Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL,
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 4: Create the Professors table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY IDENTITY(1,1),
    ProfessorName VARCHAR(100) NOT NULL,
    HireDate DATE NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 5: Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    EnrollmentDate DATE NOT NULL,
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 6: Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName VARCHAR(100) NOT NULL,
    CourseDescription TEXT,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    ProfessorID INT FOREIGN KEY REFERENCES Professors(ProfessorID),
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 7: Create the Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    EnrollmentDate DATE NOT NULL,
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 8: Create the Grades table (linked directly to Students and Courses)
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    Grade VARCHAR(5) NOT NULL,
    GradeDate DATE NOT NULL,
    EntityID INT FOREIGN KEY REFERENCES UniversityEntities(EntityID)
);

-- Step 9: Create Logins for Admin and User
CREATE LOGIN AdminLogin WITH PASSWORD = 'AdminPass123!';
CREATE LOGIN UserLogin WITH PASSWORD = 'UserPass123!';

-- Step 10: Create Users for Admin and [User]
CREATE USER Admin FOR LOGIN AdminLogin;
CREATE USER [User] FOR LOGIN UserLogin;

-- Step 11: Create Roles for Admin and User
CREATE ROLE AdminRole;
CREATE ROLE UserRole;

-- Step 12: Add Users to Roles
EXEC sp_addrolemember 'AdminRole', 'Admin';
EXEC sp_addrolemember 'UserRole', 'User';

-- Step 13: Grant Admin full control on all tables
GRANT SELECT, INSERT, UPDATE, DELETE ON Users TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON UniversityEntities TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Departments TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Professors TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Students TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Courses TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Enrollments TO AdminRole;
GRANT SELECT, INSERT, UPDATE, DELETE ON Grades TO AdminRole;

-- Step 14: Grant User read-only permissions (SELECT only) on all tables
GRANT SELECT ON Users TO UserRole;
GRANT SELECT ON UniversityEntities TO UserRole;
GRANT SELECT ON Departments TO UserRole;
GRANT SELECT ON Professors TO UserRole;
GRANT SELECT ON Students TO UserRole;
GRANT SELECT ON Courses TO UserRole;
GRANT SELECT ON Enrollments TO UserRole;
GRANT SELECT ON Grades TO UserRole;
GO


CREATE TABLE ChangeLog (
    ChangeLogID INT IDENTITY(1,1) PRIMARY KEY, -- Unique identifier for each log entry
    TableName VARCHAR(50),                     -- The name of the table where the change occurred
    Operation VARCHAR(10),                     -- The type of operation (INSERT, UPDATE, DELETE)
    UserID INT,                                -- The ID of the user who made the change
    ChangeDate DATETIME,                       -- The date and time of the change
    Details VARCHAR(MAX)                       -- Details about the change
);
 drop table ChangeLog

 CREATE TABLE ChangeLog (
    ChangeLogID INT IDENTITY(1,1) PRIMARY KEY, -- Unique identifier for each log entry
    TableName VARCHAR(50),                     -- The name of the table where the change occurred
    Operation VARCHAR(10),                     -- The type of operation (INSERT, UPDATE, DELETE)
    UserID INT,                                -- The ID of the user who made the change
    ChangeDate DATETIME,                       -- The date and time of the change
    Details VARCHAR(MAX)                       -- Details about the change
);

---

--to see all triggers in db
SELECT count(*)AS Total_Triggers FROM sys.triggers

