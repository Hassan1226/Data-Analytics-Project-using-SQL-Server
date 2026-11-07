--Change over time analysis

		--Analyzing Sals prformances over time--
SELECT 
	YEAR(order_date) as order_year,
	MONTH(order_date) as order_month,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date) , YEAR(order_date)
ORDER BY MONTH(order_date) , YEAR(order_date)

		-- Using Datetrunc() function to merge month and year
SELECT 
	DATETRUNC(month,order_date) as order_date,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month,order_date)
ORDER BY DATETRUNC(month,order_date)

		-- Forming specific format
SELECT 
	FORMAT(order_date, 'yyyy-MMM') as order_date,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM')