select 
    Status, 
    count(*) as no_of_orders, 
    round(count(*)*100.0/(select count(*) from `e1.orders`),2) as
    percentage_of_orders 
from `e1.orders` 
group by Status 
order by no_of_orders desc 

select count(*) from `e1.orders`


select
    ProductID,
    sum(Quantity) as total_quantity_sold,
    count(*) as NoOfOrderItems,
    sum(Total) as total_sale_Value
from `e1.order_items`
group by ProductID
order by total_quantity_sold desc
limit 5


select
    ProductID,
    count(*) as NoOfOrderItems,
    sum(Quantity) as total_quantity_sold,
    sum(Total) as total_sale_Value
from `e1.order_items`
where total > 2500
group by ProductID
having NoOfOrderItems >= 3


select
    ProductID,
    max(SellingPrice) as max_sp,
    min(SellingPrice) as min_sp,
    avg(SellingPrice) as avg_sp,
    count(*) as no_of_order_item
from `e1.order_items`
group by ProductID
having min_sp > 1000
order by avg_sp desc


select
    WarehouseID,
    count(distinct ProductID) as no_of_products,
    sum(Stock) as total_stock,
    round(avg(Stock),2) as avg_stock
from `e1.inventory`
group by WarehouseID
having no_of_products >= 5
order by total_stock desc


select *
from `e1.inventory`
order by ProductID


select avg(MRP)
from `e1.products`


select *
from `e1.products`
where MRP >= 2312.74


select *
from `e1.products`
where MRP >= (
    select avg(MRP)
    from `e1.products`
)


select *
from `e1.products`
where MRP < (select avg(MRP) from `e1.products`)


select max(MRP)
from `e1.products`


select *
from `e1.products`
where MRP = 4937


select *
from `e1.products`
where MRP = (select max(MRP)
from `e1.products`)


select distinct(MRP)
from `e1.products`
order by MRP desc
limit 5


select *
from `e1.products`
where mrp >= 4662
