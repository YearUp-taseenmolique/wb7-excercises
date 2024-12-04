-- joins

-- 1
select ProductID, ProductName, UnitPrice, CategoryName
from northwind.products
join northwind.categories on products.CategoryID = categories.CategoryID;

-- 2
select ProductID, ProductName, UnitPrice, CompanyName
from northwind.products
join northwind.suppliers on products.supplierID = suppliers.supplierID
where UnitPrice >= 75
order by ProductName;

-- 3
select ProductID, ProductName, UnitPrice, CategoryName, CompanyName
from northwind.products
join northwind.categories on products.CategoryID = categories.CategoryID
join northwind.suppliers on products.SupplierID = suppliers.SupplierID
order by ProductName;

-- 4
select ProductName, CategoryName, UnitPrice
from northwind.products
join northwind.categories on products.categoryID = categories.categoryID
where products.UnitPrice = (select max(UnitPrice) from northwind.products);

-- 5
-- select OrderID, ShipName, ShipAddress, ShipCountry, CompanyName
-- from northwind.orders
-- join northwind.shippers on orders.ShipVia = shippers.ShipVia
-- where country = 'Germany';
-- Doesn't work because the name is ShipVia instead of ShipperID

-- 6
SELECT Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress
FROM northwind.Orders
JOIN northwind.`Order Details` ON Orders.OrderID = `Order Details`.OrderID
JOIN northwind.Products ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName = 'Sasquatch Ale';