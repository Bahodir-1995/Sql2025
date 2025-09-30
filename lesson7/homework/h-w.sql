
-- Homework7

-- Easy-Level Tasks (10)
--Write a query to find the minimum (MIN) price of a product in the Products table.
Select Min(Price) From Products 

--Write a query to find the maximum (MAX) Salary from the Employees table.
Select Max(Salary) From Products

--Write a query to count the number of rows in the Customers table.
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

--Write a query to count the number of unique product categories from the Products table.
SELECT COUNT(DISTINCT Category) AS TotalCategories
FROM Products;

--Write a query to find the total sales amount for the product with id 7 in the Sales table.
Select Sum(Sales) as TotalSales
Where id=7
From Sales

--Write a query to calculate the average age of employees in the Employees table.
Select avg(age) as Average Age
from Employees

--Write a query to count the number of employees in each department.
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

--Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
SELECT Category, 
       MIN(Price) AS MinPrice, 
       MAX(Price) AS MaxPrice
FROM Products
GROUP BY Category;

--Write a query to calculate the total sales per Customer in the Sales table.
Select Customer, Sum(Sales) as TotalSales
From Sales
Group by Customer

--Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName).
SELECT DeptID, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 5;


--Medium-Level Tasks (9)
--Write a query to calculate the total sales and average sales for each product category from the Sales table.
Select Category, Sum(Sales) as TotalSales, Avg(Sales) as AverageSales
From Sales
Group by Category

--Write a query to count the number of employees from the Department HR.

Select Department, Count(*) As TotalEmployees
From Employees
Group by Department
Having Department = 'HR'

SELECT COUNT(*) AS TotalEmployees
FROM Employees
WHERE Department = 'HR';

--Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).
Select DeptId, Max(Salary) as MaxSalary, Min(Salary) as MinSalary 
From Employees
Group by DeptId

--Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).
Select DeptId,Avg(Salary) as AverageSalary
From Employees
Group by DeptId

--Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).
Select DeptId,Avg(Salary) as AverageSalary, Count(*) as TotalEmployees
From Employees
Group by DeptId

--Write a query to filter product categories with an average price greater than 400.
Select Category, Avg(Price) as AveragePrice
From Products
Group by  Category
Having Avg(Price)>400

--Write a query that calculates the total sales for each year in the Sales table.
SELECT YEAR(SaleDate) AS SaleYear, 
       SUM(Sales) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate)
ORDER BY SaleYear;

--Write a query to show the list of customers who placed at least 3 orders.

SELECT CustomerID, 
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) >= 3;

--Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you don't have DeptName).
Select DeptId, Avg(Salary) as AverageSalary
From Employees
Group by DeptId
Having Avg(Salary) >60000

SELECT 
    Category,
    AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 150;


SELECT 
    CustomerID,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > 1500;

SELECT 
    DepartmentName,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 65000;

SELECT 
    o.CustomerID,
    SUM(CASE WHEN o.TotalAmount > 50 THEN o.TotalAmount ELSE 0 END) AS TotalOver50,
    MIN(o.TotalAmount) AS LeastPurchase
FROM Orders o
GROUP BY o.CustomerID;

SELECT 
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    SUM(TotalAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS UniqueProductsSold
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2
ORDER BY OrderYear, OrderMonth;

SELECT 
    YEAR(OrderDate) AS OrderYear,
    MIN(Quantity) AS MinQuantity,
    MAX(Quantity) AS MaxQuantity
FROM Orders
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;
