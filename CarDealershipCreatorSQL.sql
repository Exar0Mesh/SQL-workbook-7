DROP DATABASE IF EXISTS CarDealership;
CREATE DATABASE IF NOT EXISTS CarDealership;

USE CarDealership;

CREATE TABLE `dealerships` (
    `dealership_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    `address` VARCHAR(50),
    `phone` VARCHAR(12),
    CONSTRAINT `dealerships` PRIMARY KEY (`dealership_id`)
);
-- Used to speed up searches
CREATE INDEX `name` ON `dealerships` (`name`);

-- Will check on this later **
CREATE TABLE `vehicles` (
    `VIN` INTEGER NOT NULL,
    `year` INTEGER,
    `make` VARCHAR(50),
    `model` VARCHAR(50),
    `vehicleType` VARCHAR(50),
    `color` VARCHAR(40),
    `odometer` INTEGER,
    `price` DOUBLE,
    `SOLD` INTEGER, 
    CONSTRAINT `vehicles` PRIMARY KEY (`VIN`)
);

CREATE INDEX `make` ON `vehicles` (`make`);
CREATE INDEX `model` ON `vehicles` (`model`);
CREATE INDEX `VehicleType` ON `vehicles` (`vehicleType`);

CREATE TABLE `inventory` (
    `dealership_id` INTEGER NOT NULL,
    `VIN` INTEGER NOT NULL 
);

CREATE TABLE `sales_contracts` (
    `sales_id` INTEGER NOT NULL AUTO_INCREMENT,
    `VIN` INTEGER NOT NULL,
    `customerDate` VARCHAR(50),
    `customerName` VARCHAR(50),
    `customerEmail` VARCHAR(50),
    `totalPrice` DOUBLE,
    `monthlyPayment` DOUBLE,
    CONSTRAINT `sales_contracts` PRIMARY KEY (`sales_id`)
);

CREATE INDEX `customerDate` ON `sales_contracts` (`customerDate`);
CREATE INDEX `customerName` ON `sales_contracts` (`customerName`);
CREATE INDEX `customerEmail` ON `sales_contracts` (`customerEmail`);

CREATE TABLE `lease_contracts` (
    `lease_id` INTEGER NOT NULL AUTO_INCREMENT,
    `VIN` INTEGER NOT NULL,
	`customerDate` VARCHAR(50),
    `customerName` VARCHAR(50),
    `customerEmail` VARCHAR(50),
    `totalPrice` DOUBLE,
    `monthlyPayment` DOUBLE,
    CONSTRAINT `lease_contracts` PRIMARY KEY (`lease_id`)
);

CREATE INDEX `customerDate` ON `lease_contracts` (`customerDate`);
CREATE INDEX `customerName` ON `lease_contracts` (`customerName`);
CREATE INDEX `customerEmail` ON `lease_contracts` (`customerEmail`);

-- Inserts are going right here:

INSERT INTO `vehicles` (`VIN`, `year`, `make`, `model`, `vehicleType`, `color`, `odometer`, `price`, `SOLD`) VALUES
(10001, 2022, 'Toyota', 'Corolla', 'Sedan', 'Blue', 15000, 22000.50, 0),
(10002, 2021, 'Honda', 'Civic', 'Sedan', 'Red', 18000, 25000.00, 0),
(10003, 2023, 'Ford', 'F-150', 'Truck', 'Black', 5000, 35000.75, 0),
(10004, 2022, 'Chevrolet', 'Equinox', 'SUV', 'White', 12000, 28000.30, 0),
(10005, 2023, 'BMW', 'X5', 'SUV', 'Silver', 8000, 60000.00, 0),
(10006, 2020, 'Tesla', 'Model 3', 'Sedan', 'White', 20000, 45000.99, 1),
(10007, 2021, 'Nissan', 'Altima', 'Sedan', 'Gray', 14000, 23000.45, 0),
(10008, 2022, 'Jeep', 'Wrangler', 'SUV', 'Red', 9000, 40000.10, 1),
(10009, 2023, 'Hyundai', 'Elantra', 'Sedan', 'Blue', 10000, 21000.25, 0),
(10010, 2020, 'Kia', 'Soul', 'SUV', 'Yellow', 16000, 19000.00, 0);

INSERT INTO `dealerships` (`name`, `address`, `phone`) VALUES
('Elite Motors', '1234 Elm St, Springfield', '555-1234'),
('Auto World', '5678 Oak Ave, Rivertown', '555-5678'),
('Luxury Cars', '4321 Maple Blvd, Metropolis', '555-4321'),
('Car City', '8765 Pine Rd, Hilltop', '555-8765'),
('City Auto Sales', '1357 Cedar Ln, Downtown', '555-1357'),
('Prime Autos', '2468 Birch St, Greenfield', '555-2468'),
('Best Buy Motors', '3690 Walnut Dr, Lakeside', '555-3690'),
('DriveTime', '1020 Redwood Blvd, Fairview', '555-1020'),
('Fast Lane Motors', '7890 Cherry Ln, Brookwood', '555-7890'),
('Top Gear Autos', '5432 Fir St, Oakdale', '555-5432');

INSERT INTO `sales_contracts` (`customerDate`, `VIN`, `customerName`, `customerEmail`, `totalPrice`, `monthlyPayment`) VALUES
('2024-11-01', 10002,'John Doe', 'john.doe@example.com', 25000.00, 500.00),
('2024-11-05', 10003,'Jane Smith', 'jane.smith@example.com', 30000.00, 600.00),
('2024-11-10', 10001,'Mark Johnson', 'mark.johnson@example.com', 22000.50, 450.00),
('2024-11-12', 10007,'Sarah Brown', 'sarah.brown@example.com', 18000.75, 375.00),
('2024-11-15', 10002,'David Lee', 'david.lee@example.com', 35000.25, 700.00),
('2024-11-18', 10003,'Olivia Taylor', 'olivia.taylor@example.com', 32000.00, 640.00),
('2024-11-20', 10008,'Ethan Clark', 'ethan.clark@example.com', 27000.00, 540.00),
('2024-11-21', 10005,'Mason Evans', 'mason.evans@example.com', 22000.75, 450.00),
('2024-11-22', 10010,'Isabella Davis', 'isabella.davis@example.com', 18000.50, 375.00),
('2024-11-23', 10009,'Liam Harris', 'liam.harris@example.com', 26000.00, 520.00);

INSERT INTO `lease_contracts` (`customerDate`, `VIN`, `customerName`, `customerEmail`, `totalPrice`, `monthlyPayment`) VALUES
('2024-11-03', 10004,'Alice Green', 'alice.green@example.com', 20000.00, 350.00),
('2024-11-07', 10001,'Bob White', 'bob.white@example.com', 25000.00, 400.00),
('2024-11-11', 10002,'Charlie Black', 'charlie.black@example.com', 22000.00, 375.00),
('2024-11-13', 10002,'Diana Blue', 'diana.blue@example.com', 28000.00, 500.00),
('2024-11-17', 10006,'Eva Red', 'eva.red@example.com', 24000.00, 450.00),
('2024-11-18', 10006,'Lucas Martin', 'lucas.martin@example.com', 26000.00, 480.00),
('2024-11-19', 10009,'Sophia Wilson', 'sophia.wilson@example.com', 30000.00, 550.00),
('2024-11-21', 10010,'James Moore', 'james.moore@example.com', 28000.00, 500.00),
('2024-11-22', 10005,'Amelia Lewis', 'amelia.lewis@example.com', 24000.00, 450.00),
('2024-11-23', 10003,'Benjamin Walker', 'benjamin.walker@example.com', 27000.00, 520.00);

INSERT INTO `inventory` (`dealership_id`, `VIN`) VALUES
(1, 10001),
(2, 10002),
(3, 10003),
(4, 10004),
(5, 10005),
(6, 10006),
(7, 10007),
(8, 10008),
(9, 10009),
(10, 10010);
