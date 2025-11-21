-- You are managing a student database for an online course platform. You have a table named students with the following columns:
-- id (number)
-- name (text)
-- course (text)
-- score (number)
-- email (text)
-- phone (text)
-- city (text)
-- bonus_points (number, can be NULL)
-- Complete the following tasks:
-- Add the following students into the students table:
-- (1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5)
-- (2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL)
-- (3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL)
-- (4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2)
-- (5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4)
-- (6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL)
INSERT INTO `online_course`(`id`, `name`, `course`, `score`, `email`, `phone`, `city`, `bonus_points`) VALUES (1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL)
-- Show the total number of students in each course.
SELECT course,COUNT(course) AS "number of students" FROM `online_course` GROUP BY course;
-- Show the average score for each course, but only for courses where the average score is more than 80.
SELECT AVG(score) AS 'average score', `course` FROM `online_course` GROUP BY course HAVING AVG(score)>80
-- Show names and scores of students who are from Chennai or Mumbai.
SELECT name,score FROM `online_course` WHERE city IN ('Chennai','Mumbai');
-- Show the details of students who don’t have any bonus points.
SELECT * FROM `online_course` WHERE bonus_points IS NULL;
-- Combine the list of student names from Chennai and from Mumbai into a single column list (use UNION).
SELECT name FROM `online_course` WHERE city='Mumbai'
UNION
SELECT name FROM `online_course` WHERE city='Chennai'