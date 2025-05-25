CREATE DATABASE Bookstore;
USE Bookstore;

CREATE TABLE books(
BookID int primary key,
Title varchar(155),
Author varchar(155),
Price dec
);

INSERT INTO books(BookID,Title,Author,Price)
VALUES
('1001','Atomic Habits','James Clear','50.50'),
('1002','1Q84','Haruki Murakami','57.00'),
('1003','Kafka on the Shore','Haruki Murakami','60.50'),
('1004','Surrounded By Idiots','Thomas Erikson','70.75');


SELECT * FROM books;

CREATE TABLE Customers(
CustomerID int primary key,
Name varchar(55),
Email varchar(100),
Phone int
);

INSERT INTO Customers(CustomerID,Name,Email,Phone)
VALUES
('2001','Richard','richardabc@gmail.com','123456'),
('2002','Christina','christinadef@gmail.com','789123'),
('2003','George','georgeabc@gmail.com','321123'),
('2004','Derek','derekdef@gmail.com','456654');

select * from Customers;

CREATE TABLE Orders(
OrderID int primary key,
CustomerID int,
bookID int,
Quantity int,
Order_Date date,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (bookID) REFERENCES books(BookID)
);

INSERT INTO Orders(OrderID,CustomerID,bookID,Quantity,Order_Date)
VALUES
('1','2001','1002','2','2023-07-02'),
('2','2003','1001','1','2023-10-11'),
('3','2004','1003','3','2023-10-08'),
('4','2001','1004','1','2023-10-21'),
('5','2002','1002','2','2023-09-09');

UPDATE Orders
SET Order_Date='2023-07-02'
WHERE CustomerID=2001;

SELECT *FROM Orders;

SELECT * FROM Orders;

 SELECT * FROM books WHERE Price>50;   ##QUERY2
 
 SELECT Name,SUM(Quantity) AS Total_quantity_ordered
 FROM Orders,Customers                                ##QUERY3
 WHERE Orders.CustomerID=Customers.CustomerID
 GROUP BY Name,Quantity
 ORDER BY Quantity DESC;
 
UPDATE books
SET Price=29.99     ##QUERY4
WHERE BookID=1001;

SELECT * FROM books;