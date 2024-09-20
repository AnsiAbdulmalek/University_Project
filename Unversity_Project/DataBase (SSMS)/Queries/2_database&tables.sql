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