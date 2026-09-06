select * 
from `e1.products` 
limit 5 

select 
    SupplierID, 
    count(*) as no_of_products 
from `e1.products` 
group by SupplierID 
order by no_of_products desc 


select * 
from `e1.order_items` 
limit 5 

select
    ProductID,
    sum(Total) as total_sales,
from `e1.order_items`
group by ProductID
order by total_sales desc
limit 10


select *
from `e1.payments`
limit 5

select
    count(*) as no_of_transactions,
    sum(amount) as total_payment
from `e1.payments`
where Status = "Success"
group by Method
order by total_payment desc


select *
from `e1.orders`
limit 5

select
    CustomerID,
    count(*) as no_of_orders
from `e1.orders`
group by CustomerID
having no_of_orders > 3
order by no_of_orders desc


select *
from `e1.products`
limit 5

select
    CategoryID,
    count(*) as no_of_products
from `e1.products`
where MRP > 900
group by CategoryID
having no_of_products > 2
order by no_of_products desc


select *
from `e1.inventory`
limit 5

select
    WarehouseID,
    sum(stock) as total_stock,
    round(avg(stock), 2) as avg_stock,
    max(stock) as max_stock,
    min(stock) as min_stock
from `e1.inventory`
group by WarehouseID
order by total_stock desc


select
    status,
    count(*) as no_of_orders
from `e1.orders`
group by Status
order by no_of_orders desc


select
    count(*) as no_of_records,
    sum(Quantity) as total_qty,
    sum(Total) as total_sales,
    avg(SellingPrice) as avg_sp
from `e1.order_items`
where SellingPrice > 10000
group by ProductID
having total_sales > 50000
order by total_sales desc
