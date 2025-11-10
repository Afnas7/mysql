--  You are helping an online store manager view product details from a products table. The table contains the following columns:
-- id (number)
-- name (text)
-- category (text)
-- price (number)
-- in_stock (text, either 'Yes' or 'No')
INSERT INTO products (id, name, category, price, in_stock)
VALUES
(1, 'Wireless Mouse', 'Electronics', 450, 'Yes'),
(2, 'Gaming Laptop', 'Electronics', 1250, 'No'),
(3, 'Office Chair', 'Furniture', 380, 'Yes'),
(4, 'Bluetooth Speaker', 'Electronics', 650, 'Yes'),
(5, 'Study Table', 'Furniture', 980, 'No'),
(6, 'Running Shoes', 'Fashion', 1200, 'Yes'),
(7, 'T-Shirt', 'Fashion', 350, 'Yes'),
(8, 'Wrist Watch', 'Accessories', 1500, 'No'),
(9, 'Desk Lamp', 'Home Decor', 480, 'Yes'),
(10, 'Book Shelf', 'Furniture', 890, 'No');
-- Your task is to:
-- Show all the unique product categories available in the table.
SELECT DISTINCT  category FROM `products`
-- Select all products that are in stock and have a price less than 500.
SELECT * FROM `products` WHERE in_stock='Yes' AND price<500
-- Select all products that are not in stock or have a price greater than 1000.
SELECT * FROM `products` WHERE in_stock='No' OR price>1000
-- Show the names and prices of all products, and sort the results by price from highest to lowest.
SELECT  `name`,`price` FROM `products` ORDER BY price DESC
-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).
SELECT name ,price*1.18  AS price_with_tax FROM products