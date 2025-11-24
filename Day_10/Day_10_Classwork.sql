-- You are helping design a student registration system for a training institute. You need to:
-- Create a table called students with the following information:
-- student_id (a unique number for each student)
-- name (student's name)
-- email (each student must have a unique email address)
-- Create another table called courses with:
-- course_id (a unique number for each course)
-- course_name (name of the course)
-- Create a table called enrollments to store which student has enrolled in which course. This table should:
-- Include student_id and course_id
-- Make sure both values must match existing records in the other two tables

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT
);
ALTER TABLE enrollments
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id) REFERENCES students(student_id);
ALTER TABLE enrollments
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id) REFERENCES courses(course_id);
