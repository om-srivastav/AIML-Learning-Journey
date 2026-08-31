-- how many diff cities do the customers belong to?
select *
from `e1.customers`
select distinct city
from `e1.customers`

select count(distinct city)
from `e1.customers`
select *
from `e1.products`
limit 5

-- how many diff prod do we have?
select count(*)
from `e1.products`

-- how  many customers are from mumbai?
select count(*)
from `e1.customers`
where city ='Mumbai'

-- count the number of diff customers that we have
select count(*)
from `e1.customers`

-- count(column) count the number of non-null values in that column
select count(CustomerID)
from `e1.customers`
-- how many diff supplier states exist?
select *
from `e1.suppliers`
limit 5


select distinct state
from `e1.suppliers`

select count(distinct state)
from `e1.employees`

select count(distinct state)
from `e1.suppliers`

Total Sales Value
-- what is the total value represented by all order-item records?
select *
from `e1.orders`
limit 5
select sum (Total)
