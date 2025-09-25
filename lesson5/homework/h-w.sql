use Lesson4


--Easy-Level Tasks

-- task1
-- Write a query that uses an alias to rename the ProductName column as Name in the Products table.
create table Productss (id int, ProductName varchar(50))
Select id,ProductName as Name from Productss 

-- task2
-- Write a query that uses an alias to rename the Customers table as Client for easier reference.
drop table  Customers
create table Customers (id int)

Select * from Customers as Clients
SELECT Client.id
FROM Customers AS Client;

-- task3 
-- Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
Select ProductName from Products
Union
Select ProductName from Products_Discounted

-- task4 
-- Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
Select ProductName from Products
Intersect
Select ProductName from Products_Discounted

-- task5 
-- Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.

Select Distinct CustomerName,Country from TableName

-- task6
-- Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.
 
SELECT *,
       CASE 
           WHEN Price > 1000 THEN 'High'
           WHEN Price <= 1000 THEN 'Low'
           ELSE 'Unknown'
       END AS ConditionalColumn
FROM Products;

-- task7
-- Use IIF to create a column that shows 'Yes' if StockQuantity > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).

SELECT *,
       IIF(StockQuantity > 100, 'Yes', 'No') AS InStock
FROM Products_Discounted;

