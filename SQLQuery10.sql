
USE [SQL Practice];
GO

CREATE TABLE dbo.Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    OrderDate DATE NOT NULL,
    ShipDate DATE NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Sales DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(4,2) NULL,
    Profit DECIMAL(10,2) NOT NULL
);



INSERT INTO dbo.Orders
(OrderID, CustomerID, ProductName, Category, Country,
 OrderDate, ShipDate, Quantity, UnitPrice, Sales, Discount, Profit)
VALUES
(1,'c101','office chair','furniture','usa','2023-01-15','2023-01-18',2,250.00,500.00,0.10,80.00),
(2,'c102','gaming chair','furniture','usa','2023-03-10','2023-03-12',1,700.00,700.00,0.20,120.00),
(3,'a103','laptop','technology','germany','2023-05-05','2023-05-08',3,400.00,1200.00,0.15,250.00),
(4,'b104','desk lamp','office supplies','uk','2022-11-20','2022-11-25',5,40.00,200.00,0.05,30.00),
(5,'c105','tablet','technology','usa','2023-07-01',NULL,1,350.00,350.00,NULL,-20.00),
(6,'d106','bookshelf','furniture','canada','2024-01-12','2024-01-15',4,150.00,600.00,0.25,90.00),
(7,'c107','monitor','technology','usa','2023-09-09','2023-09-14',2,275.00,550.00,0.00,60.00),
(8,'e108','printer','technology','france','2023-04-18',NULL,1,180.00,180.00,0.10,-15.00),
(9,'c109','wooden chair','furniture','uk','2023-12-05','2023-12-09',6,120.00,720.00,0.30,140.00),
(10,'f110','mouse','technology','germany','2023-06-22','2023-06-24',10,25.00,250.00,0.05,40.00),
(11,'c111','conference chair','furniture','usa','2022-08-14','2022-08-19',3,320.00,960.00,0.10,-50.00),
(12,'g112','phone','technology','india','2023-02-11','2023-02-15',2,500.00,1000.00,0.20,200.00),
(13,'h113','binder','office supplies','usa','2023-10-01','2023-10-03',1,15.00,15.00,0.00,5.00),
(14,'c114','standing desk','furniture','germany','2023-11-19','2023-11-22',2,650.00,1300.00,0.10,300.00),
(15,'i115','headphones','technology','usa','2024-02-05','2024-02-07',4,80.00,320.00,0.05,45.00),
(16,'c116','study chair','furniture','usa','2023-08-08',NULL,5,210.00,1050.00,0.40,180.00),
(17,'j117','router','technology','uk','2023-03-30','2023-04-02',2,150.00,300.00,NULL,-10.00),
(18,'c118','filing cabinet','furniture','canada','2023-05-21','2023-05-25',1,450.00,450.00,0.20,70.00),
(19,'k119','desk chair pro','furniture','usa','2023-06-01','2023-06-05',2,480.00,960.00,0.10,150.00),
(20,'c120','server rack','technology','germany','2023-07-17','2023-07-20'
,1,1100.00,1100.00,0.05,220.00);


SELECT *
FROM dbo.Orders;

SELECT OrderID, CustomerID, Sales
FROM dbo.Orders;

SELECT *
FROM dbo.Orders
WHERE Sales > 500;

SELECT *
FROM dbo.Orders
WHERE Quantity = 1;

SELECT *
FROM dbo.Orders
WHERE Country = 'USA';


SELECT DISTINCT Country
FROM dbo.Orders;

SELECT *
FROM dbo.Orders
WHERE Profit < 0;

SELECT *
FROM dbo.Orders
WHERE Discount >= 0.2;


SELECT *
FROM dbo.Orders
WHERE ShipDate IS NULL;


SELECT *
FROM dbo.Orders
WHERE Sales = Quantity * UnitPrice;



SELECT *
FROM dbo.Orders
WHERE Country = 'USA' AND Sales > 300;


SELECT *
FROM dbo.Orders
WHERE Category = 'Furniture' OR Category = 'Technology';


SELECT *
FROM dbo.Orders
WHERE CustomerID LIKE 'C%';


SELECT *
FROM dbo.Orders
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-12-31';


SELECT *
FROM dbo.Orders
WHERE Country IN ('USA', 'UK', 'Germany')
ORDER BY Sales DESC;


SELECT *
FROM dbo.Orders
WHERE Sales > 500 AND Profit > 0
ORDER BY Profit DESC;


SELECT *
FROM dbo.Orders
WHERE Discount IS NOT NULL AND Discount > 0
ORDER BY Discount ASC;


SELECT *
FROM dbo.Orders
WHERE (Quantity * UnitPrice) - Discount > 1000;



SELECT *
FROM dbo.Orders
WHERE ProductName LIKE '%Chair%'
AND Sales BETWEEN 200 AND 1000;


SELECT DISTINCT CustomerID
FROM dbo.Orders
WHERE Country = 'USA' AND Profit < 0
ORDER BY CustomerID ASC;
