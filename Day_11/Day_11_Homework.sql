-- Imagine you are creating a simple system for a school library. Each book has a unique ID and belongs to a single category (like Fiction, Science, History, etc.), but each category can have many books.
-- Create two tables:
-- categories with category details
-- books with book details, where each book is linked to a category
-- Use AUTO_INCREMENT for the IDs.
-- Add a one-to-many relationship between categories and books.
-- Create an index on the book_name column of the books table.
ALTER TABLE book ADD INDEX ind_book (book_name)
-- Show all indexes in the books table.
SHOW INDEXES FROM books;