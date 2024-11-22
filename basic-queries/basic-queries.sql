-- Excercise 2
-- Question 1
select ProductName from northwind.products ;
-- Name of all the products NorthWind sells
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 2
select ProductID, ProductName, UnitPrice from northwind.products;
-- A query to list the product id, prodct name, and unit price of every product
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 3
select ProductID, ProductName, UnitPrice from northwind.products order by UnitPrice;
-- Ordered by Unit Pirce
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 4
select ProductName, UnitPrice from northwind.products where UnitPrice <= 7.50 order by UnitPrice;
-- Products equal to or under the cost of $7.50
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 5
select ProductName, UnitPrice, UnitsInStock from northwind.products where UnitsInStock >= 100 order by UnitPrice desc;
-- Products at least have 100 units in stock, and the unit price is in descending order
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 6
select ProductName, UnitPrice, UnitsInStock from northwind.products where UnitsInStock >= 100 order by UnitPrice desc, ProductName;
-- Products at least have 100 units in stock, and the unit price is in descending order. If two or more products have the same price, list them in ascending order
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 7
select ProductName, UnitsInStock, UnitsOnOrder from northwind.products where (UnitsInStock = 0 and UnitsOnOrder >= 1) order by ProductName;
-- Products have no units in stock but have one or more units in order, ordered by product name
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 8
select CategoryName from northwind.categories;
-- Table that holds the types of items that Northwind sells
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 9
select * from northwind.categories;
-- Category ID of seafood is 7
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 10
select * from northwind.categories where CategoryID = '8';
-- All seafood items we carry
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 11
select FirstName, LastName from northwind.employees;
-- First and last names of all northwind.employees;
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 12
select * from northwind.employees where Title like "%Manager%";
-- All employees with manager in the title
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 13
select distinct(Title) from northwind.employees;
-- All employees with distinct job titles
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 14
select * from northwind.employees where Salary between 2000 and 2500;
-- Empyees with salaries between 2000 and 2500
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 15
select * from northwind.suppliers;
-- All info about northwind suppliers
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 16
select * from northwind.products where SupplierID = '6';
-- Found that Tokyo Traders supplierID was 6, searched supplier ID in products table to find all products from there