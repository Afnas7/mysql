-- You are designing a simple database for an online book store. The store keeps track of authors and the books they write.
-- Create a table for authors with the following information:
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Author ID (a unique number for each author)
-- Author name (e.g., "Chetan Bhagat")
-- Email address (should be unique)
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(200),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Create a table for books with the following information:
-- Book ID (a unique number for each book)
-- Book title
-- Author ID (to show which author wrote the book)
-- Apply appropriate rules so that:
-- No two authors can have the same email address.
-- Each author and book must have a unique ID.
-- Each book must be linked to an existing author.
ALTER TABLE books ADD CONSTRAINT fk_auth FOREIGN KEY (`Author ID`) REFERENCES authors(`Author ID`);