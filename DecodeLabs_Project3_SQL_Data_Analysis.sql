SELECT *
FROM project_data;
-- Total number of orders
SELECT COUNT(*) AS total_records
FROM project_data;
-- check missing values
select
sum(case when OrderID is null OR OrderID = '' OR TRIM(OrderID)= '' then 1 else 0 end) as Missing_OrderID,
sum(case when Date is null OR Date = '' OR TRIM(Date)= '' then 1 else 0 end) as Missing_Date,
sum(case when CustomerID is null OR CustomerID = '' OR TRIM(CustomerID)= '' then 1 else 0 end) as Missing_CustomerID,
sum(case when Product is null OR Product = '' OR TRIM(Product)= ''then 1 else 0 end) as Missing_Product,
sum(case when Quantity is null OR Quantity = '' OR TRIM(Quantity)= '' then 1 else 0 end) as Missing_Quantity,
sum(case when ShippingAddress is null OR ShippingAddress = '' OR TRIM(ShippingAddress)= '' then 1 else 0 end) as Missing_ShippingAddress,
sum(case when PaymentMethod is null OR PaymentMethod = '' OR TRIM(PaymentMethod)= '' then 1 else 0 end) as Missing_PaymentMethod,
sum(case when OrderStatus is null OR OrderStatus = '' OR TRIM(OrderStatus)= '' then 1 else 0 end) as Missing_OrderStatus,
sum(case when ItemsInCart is null OR ItemsInCart = '' OR TRIM(ItemsInCart)= '' then 1 else 0 end) as Missing_ItemsInCart,
sum(case when CouponCode is null OR CouponCode = '' OR TRIM(CouponCode)= '' then 1 else 0 end) as Missing_CouponCode,
sum(case when ReferralSource is null OR ReferralSource = '' OR TRIM(ReferralSource)= '' then 1 else 0 end) as Missing_ReferralSource
from project_data;
-- replace missing coupon code
update project_data
set CouponCode = 'Unknown'
where CouponCode is null OR CouponCode = '' OR TRIM(CouponCode)= '';
-- Duplicate checking OrderID
select OrderID,
COUNT(*) AS Duplicate_Count
from project_data
group by OrderID
having count(*) > 1;
--  invalid data check  Quantity or price
select * 
from project_data
where Quantity <= 0
   OR UnitPrice <= 0;
-- total Order
select count(*) as Total_Orders
from project_data;

-- Total revenue
select sum(Quantity * UnitPrice) AS Total_Revenue
from project_data;

-- average order values
select avg(Quantity * UnitPrice) AS Average_Order_Value
from project_data;
-- product wise revenue
select Product,
sum(Quantity * UnitPrice) AS Revenue
from project_data
group by product
order by Revenue desc;

-- product wise Quantity sold
select Product,
sum(Quantity) AS Total_Quantity_Sold
from project_data
group by Product
order by Total_Quantity_Sold;
-- Most popular product
select Product,
sum(Quantity) AS Units_sold
from project_data
group by Product
order by Units_sold
limit 1;

-- Customer wise spending
select CustomerID,
sum(Quantity * UnitPrice) AS Total_spent
from project_data
group by CustomerID
order by Total_spent desc;

-- Payment Method Usage
select PaymentMethod,
count(*) AS Total_Transactions
from project_data
group by PaymentMethod
order by Total_Transactions desc;

-- Revenue by method
select PaymentMethod,
sum(Quantity * UnitPrice) AS Revenue
from project_data
group by PaymentMethod
order by Revenue desc;

-- Order Status
select OrderStatus,
count(*) AS Total_Orders
from project_data
group by OrderStatus
order by Total_Orders desc;
 -- Delivered Order Revenue
select sum(Quantity * UnitPrice) AS Delivered_Revenue
from project_data
where OrderStatus = 'Delivered';
-- Cancelled Ordered
select *
from project_data
where  OrderStatus = 'Cancelled';
-- Order above average revenue
select *,
(Quantity * UnitPrice) AS TotalPrice
from project_data
where (Quantity * UnitPrice)
>
(
select avg(Quantity * UnitPrice)
from project_data
);
-- Average Quantity order per Product
select Product,
avg(Quantity) AS Avg_Quantity
from project_data
group by Product
Order by Avg_Quantity desc;

-- Monthly revenue trend
select date_format(Date, '%Y-%m') AS Month,
sum(Quantity * UnitPrice) AS Revenue
from project_data
group by Month
order by Month desc;
-- highest revenue Month
select date_format(Date, '%Y-%m') AS Month,
sum(Quantity * UnitPrice) AS Revenue
from project_data
group by Month
order by Revenue desc;
-- Daily Revenue trend
select Date,
sum(Quantity * UnitPrice) AS Daily_Revenue
from project_data
group by Date
order by Date asc;

-- Revenue contribution Percentage
select Product,
sum(Quantity * UnitPrice) AS Revenue,
round
(
 (
sum(Quantity * UnitPrice)
/
(
select sum(Quantity * UnitPrice)
from project_data
)
) * 100,
2
) as Revenue_Percentage
from project_data
group by Product
order by Revenue desc;
 
-- Having clause 
select Product,
sum(Quantity * UnitPrice) AS Revenue
from project_data
group by Product
having Revenue > 5000
order by Revenue desc;

select Product,
count(*) as Total_Orders,
sum(Quantity) AS Total_Unit_Sold,
sum(Quantity * UnitPrice) AS Total_Revenue,
avg(Quantity * UnitPrice) AS Avg_Order_Value
from project_data
group by Product
order by Total_Revenue desc;




  

