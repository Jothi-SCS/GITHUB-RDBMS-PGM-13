-- RDBMS Assignment 13
-- Normalize Student Table up to Third Normal Form (3NF)
-- ============================================================

-- Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Faculty Table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    FacultyID INT NOT NULL,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseID INT NOT NULL,
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);
