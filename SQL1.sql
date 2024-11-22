USE northwind;
-- 1. 
SELECT MAX(UnitPrice) 
FROM northwind.products;

SELECT ProductName
FROM northwind.products
WHERE UnitPrice IN (
SELECT MAX(UnitPrice) 
FROM northwind.products
);

-- 2. 
SELECT CompanyName
FROM northwind.shippers
WHERE ShipperID = 3;

SELECT OrderID, ShipName, ShipVia, ShipAddress
FROM northwind.orders
WHERE ShipVia = (SELECT ShipperID
FROM northwind.shippers
WHERE CompanyName = 'Federal Shipping');

-- 3. 
SELECT ProductName
FROM northwind.products
WHERE ProductID = 34;

SELECT OrderID, ProductID
FROM northwind.`order details`
WHERE ProductID = (SELECT ProductID
FROM northwind.products
WHERE ProductName = 'Sasquatch Ale');

-- 4. 
SELECT ProductID
From northwind.`order details`
WHERE OrderID = 10266;`

