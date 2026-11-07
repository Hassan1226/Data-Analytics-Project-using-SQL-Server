--Exploring Objects in DB

SELECT * 
FROM INFORMATION_SCHEMA.TABLES


--Exploring all comlumns in DB

SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'