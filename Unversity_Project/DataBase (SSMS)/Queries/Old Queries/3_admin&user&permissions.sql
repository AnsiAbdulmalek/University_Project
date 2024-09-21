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
