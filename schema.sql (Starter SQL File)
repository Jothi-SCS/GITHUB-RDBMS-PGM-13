CREATE TABLE Course (
    CourseName VARCHAR(100) PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseName VARCHAR(100) NOT NULL,
    FOREIGN KEY (CourseName) REFERENCES Course(CourseName)
);
