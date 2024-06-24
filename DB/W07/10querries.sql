-- Insert Artist Entry
INSERT INTO artist (fname, mname, lname, dob, dod, country, local_artist)
VALUES ('Johannes', NULL, 'Vermeer', 1632, 1674, 'Netherlands', 'n');
-- List All Artist Records
SELECT fname AS 'First Name', mname AS 'Middle Name', lname AS 'Last Name', 
       dob AS 'Date of Birth', dod AS 'Date of Death', 
       country AS 'Country of Artist Birth', local_artist AS 'Local Artist?'
FROM artist
ORDER BY lname ASC;
-- Update Artist Entry
UPDATE artist
SET dod = 1675
WHERE lname = 'Vermeer' AND fname = 'Johannes';
-- Delete Artist Entry
DELETE FROM artist
WHERE lname = 'Vermeer' AND fname = 'Johannes';
-- List of Customers from Houston, Texas
SELECT first_name, last_name, phone
FROM customers
WHERE city = 'Houston' AND state = 'TX';
-- List of High-End Bikes with Discount
SELECT product_name, list_price, list_price - 500 AS 'Discount Price'
FROM bikes
WHERE list_price >= 5000
ORDER BY list_price DESC;
-- Staff Email List Not from Store 1
SELECT first_name, last_name, email
FROM staff
WHERE store_id <> 1;
-- Bikes with 'Spider' in the Name
SELECT product_name, model_year, list_price
FROM bikes
WHERE product_name LIKE '%spider%';
-- Bikes within Price Range $500–$550
SELECT product_name, list_price
FROM bikes
WHERE list_price BETWEEN 500 AND 550
ORDER BY list_price ASC;
-- Customer Details Based on Phone and City or Last Name
SELECT first_name, last_name, phone, street, city, state, zip_code
FROM customers
WHERE (phone IS NOT NULL AND (city LIKE '%ach%' OR city LIKE '%och%' OR last_name = 'William'))
LIMIT 5;
