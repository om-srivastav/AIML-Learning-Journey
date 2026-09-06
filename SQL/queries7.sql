select 
    SupplierID, 
    count(*) as no_of_products, 
    avg(MRP) as avgMRP, 
    max(MRP) as maximumMRP 
from `e1.products` 
group by SupplierID 
having no_of_products >= 3 
order by no_of_products desc 


select
    CategoryID,
    count(*) as no_of_products,
    avg(MRP) as avg_mrp ,
    max(MRP) as max_mrp
from `e1.products`
group by CategoryID
having avg_mrp > 150
order by avg_mrp desc


select
    ProductID,
    sum(Quantity) as total_quantity,
    sum(total) as total_price,
from `e1.order_items`
group by ProductID
having
    total_quantity >= 10 and
    total_price > 100000
order by total_price desc


select
    ProductID,
    ProductName,
    MRP,
    SellingPrice,
    (MRP - SellingPrice) AS discount_amount
from `e1.products`
where SellingPrice < MRP
order by discount_amount desc


select *
from `e1.products`
limit 5


select
    ProductID,
    ProductName,
    MRP,
    SellingPrice,
    round(((MRP-SellingPrice)/MRP),2)*100 as discount_percentage
from `e1.products`
where round(((MRP-SellingPrice)/MRP),2)*100 >= 10
order by discount_percentage desc


select
    Method,
    count(*) as no_of_sucessful_transaction,
    sum(Amount) as total_amount,
    round(avg(Amount),2) as avg_amount,
    max(Amount) as mx_amount
from `e1.payments`
where Status="Success"
group by Method
having total_amount>100000;


select
    CustomerID,
    count(*) as num_of_orders
from `e1.orders`
group by CustomerID
having num_of_orders between 4 and 8
order by num_of_orders desc
limit 10


select
    WarehouseID,
    sum(Stock) as total_stock,
    round(avg(Stock),2) as avg_stock,
    max(Stock) as highest_stock,
    min(Stock) as lowest_stock
from `e1.inventory`
group by WarehouseID
having total_stock > 500
order by total_stock desc


select *
from `e1.inventory`
limit 5


select *
from `e1.inventory`
order by ProductID
