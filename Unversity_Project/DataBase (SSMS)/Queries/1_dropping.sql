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
