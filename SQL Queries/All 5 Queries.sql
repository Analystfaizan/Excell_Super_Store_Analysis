USE Super_store;
/** top 10 Product by revenue **/
SELECT 
Sub_Category,
COUNT(*) AS Orders,
SUM(sales) AS Revenue ,
ROUND(SUM(Profit)/SUM(sales)*100,2) AS profit_margine 
FROM Store 
GROUP BY Sub_category
ORDER BY Revenue DESC 
LIMIT 10;

/** Region Performance by more than `10,000 **/
SELECT 
Region,
COUNT(DISTINCT Customer_id) AS Unique_Customer ,
SUM(Sales) AS Revenue ,
avg(Sales) AS Avg_orders 
FROM Store 
GROUP BY Region 
HAVING SUM(sales) > 200000 
ORDER BY Revenue DESC;

/** Customer_lifetime_Value **/ 
SELECT 
Customer_id,
Customer_name,
COUNT(*) AS Orders,
SUM(sales) AS Lifetimevalue,
MIN(Order_date) AS First_Order,
MAX(Order_date) AS Last_order 
FROM Store 
GROUP BY Customer_id,Customer_name 
ORDER BY Lifetimevalue  DESC
LIMIT 10;

/** Monthly trend by revenue **/

SELECT 
DATE_FORMAT(`Order_date`,'%Y-%m-1')AS Months,
SUM(sales) AS Monthly_revenue ,
LAG(SUM(sales)) OVER(ORDER BY DATE_FORMAT(`Order_date`,'%Y-%m-1')) AS Prev_Month,
ROUND(100.0*(SUM(sales)-LAG(SUM(Sales))OVER(ORDER BY DATE_FORMAT(`Order_date`,'%Y-%m-1')))/LAG(SUM(sales)) OVER(ORDER BY DATE_FORMAT(`order_date`,'%Y-%m-1')),2) AS pct_growth 
FROM Store 
GROUP BY DATE_FORMAT(`Order_date`,'%Y-%m-1') 
ORDER BY Months ;

/** Top Product category by Revenue **/
WITH perf_category AS(
SELECT 
Category,
sub_category,
COUNT(*) AS Orders ,
SUM(Sales) AS revenue ,
DENSE_RANK() OVER(PARTITION BY category ORDER BY SUM(sales)) AS performace 
FROM Store 
GROUP BY Category,Sub_Category 
ORDER BY Revenue DESC) 
SELECT * 
FROM Perf_category
WHERE Performace = 1;


SELECT Region FROM Store 
LIMIT 10;