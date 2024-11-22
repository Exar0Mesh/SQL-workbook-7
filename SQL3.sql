USE northwind;
-- 1. Add a new supplier
INSERT INTO suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES ("DoodlyDoos", "Tommy French", "Sales Representative", "101 Gerald Street", "Mesquite", "TX", "75149", "USA", "487-555-3547", NULL, NULL);

SELECT * FROM suppliers;

-- 2. Add a new product provided by that supplier
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (NULL, "Texan Baked Sugar Biscuits", 31, 3, 50, 20.0000, 43, 10, 0, 0);

SELECT * FROM products;

-- 3. List all products and their supplies
SELECT *
FROM 
products AS o
JOIN suppliers s ON (o.SupplierID = s.SupplierID);

-- 4. Raise the price of your new product by 15%
