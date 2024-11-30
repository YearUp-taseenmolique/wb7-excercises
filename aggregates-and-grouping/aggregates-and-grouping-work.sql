-- Excercise 3
-- Question 1
Select count(*)
from northwind.suppliers;
-- There are 29 suppliers
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 2
Select sum(Salary) as SalarySum
from northwind.employees;
-- The sum of all employee salaries
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 3
Select ProductName, UnitPrice as LowestPrice
from northwind.products
where UnitPrice = (select min(UnitPrice) from northwind.products);
-- The cheapest item Northwind sells
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 4
select avg(UnitPrice) as AveragePrice
from northwind.products;
-- Average price of all products
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 5
select ProductName, UnitPrice as HighestPrice
from northwind.products
where UnitPrice = (select max(UnitPrice) from northwind.products);
-- Highest price of products sold
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 6
select SupplierID, count(*) as numberOfItems
from northwind.products
group by SupplierID;
-- How many items each supplier sells
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 7
select CategoryID, avg(UnitPrice) as AveragePrice
from northwind.products
group by CategoryID;
-- The average price of each item in each category
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 8
select SupplierID, count(*) numberOfItems
from northwind.products
group by SupplierID
having count(*) >= 5;
-- Suppliers that provide at least 5 items to NorthWind
--------------------------------------------------------------------------------------------------------------------------------------
-- Question 9
select productID, ProductName, UnitPrice * UnitsInstock as InventoryValue
from northwind.products
order by InventoryValue DESC, ProductName;
-- Gives InventoryValue by multiplying UnitsInStock by UnitPrice

