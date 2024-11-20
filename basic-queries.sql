-- 1. 
USE northwind;
-- 2.
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products;
-- 3.
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
ORDER BY UnitPrice ASC;
-- 4. 
SELECT *
FROM northwind.products
WHERE UnitPrice <= 7.50;
-- 5. 
SELECT *
FROM northwind.products
WHERE UnitsInStock >= 100;
-- 6. 
SELECT *
FROM northwind.products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;
-- 7. No results
SELECT *
FROM northwind.products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName;
-- 8. 
SELECT *
FROM northwind.categories;
-- 9. SeaFood is CategoryID 8
SELECT CategoryID
FROM northwind.categories;
-- 10. 
SELECT *
FROM northwind.products
WHERE CategoryID = 8;
-- 11. 
SELECT FirstName, LastName
FROM northwind.employees;
-- 12. 
SELECT *
FROM northwind.employees
WHERE Title LIKE "%Manager%";
-- 13. 
SELECT DISTINCT Title
FROM northwind.employees
GROUP BY Title;
-- 14. 
SELECT *
FROM northwind.employees
WHERE Salary BETWEEN 2000 AND 2500;