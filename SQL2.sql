USE northwind;
-- 1. Join the products table witn the categories table
SELECT * FROM Categories;
SELECT * FROM Products;

SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryID
FROM 
	Products p
JOIN 
	Categories c ON (c.CategoryID = p.CategoryID)
ORDER BY CategoryName, ProductName;

-- 2. 
SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, s.CategoryID
FROM 
	Products p
JOIN 
	Suppliers s ON (s.SupplierID = p.SupplierID)
WHERE 
	p.UnitPrice > 75
ORDER BY p.ProductName;

-- 3. 
SELECT 
	p.ProductID, p.ProductName, p.UnitPrice, c.CategoryID, s.CompanyName
FROM 
	Products AS p
	JOIN Suppliers s ON (s.SupplierID = p.SupplierID)
    JOIN Categories c ON (c.CategoryID = p.CategoryID)
ORDER BY p.ProductName;

-- 4. What is the most expensive product. Can use a OrderPrice DESC LIMIT 1 as well
SELECT 
	p.ProductName, p.UnitPrice, c.CategoryName
FROM 
	Products p
	JOIN Categories c ON (p.CategoryID = c.CategoryID)
WHERE 
	p.UnitPrice = (SELECT MAX(UnitPrice) FROM Products);
    
-- 5. 
SELECT 
	o.ORDERID, o.ShipName, o.ShipAddress, s.CompanyName
FROM 
	Orders AS o
	JOIN Shippers s ON (o.ShipVia = s.ShipperID)
WHERE 
	o.ShipCountry = "Germany";

-- 6. AND is like a WHERE, and both can work. So that last join needs both to work for the AND
SELECT
	od.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM 
	`Order Details` AS od
    JOIN Orders o ON (od.OrderID = o.OrderID)
    JOIN Products p ON (p.ProductID = od.ProductID AND p.ProductName = "Sasquatch Ale");