-- Cumulative Analysis

	-- Calculating total sales per month and running total of sales over time

SELECT 
order_date,
total_sales,
SUM(total_sales) OVER (PARTITION BY order_date ORDER BY order_date) AS running_total_sales
FROM 
(
	SELECT 
		DATETRUNC (MONTH, order_date) AS order_date,
		SUM(sales_amount) AS total_sales
	FROM gold.fact_sales
	WHERE order_date IS NOT NULL
	GROUP BY DATETRUNC (Month, order_date)
)t


	--Now changing Granularity by changing month to year

SELECT 
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,  --we don't need PARTITION BY if we are arranging by year
AVG (avg_price) OVER (ORDER BY order_date) AS moving_avg_price
FROM 
(
	SELECT 
		DATETRUNC (Year, order_date) AS order_date,
		SUM(sales_amount) AS total_sales,
		AVG (price) AS avg_price
	FROM gold.fact_sales
	WHERE order_date IS NOT NULL
	GROUP BY DATETRUNC (YEAR, order_date)
)t
