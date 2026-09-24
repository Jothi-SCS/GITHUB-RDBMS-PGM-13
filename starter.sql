-- ============================================================
-- RDBMS Assignment 13
-- Normalize Student Table up to Third Normal Form (3NF)
-- ============================================================

-- This is the original unnormalized table.
-- Students must NOT modify this file.

DROP TABLE IF EXISTS Student_Original;

CREATE TABLE Student_Original (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(100) NOT NULL,
CourseName VARCHAR(100) NOT NULL,
FacultyName VARCHAR(100) NOT NULL,
DepartmentName VARCHAR(100) NOT NULL
);

INSERT INTO Student_Original
(StudentID, StudentName, CourseName, FacultyName, DepartmentName)
VALUES
(101, 'Arun',  'BSc Computer Science', 'Dr. Kumar', 'Computer Science'),
(102, 'Priya', 'BSc Computer Science', 'Dr. Kumar', 'Computer Science'),
(103, 'Rahul', 'BCA',                  'Dr. Meena', 'Computer Applications'),
(104, 'Divya', 'BCA',                  'Dr. Meena', 'Computer Applications'),
(105, 'Kavin', 'BSc IT',               'Dr. Ravi',  'Information Technology');

-- ============================================================
-- Students should NOT write their answer in this file.
-- Write your solution in solution.sql
-- ============================================================
