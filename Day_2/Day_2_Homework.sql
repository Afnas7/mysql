-- You are helping a college library manage its books table. The table has the following columns:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- genre (text)
-- Complete the following tasks using only the allowed SQL methods and operators:
-- Insert 5 different books into the books table using the INSERT INTO command. Use different values for title, author, price, and genre.
INSERT INTO books (id, title, author, price, genre)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 499, 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 650, 'Science'),
(3, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 720, 'History'),
(4, 'Angels and Demons', 'Dan Brown', 380, 'Thriller'),
(5, 'The Alchemist', 'Paulo Coelho', 420, 'Fiction');
-- Select all books that have a price greater than 400.
SELECT * FROM `books` WHERE price >400
-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.
SELECT * FROM `books` WHERE genre IN ('History','Science','Fiction')
-- Select the book where the title is exactly 'The Great Gatsby'.
SELECT * FROM `books` WHERE title ='The Great Gatsby'
-- Select all books that are not written by 'Dan Brown'.
SELECT * FROM `books` WHERE author <> 'Dan Brown'