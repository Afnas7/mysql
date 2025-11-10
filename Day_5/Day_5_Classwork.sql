-- You are managing a database for a mobile store. The table is called mobiles and contains the following columns:
-- id (number)
-- brand (text)
-- model (text)
-- price (number)
-- stock (number)
-- Perform the following tasks:
-- Insert the following mobile records into the table:
-- (1, 'Samsung', 'Galaxy M14', 12000, 30)
-- (2, 'Redmi', 'Note 12', 15000, 25)
-- (3, 'Realme', 'Narzo 50', 13000, 20)
-- (4, 'Samsung', 'Galaxy A23', 18000, 10)
INSERT INTO `mobile`(`id`, `brand`, `model`, `price`, `stock`) VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10)
-- Display all mobiles that cost more than 13000 or have stock less than 15.
SELECT * FROM `mobile` WHERE price>13000 OR stock<15
-- Increase the stock by 5 and update the price to 12500 for the mobile with model = 'Narzo 50'.
UPDATE `mobile` SET `price`=12500,`stock`=stock+5 WHERE model='Narzo 50'
-- Delete the mobile whose id is 2.
DELETE FROM `mobile` WHERE id =2
-- Find the lowest and highest price in the table.
SELECT 
    MIN(price) AS lowest_price,
    MAX(price) AS highest_price
FROM mobile;
-- Find the total stock of all mobiles in the table.
SELECT SUM(stock) FROM mobile;
-- Show the top 2 most expensive mobiles.
SELECT model FROM mobile ORDER BY price DESC LIMIT 2


