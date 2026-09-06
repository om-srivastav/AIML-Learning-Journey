select round(avg(MRP),2)
from `e1.products`


select *
from `e1.products`
where MRP > 2312.74


select *
from `e1.products`
where MRP > (select round(avg(MRP),2)
from `e1.products`)


select min(select distinct(MRP)
from `e1.products`
order by MRP desc
limit 5)
from `e1.products`


select distinct(MRP)
from `e1.products`
order by MRP desc
limit 5


select *
from `e1.products`
where (MRP = 4937) or (MRP = 4927) or (MRP = 4880) or (MRP =
4698) or (MRP = 4662)


select *
from `e1.products`
where MRP in (4937 , 4927 , 4880, 4698, 4662)


-- super crazyy mentos zindagi
select *
from `e1.products`
where MRP in (
    select distinct(MRP)
    from `e1.products`
    order by MRP desc
    limit 5
)


select max(MRP)
from `e1.products`


select *
from `e1.products`
where MRP = 4937


select *
from `e1.products`
where MRP = (select max(mrp) from `e1.products`)


select *
from `e1.products`
where MRP in (select max(mrp) from `e1.products`)


select
    SupplierID,
    count(*) as no_of_products
from `e1.products`
group by SupplierID
having no_of_products >= 5


select *
from `e1.products`
where SupplierID in (
    select
        SupplierID
    from `e1.products`
    group by SupplierID
    having count(*) >= 5
)


select *
from `e1.orders`
limit 5


select
    CustomerID,
    count(*) as no_of_orders
from `e1.orders`
group by CustomerID
having no_of_orders >= 3
order by no_of_orders desc


select
    CustomerID
from `e1.orders`
group by CustomerID
having count(*) >= 3


select *
from `e1.customers`


select *
from `e1.customers`
where CustomerID in (
    select
        CustomerID
    from `e1.orders`
    group by CustomerID
    having count(*) >= 3
)


select
    SupplierID,
    count(*) as no_of_products
from `e1.products`
group by SupplierID


select
    avg(no_of_products)
from (
    select
        SupplierID,
        count(*) as no_of_products
    from `e1.products`
    group by SupplierID
)


select
    SupplierID,
    count(*) as no_of_prds
from `e1.products`
group by SupplierID
having no_of_prds >= (
    select
        avg(no_of_products)
    from (
        select
            SupplierID,
            count(*) as no_of_products
        from `e1.products`
        group by SupplierID
    )
)
