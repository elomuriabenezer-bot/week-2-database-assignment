-- Week 2 Database Systems Assignment
-- Topic: SQL data retrieval and filtering using the sales database.

USE sales;

-- 1. Retrieve payment reference, date, and amount.
SELECT checkNumber, paymentDate, amount
FROM payments;

-- 2. List orders that are currently in process, newest first.
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- 3. List sales representatives, highest employee number first.
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- 4. Retrieve every column and row from the offices table.
SELECT *
FROM offices;

-- 5. Show the five products with the lowest buy prices.
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
