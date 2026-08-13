select *
from `e1.customers`

select *
from `e1.customers`
limit 5

select distinct CustomerID
from `e1.customers`

--give me info of the customer with id C014
select *
from `e1.customers`
where CustomerID = "C014"

-- select column1 , column2, ...
-- from table_name
-- where condition
--find customers who have spent more than rs.1,00,000.

-- this will need join concept

--Q. the customer support team wants a list of all customers with their city and state
select CustomerID,City
from `e1.customers`


--Q. show all product categories available
select * from `e1.products` limit 5
selct distinct CategoryID
from `e1.products`


--Display Customers from Nagpur
select *
from `e1.customers`
where city = "Nagpur"
--display female customers
select *
from `e1.customers`
where gender = "F"

--display customers older than 30
select *
from `e1.customers`
where age > 30

--display products costing at most rs.50000
select *
from `e1.products`
where SellingPrice <=50000

--display delivered orders
select *
from `e1.orders`
limit 5
select distinct status 
from `e1.orders`

select * 
from `e1.orders`
where status = "delivered"

-- select orders that are not delivered
select * 
from `e1.orders`
where status != "delivered"

Count total customers

select CustomerID
from `e1.customers`

select count(*) -- it will counts the no. of rows
from `e1.customers`


--count customers from mumbai
select *
from `e1.customers`
where city ="mumbai"

select count(*)
from `e1.customers`
where city = "mumbai"
 
 --the hr manager wants to see the names of employees working in the operations department
select * from `e1.employees`

select distinct Department 
from `e1.employees`

select *
from `e1.employees`
where department ="Operations"

--display all products supplied by supplier ID 3.
select *
from `e1.products`
where supplierID = "SUP003"

-- the inventory team wants to see products having stock less than 30 units.

select *
from `e1.inventory`
select ProductID
from `e1.inventory`
where stock <30

--find all customers who signed up after 2023-01-01
 select *
 from `e1.customers`
 where signupdate > "2023-01-01"

 -- count how many different product categories exist in the products table

 select *
 from `e1.products`

select distinct CategoryID
from `e1.products`

 select count(distinct CategoryID)
 from `e1.products`
