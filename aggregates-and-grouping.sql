USE northwind;
-- 1. 
SELECT COUNT(*)
FROM northwind.suppliers;
-- 2. 
SELECT SUM(Salary)
FROM northwind.employees;
-- 3. 
SELECT ProductName, MIN(UnitPrice) AS 'Minimum'
FROM northwind.products
GROUP BY ProductName;
-- 4. 
SELECT AVG(UnitPrice)
FROM northwind.products;
-- 5. 
SELECT MAX(UnitPrice)
FROM northwind.products;
-- 6. 
SELECT SupplierID, COUNT(SupplierID)
FROM northwind.products
GROUP BY SupplierID;
-- 7. 
SELECT CategoryID, AVG(UnitPrice)
FROM northwind.products;
-- 8. 
SELECT SupplierID, COUNT(SupplierID) AS 'NumberSupplied'
FROM northwind.products
GROUP BY SupplierID
HAVING NumberSupplied >= 5;
-- 9. 
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM northwind.products
ORDER BY InventoryValue DESC, ProductName;