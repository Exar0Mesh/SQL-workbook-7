USE CarDealership;

-- 1.
SELECT *
FROM dealerships;

-- 2. 
SELECT d.dealership_id, v.*
FROM dealerships d
	JOIN inventory i ON (d.dealership_id = i.dealership_id)
    JOIN vehicles v ON (i.VIN = v.VIN);

-- 3.
SELECT *
FROM vehicles
WHERE VIN = 10008;

-- 4. 
SELECT v.VIN, d.*
FROM vehicles v
	JOIN inventory i ON (v.VIN = i.VIN)
    JOIN dealerships d ON (i.dealership_id = d.dealership_id)
WHERE v.VIN = 10006;

-- 5. Find all SEDANS
SELECT v.vehicleType, d.*
FROM vehicles v
	JOIN inventory i ON (v.VIN = i.VIN)
    JOIN dealerships d ON (i.dealership_id = d.dealership_id)
WHERE v.vehicleType = "Sedan";

-- 6. The only interesting thing is that I inserted VIN wrong, but I can change the database inserts as much as I want
SELECT d.*, s.*
FROM 
	dealerships d
    JOIN inventory i ON (d.dealership_id = i.dealership_id)
    JOIN sales_contracts s ON (i.VIN = s.VIN)
WHERE d.name = "Auto World";