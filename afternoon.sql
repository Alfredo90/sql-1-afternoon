-- Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
-- id should be an auto-incrementing id/primary key - Use type: SERIAL
-- Add 5 different people into the person database.
-- Remember to not include the person_id because it should auto-increment.
-- List all the people in the person table by height from tallest to shortest.
-- List all the people in the person table by height from shortest to tallest.
-- List all the people in the person table by age from oldest to youngest.
-- List all the people in the person table older than age 20.
-- List all the people in the person table that are exactly 18.
-- List all the people in the person table that are less than 20 and older than 30.
-- List all the people in the person table that are not 27 (Use not equals).
-- List all the people in the person table where their favorite color is not red.
-- List all the people in the person table where their favorite color is not red and is not blue.
-- List all the people in the person table where their favorite color is orange or green.
-- List all the people in the person table where their favorite color is orange, green or blue (use IN).
-- List all the people in the person table where their favorite color is yellow or purple (use IN).


CREATE TABLE person ( person_id SERIAL PRIMARY KEY, 
 name VARCHAR(200), 
 age INTEGER, 
 height INTEGER, 
 city VARCHAR(200), 
 favorite_color VARCHAR(200) );

INSERT INTO person ( name, age, height, city, favorite_color ) 
VALUES ( 'Alfredo Munoz', 30, 165, 'Dallas', 'Blue' ),
('Melissa Munoz', 28, 160, 'Dallas', 'Red'),
('Humberto Munoz', 32, 162, 'Dallas', 'Black'),
('Amy Munoz', 31, 160, 'Dallas', 'Green'),
('Pedro Duran', 28, 187, 'Dallas', 'Grey' );

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

-- SELECT * FROM person 
ORDER BY age DESC;

-- SELECT * FROM person 
WHERE age > 20;

-- SELECT * FROM person 
WHERE age = 18;

-- SELECT * FROM person 
WHERE age < 20 OR age > 30;

-- SELECT * FROM person 
WHERE age != 27;

-- SELECT * FROM person 
WHERE favorite_color != 'Red';

SELECT * FROM person 
WHERE favorite_color != 'Red' 
AND favorite_color != 'Blue';

SELECT * FROM person 
WHERE favorite_color = 'Orange' 
OR favorite_color = 'Green';

SELECT * FROM person 
WHERE favorite_color 
IN ( 'Orange', 'Green', 'Blue' );

SELECT * FROM person 
WHERE favorite_color 
IN ( 'Yellow', 'Purple' )







-- <------TABLE ORDERS---->

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

-- Add 5 orders to the orders table.

-- Make orders for at least two different people.

-- person_id should be different for different people.

-- Select all the records from the orders table.

-- Calculate the total number of products ordered.

-- Calculate the total order price.

-- Calculate the total order price by a single person_id.



CREATE TABLE orders (
  order_Id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(200),
  product_price NUMERIC,
  quantity INT);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0, 'xbox series', 500.00, 4),
(1, 'ps5', 500.00, 2),
(2, 'washer', 800.00, 1),
(3, 'motorcycle', 9000.00, 6),
(4, 'tesla', 35000.00, 3);


SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;








-- //TABLE ARTIST//

-- Add 3 new artists to the artist table. ( It's already created )

-- Select 10 artists in reverse alphabetical order.

-- Select 5 artists in alphabetical order.

-- Select all artists that start with the word 'Black'.

-- Select all artists that contain the word 'Black'.

INSERT INTO artist ( name ) 
VALUES ( 'da baby' ),
('drake'),
('breathe carolina');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';





-- //TABLE EMPLOYEE

-- List all employee first and last names only that live in Calgary.

-- Find the birthdate for the youngest employee.

-- Find the birthdate for the oldest employee.

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).

-- You will need to query the employee table to find the Id for Nancy Edwards

-- Count how many people live in Lethbridge.

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT MAX(birth_date) from employee;

SELECT MIN(birth_date) from employee;

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';






-- //TABLE INVOICE
-- Count how many orders were made from the USA.

-- Find the largest order total amount.

-- Find the smallest order total amount.

-- Find all orders bigger than $5.

-- Count how many orders were smaller than $5.

-- Count how many orders were in CA, TX, or AZ (use IN).

-- Get the average total of the orders.

-- Get the total sum of the orders.

SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';
                                                                                    
SELECT MAX(total) 
FROM invoice;

SELECT MIN(total) 
FROM invoice;

SELECT * FROM invoice
 WHERE total > 5;

SELECT COUNT(*) FROM invoice 
WHERE total < 5;

SELECT COUNT(*) FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
