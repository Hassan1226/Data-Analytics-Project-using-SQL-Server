--Measure Exploration

	--Find the Total Sales-- 
SELECT 
	SUM(sales_amount) AS total_sales 
FROM gold.fact_sales

	--Find how many items were sold 
SELECT 
	SUM(quantity) AS total_quantity 
FROM gold.fact_sales

	--Find the avg selling price 
SELECT 
	AVG(price) AS avg_price
FROM gold.fact_sales

	--Find the total_num_orders 
SELECT 
	COUNT(DISTINCT(order_number)) AS total_num_orders 
FROM gold.fact_sales

	--Find the total_num_products
SELECT 
	COUNT(DISTINCT(product_name)) AS total_num_products
FROM gold.dim_products

	--Find the total_num_customers
SELECT 
	COUNT(customer_key) AS total_num_customers
FROM gold.dim_customers

	--Find the total_num_cust_placed_order
SELECT 
	COUNT(DISTINCT(customer_key)) AS total_num_cust_placed_order
FROM gold.fact_sales


--------Genrating Report --------------
SELECT 
	'Total Sales' AS measure_name,
	SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT 
	'Total Quantity' AS measure_name,
	SUM(quantity) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT 
	'Average Price',
	AVG(price)
FROM gold.fact_sales
UNION ALL
SELECT 
	'Total Number of Orders',
	COUNT(DISTINCT(order_number))
FROM gold.fact_sales
UNION ALL
SELECT 
	'Total Number of Products',
	COUNT(DISTINCT(product_name)) 
FROM gold.dim_products
UNION ALL
SELECT 
	'Total Number of Customers',
	COUNT(customer_key)
FROM gold.dim_customers
