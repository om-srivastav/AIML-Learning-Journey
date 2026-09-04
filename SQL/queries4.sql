select *
from `e1.products`
limit 5

select count(*)
from `e1.products`

select count(ProductID)
from `e1.products`

select 
    CategoryID,
    count(*) as total_count
from `e1.products`
group by CategoryID

select *
from `e1.order_items`
limit 5

select 
    ProductID,
    sum(Quantity) as total_qty
from `e1.order_items`
group by ProductID

select *
from `e1.order_items`

select 
    ProductID, 
    sum(total) as total_sales 
from `e1.order_items`
group by ProductID

select 
    ProductID, 
    avg(SellingPrice) as avg_selling_price 
from `e1.order_items`
group by ProductID

select *
from `e1.order_items`
limit 5

select 
    ProductID, 
    min(SellingPrice) as lowest_sp, 
    max(SellingPrice) as highest_sp 
from `e1.order_items`
group by ProductID

select *
from `e1.orders`
limit 5

select 
    CustomerID, 
    status, 
    count(*) as total_count 
from `e1.orders`
group by CustomerID, Status

select 
    CustomerID, 
    status, 
    count(*) as total_count 
from `e1.orders`
group by Status, CustomerID

select *
from `e1.inventory`
limit 5

select 
    WarehouseID, 
    count(*) as no_of_records 
from `e1.inventory`
group by WarehouseID

select 
    EmployeeID, 
    Status, 
    count(*) as total_orders 
from `e1.orders`
group by EmployeeID, Status

select *
from `e1.products`

select 
    CategoryID, 
    count(*) as total_products 
from `e1.products`
where MRP > 2000
group by CategoryID

select *
from `e1.order_items`
limit 5

select 
    ProductID, 
    sum(Quantity) as total_qty 
from `e1.order_items`
where Quantity > 1
group by ProductID

select 
    Method, 
    round(avg(amount), 2) as avg_amt 
from `e1.payments`
where status = "Success"
group by Method
