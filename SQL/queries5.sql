-- ORDER BY

select *
from table...
order by column(s)


-- Default --> ASC

select *
from `e1.products`
limit 5


select
    ProductID,
    SellingPrice
from `e1.products`
order by SellingPrice asc


-- Sort products from most expensive selling price to least

select
    ProductID,
    SellingPrice
from `e1.products`
order by SellingPrice desc


-- Show the top 10 most expensive products

select *
from `e1.products`
order by SellingPrice desc
limit 10


select *
from `e1.products`
order by SellingPrice asc
limit 10


-- Display all products alphabetically

select *
from `e1.products`
order by ProductName asc


-- Youngest customers → oldest customers

select *
from `e1.customers`
limit 5


select *
from `e1.customers`
order by age asc


-- Which inventory records have the lowest stock?

select *
from `e1.inventory`
limit 5


select *
from `e1.inventory`
order by stock asc


-- Show the top 5 most valuable payments

select *
from `e1.payments`
limit 5


select *
from `e1.payments`
order by amount desc


-- Sorting Order Items by Sales Value

select *
from `e1.order_items`
limit 5


select
    OrderID,
    ProductID,
    Total
from `e1.order_items`
order by Total desc


-- Show the highest-rated review records first

select *
from `e1.reviews`
limit 5


select *
from `e1.reviews`
order by Rating desc


-- Show products with MRP above 500, starting with the most expensive

select *
from `e1.products`
where MRP > 500
order by MRP desc


-- Find the 5 cheapest products whose MRP is above 700

select *
from `e1.products`
where MRP >700
order by mrp asc
limit 5


-- Suppliers with the largest product catalog first

select *
from `e1.products`
limit 5


select
    SupplierID,
    count(*) as catalog_size
from `e1.products`
group by SupplierID
order by catalog_size desc


-- Which 5 suppliers provide the largest number of products?

select
    SupplierID,
    count(*) as catalog_size
from `e1.products`
group by SupplierID
order by catalog_size desc
limit 5


-- Top 5 Products by their Total Sales

select *
from `e1.products`
limit 5


select *
from `e1.order_items`
limit 5


select
    ProductID,
    sum(Total) as total_sales
from `e1.order_items`
group by ProductID
order by total_sales desc
limit 5


-- Sort products by category first, and within each category
-- sort by selling price from highest to lowest

select *
from `e1.products`
order by CategoryID asc, SellingPrice desc


-- HW

select *
from `e1.products`
order by SellingPrice desc, CategoryID asc
