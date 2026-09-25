CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    CourseID INT,
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);
