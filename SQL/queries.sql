-- 1. Show first 5 customers
SELECT *
FROM `e1.customers`
LIMIT 5;


-- 2. Show the names of all the customers
SELECT Name
FROM `e1.customers`;


-- 3. Show customer cities
SELECT City
FROM `e1.customers`;


-- 4. Show first 5 payments
SELECT *
FROM `e1.payments`
LIMIT 5;


-- 5. Show payment methods
SELECT Method
FROM `e1.payments`;


-- 6. Show first 5 employees
SELECT *
FROM `e1.employees`
LIMIT 5;


-- 7. Show employee names
SELECT Name
FROM `e1.employees`;


-- 8. Rename employee column
ALTER TABLE `e1.employees`
RENAME COLUMN string_field_0 TO EmployeeID;


-- 9. Rename employee name column
ALTER TABLE `e1.employees`
RENAME COLUMN string_field_1 TO Name;


-- 10. Rename employee department column
ALTER TABLE `e1.employees`
RENAME COLUMN string_field_2 TO Department;


-- 11. Delete employee
DELETE FROM `e1.employees`
WHERE EmployeeID = "EmployeeID";


-- 12. Show all products
SELECT *
FROM `e1.products`;


-- 13. Show all products
SELECT *
FROM `e1.products`;


-- 14. Show ProductID and ProductName
SELECT
    ProductID,
    ProductName
FROM `e1.products`;


-- 15. Show ProductName and ProductID
SELECT
    ProductName,
    ProductID
FROM `e1.products`;


-- 16. Show ProductID, ProductName and CategoryID
SELECT
    ProductID,
    ProductName,
    CategoryID
FROM `e1.products`;

-- 17. Show customer names
SELECT customer_name
FROM customers;


-- 18. Show selling prices
SELECT selling_price
FROM products;


-- 19. Show customer cities
SELECT city
FROM `e1.customers`;


-- 20. Show unique customer cities
SELECT DISTINCT City
FROM `e1.customers`;


-- 21. Show different payment methods
SELECT DISTINCT method
FROM `e1.payments`;


-- 22. Show all suppliers
SELECT *
FROM `e1.suppliers`;


-- 23. Show different states
SELECT DISTINCT state
FROM `e1.suppliers`;


-- 24. Rename supplier ID column
ALTER TABLE `e1.suppliers`
RENAME COLUMN string_field_0 TO SupplierID;


-- 25. Rename supplier name column
ALTER TABLE `e1.suppliers`
RENAME COLUMN string_field_1 TO SupplierName;


-- 26. Rename supplier state column
ALTER TABLE `e1.suppliers`
RENAME COLUMN string_field_2 TO State;


-- 27. Show all orders
SELECT *
FROM `e1.orders`;


-- 28. Show all payments
SELECT *
FROM `e1.payments`;


-- 29. Show distinct payment amounts
SELECT DISTINCT amount
FROM `e1.payments`;


-- 30. Show all customers
SELECT *
FROM `e1.customers`;

-- 31. Dates on which at least 1 customer signed up
SELECT DISTINCT SignupDate
FROM `e1.customers`;


-- 32. Unique combinations of age and city
SELECT DISTINCT age, city
FROM `e1.customers`;


-- 33. Unique combinations of payment method and payment status
SELECT DISTINCT method, status
FROM `e1.payments`;
