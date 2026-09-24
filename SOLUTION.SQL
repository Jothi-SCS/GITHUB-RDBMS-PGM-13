CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_id INT,
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
           
