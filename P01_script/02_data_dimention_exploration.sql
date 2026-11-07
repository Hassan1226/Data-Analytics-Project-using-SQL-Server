-- Exploring Dimensions 

--Selecting country for customers 
SELECT DISTINCT  
	country 
FROM gold.dim_customers

--Selecting country for customers 
SELECT DISTINCT  
	category,
	subcategory,
	product_name
FROM gold.dim_products
Order by 1,2,3