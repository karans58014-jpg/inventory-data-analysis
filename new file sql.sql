CREATE DATABASE sales_project; 
use sales_project;
CREATE TABLE sales (
    OrderID VARCHAR(20),
    OrderDate DATE,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Product VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    DiscountPct INT,
    PaymentMode VARCHAR(30),
    Rating DECIMAL(3,1),
    TotalAmount DECIMAL(12,2)
);
SELECT SUM(TotalAmount)AS Total_Revenue FROM sales;
select city,sum(totalamount) as revenue 
from sales 
group by city 
order by revenue desc;
 select product, sum(quantity) as total_sold from sales group by product order by total_sold desc limit 5;
 select paymentmode, count(*) as total_orders from sales group by paymentmode order by total_orders desc;
 select month(orderdate) as month, sum(totalamount) as revenue from sales group by month(orderdate) order by month;