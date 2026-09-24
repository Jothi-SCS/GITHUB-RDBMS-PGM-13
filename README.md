# RDBMS Assignment 13 – Normalize Student Table up to 3NF

## Problem Statement

Consider the following Student table:

**Student(StudentID, StudentName, CourseName, FacultyName, DepartmentName)**

Normalize the table up to **Third Normal Form (3NF)**.

## Learning Objective

Students should be able to:

* Identify functional dependencies.
* Understand 1NF, 2NF and 3NF.
* Remove partial dependencies.
* Remove transitive dependencies.
* Create normalized relational tables.
* Define Primary Keys and Foreign Keys.
* Implement the normalized database using SQL.

## Student Instructions

1. Read the problem carefully.
2. Identify the functional dependencies.
3. Normalize the given relation up to 3NF.
4. Create the required tables.
5. Define appropriate Primary Keys.
6. Define appropriate Foreign Keys.
7. Insert the equivalent data into the normalized tables.
8. Write your complete SQL solution in `solution.sql`.
9. Do not modify `starter.sql`.
10. Do not modify the files inside the `tests` folder.
11. Do not modify the GitHub Actions workflow.
12. Commit and push your solution to GitHub.

---

## Required 3NF Structure

Your solution should contain the following four tables.

### 1. Department

| Column         | Key         |
| -------------- | ----------- |
| DepartmentID   | Primary Key |
| DepartmentName |             |

### 2. Faculty

| Column       | Key         |
| ------------ | ----------- |
| FacultyID    | Primary Key |
| FacultyName  |             |
| DepartmentID | Foreign Key |

### 3. Course

| Column     | Key         |
| ---------- | ----------- |
| CourseID   | Primary Key |
| CourseName |             |
| FacultyID  | Foreign Key |

### 4. Student

| Column      | Key         |
| ----------- | ----------- |
| StudentID   | Primary Key |
| StudentName |             |
| CourseID    | Foreign Key |

---

## Expected Dependency Structure

The intended dependency chain is:

```text
StudentID → StudentName, CourseID

CourseID → CourseName, FacultyID

FacultyID → FacultyName, DepartmentID

DepartmentID → DepartmentName
```

Therefore:

```text
Student
   |
   ↓
Course
   |
   ↓
Faculty
   |
   ↓
Department
```

---

## Important Requirements

Use the following exact table names:

```text
Department
Faculty
Course
Student
```

Use the following exact column names:

```text
Department
- DepartmentID
- DepartmentName

Faculty
- FacultyID
- FacultyName
- DepartmentID

Course
- CourseID
- CourseName
- FacultyID

Student
- StudentID
- StudentName
- CourseID
```

Your SQL must be compatible with **MySQL 8.x**.

---

## Submission File

Write your answer only in:

```text
solution.sql
```

The `starter.sql` file contains the original data supplied by the teacher.

Do not modify:

```text
starter.sql
tests/test_solution.py
.github/workflows/autograding.yml
```

---

## Automated Evaluation

GitHub Actions will automatically:

1. Start a MySQL 8.0 database.
2. Load the original student data.
3. Execute your `solution.sql`.
4. Check whether the required tables exist.
5. Check the required columns.
6. Check Primary Keys.
7. Check Foreign Keys.
8. Check whether the original student information is preserved.
9. Check the Student → Course → Faculty → Department relationship.
10. Report the test results in GitHub Actions.

---

## Submission

After completing the SQL program:

```bash
git add .
git commit -m "Completed Assignment 13 - 3NF"
git push
```

GitHub Actions will automatically run the tests after you push your solution.

## Files in the Repository

```text
README.md
starter.sql
solution.sql
tests/
    test_solution.py
.github/
    workflows/
        autograding.yml
```

## Academic Integrity

Students must write their own SQL solution. Do not copy another student's solution.

Good luck!
