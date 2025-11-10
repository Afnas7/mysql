-- You are working for a local bookstore that sells books both online and offline. The manager has asked you to help prepare reports from the books table. The table has the following columns:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- stock_status (text: either 'In Stock' or 'Out of Stock')
-- genre (text)
-- Your tasks are:
-- Show all the different genres available in the store (no duplicates).
SELECT DISTINCT genre FROM books
-- List all books that are in stock and priced below 400.
SELECT * FROM books WHERE stock_status='In stock' AND price<400
-- List all books that are either out of stock or have a price above 700.
SELECT * FROM books WHERE stock_status='Out of Stock' OR price>700
-- Show the title and price of every book along with a new column that adds 10% GST to the price.
SELECT title,price, price*1.10 AS gst_price FROM books
-- Display the title, price, and stock_status of all books, sorted by price from highest to lowest.
SELECT title,price, stock_status FROM books ORDER BY price DESC