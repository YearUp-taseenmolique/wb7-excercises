-- nested-queries

-- 1
select ProductName
from northwind.Products
where Products.UnitPrice = (select max(UnitPrice) from northwind.products);

-- 2
select Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName
from northwind.Orders
join northwind.shippers on Orders.ShipVia = Shippers.ShipperID
where CompanyName = "Federal Shipping";

-- 3
select OrderID
from northwind.Products
join northwind.`Order Details` on Products.ProductID = `Order Details`.ProductID
where ProductName = 'Sasquatch Ale';

-- 4
Select Employees.LastName, Employees.FirstName
from northwind.Orders
join northwind.employees on orders.EmployeeID = Employees.EmployeeID
where orders.OrderID = 10266;

-- 5
Select CompanyName
from northwind.Customers
where CustomerID = (Select CustomerID
from Northwind.Orders
where OrderID = 10266);