--Date Exploration
--Obtaining first and last order

SELECT 
	MIN (order_date) first_order_date,
    MAX (order_date) last_order_date,
-- How many years of sales available
	DATEDIFF (MONTH, MIN (order_date),MAX(order_date)) AS order_range_months
FROM gold.fact_sales 

--Find the youngest abd oldest customer
SELECT 
MIN (birthdate) AS oldest_birthdate,
DATEDIFF(year, MIN (birthdate), GETDATE()) AS oldest_age,
MAX (birthdate) AS  youngest_birthdate,
DATEDIFF(year, MAX (birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers