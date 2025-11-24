--  You are designing a basic inventory system for a library. Your task is to:
-- Create a table named authors with the following:
-- author_id which should increase automatically for every new author added
-- name of the author
-- Create another table named books with the following:
-- book_id which should also increase automatically
-- title of the book
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
-- author_id which connects each book to an author
-- Make sure that one author can have many books (one-to-many relationship).
-- Create an index on the author_id column in the books table to improve search performance.
ALTER TABLE books ADD INDEX ind (`Author ID`)