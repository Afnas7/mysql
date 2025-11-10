-- You are managing a student enrollment database for a training center. The table is called students and contains these columns:
-- id (number)
-- name (text)
-- course (text)
-- fees_paid (number)
-- status (text: 'Active' or 'Inactive')
-- Complete the following tasks:
-- Insert 3 new students into the table with the following details:
-- (1, 'Alice', 'Web Development', 5000, 'Inactive')
-- (2, 'Bob', 'Data Science', 7000, 'Inactive')
-- (3, 'Charlie', 'UI/UX Design', 4000, 'Active')
INSERT INTO `student`(`id`, `name`, `course`, `fees_paid`, `status`) 
VALUES (1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active')
-- Use a query to view only those students whose fees_paid is greater than 5000.
SELECT * FROM `student` WHERE fees_paid >5000
-- Update the status to 'Active' for students in the 'Web Development' course.
UPDATE `student` SET `status`='Active' WHERE course='Web Development'
-- Increase the fees_paid by 1000 for students enrolled in 'Data Science'.
UPDATE `student` SET `fees_paid`= fees_paid+1000 WHERE course = 'Data Science'
-- Update both status to 'Inactive' and reduce fees_paid by 500 for the student whose id is 3.
UPDATE `student` SET fees_paid= fees_paid-500,status='Inactive' WHERE id=3
-- Delete the student whose id is 2.
DELETE FROM `student` WHERE id =2;
-- Delete all students who are 'Inactive'.
DELETE FROM students
WHERE status = 'Inactive';