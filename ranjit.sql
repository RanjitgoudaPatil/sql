CREATE DATABASE Ranjit;
USE Ranjit;

CREATE TABLE Customers (CustomerID INT PRIMARY KEY,FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL,Email VARCHAR(100) UNIQUE NOT NULL);

INSERT INTO Customers values(1,'Ranjit','Patil','ranjit@gmail.com');
INSERT INTO Customers values(2,'Chethan','G','Chethan@gmail.com');
INSERT INTO Customers values(3,'prem','kumar','prem@gmail.com');
INSERT INTO Customers values(4,'osama','frnd','osama@gmail.com');
INSERT INTO Customers values(5,'naga','prasanna','naga@gmail.com');
INSERT INTO Customers values(6,'sachin','Patil','sachin@gmail.com');
INSERT INTO Customers values(7,'nidhi','kulkarni','nidhi@gmail.com');
INSERT INTO Customers values(8,'preethesh','kulal','preethesh@gmail.com');
INSERT INTO Customers values(9,'swastik','nair','swastik@gmail.com');
INSERT INTO Customers values(10,'swami','raj','swami@gmail.com');
INSERT INTO Customers values(11,'harish','s','harish@gmail.com');
INSERT INTO Customers values(12,'sanath','sunny','sanath@gmail.com');
INSERT INTO Customers values(13,'prajwal','sai','prajwal@gmail.com');
INSERT INTO Customers values(14,'mohan','selva','mohan@gmail.com');
INSERT INTO Customers values(15,'all','ok','all@gmail.com');

CREATE TABLE Orders (OrderID INT PRIMARY KEY,OrderDate DATE NOT NULL,CustomerID INT,FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );

INSERT INTO Orders VALUES(1, '2024-08-01', 1);
INSERT INTO Orders VALUES(2, '2024-08-02', 2);
INSERT INTO Orders VALUES(3, '2024-08-03', 3);
INSERT INTO Orders VALUES(4, '2024-08-04', 4);
INSERT INTO Orders VALUES(5, '2024-08-05', 5);
INSERT INTO Orders VALUES(6, '2024-08-06', 6);
INSERT INTO Orders VALUES(7, '2024-08-07', 7);
INSERT INTO Orders VALUES(8, '2024-08-08', 8);
INSERT INTO Orders VALUES(9, '2024-08-09', 9);
INSERT INTO Orders VALUES(10, '2024-08-10', 10);
INSERT INTO Orders VALUES(11, '2024-08-11', 11);
INSERT INTO Orders VALUES(12, '2024-08-12', 12);
INSERT INTO Orders VALUES(13, '2024-08-13', 13);
INSERT INTO Orders VALUES(14, '2024-08-14', 14);
INSERT INTO Orders VALUES(15, '2024-08-15', 15);


CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100) NOT NULL,Price DECIMAL(10, 2) NOT NULL);

INSERT INTO Products VALUES(1, 'laptop', 999.99);
INSERT INTO Products VALUES(2, 'phone', 499.99);
INSERT INTO Products VALUES(3, 'tablet', 299.99);
INSERT INTO Products VALUES(4, 'earphones', 89.99);
INSERT INTO Products VALUES(5, 'keyboard', 49.99);
INSERT INTO Products VALUES(6, 'mouse', 29.99);
INSERT INTO Products VALUES(7, 'computer', 199.99);
INSERT INTO Products VALUES(8, 'book', 149.99);
INSERT INTO Products VALUES(9, 'chair', 79.99);
INSERT INTO Products VALUES(10, 'board', 129.99);
INSERT INTO Products VALUES(11, 'Desk ', 159.99);
INSERT INTO Products VALUES(12, 'lamp', 39.99);
INSERT INTO Products VALUES(13, 'drive', 19.99);
INSERT INTO Products VALUES(14, 'hard drive', 129.99);
INSERT INTO Products VALUES(15, 'microphone', 69.99);



CREATE TABLE OrderItems (OrderItemID INT PRIMARY KEY,OrderID INT,ProductID INT,Quantity INT NOT NULL,FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),FOREIGN KEY (ProductID) REFERENCES Products(ProductID));

INSERT INTO OrderItems VALUES(1, 1, 1, 1);
INSERT INTO OrderItems VALUES(2, 1, 2, 2);
INSERT INTO OrderItems VALUES(3, 2, 3, 1);
INSERT INTO OrderItems VALUES(4, 2, 4, 1);
INSERT INTO OrderItems VALUES(5, 3, 5, 2);
INSERT INTO OrderItems VALUES(6, 3, 6, 1);
INSERT INTO OrderItems VALUES(7, 4, 7, 1);
INSERT INTO OrderItems VALUES(8, 4, 8, 1);
INSERT INTO OrderItems VALUES(9, 5, 9, 2);
INSERT INTO OrderItems VALUES(10, 5, 10, 1);
INSERT INTO OrderItems VALUES(11, 6, 11, 1);
INSERT INTO OrderItems VALUES(12, 6, 12, 2);
INSERT INTO OrderItems VALUES(13, 7, 13, 1);
INSERT INTO OrderItems VALUES(14, 7, 14, 1);
INSERT INTO OrderItems VALUES(15, 8, 15, 2);

SELECT Customers.FirstName,Customers.LastName,Orders.OrderID,Products.ProductName,OrderItems.Quantity
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID INNER JOIN Products ON OrderItems.ProductID = Products.ProductID;




SELECT Customers.FirstName,Customers.LastName,Orders.OrderID,Products.ProductName,OrderItems.Quantity
FROM Products RIGHT JOIN OrderItems ON Products.ProductID = OrderItems.ProductID RIGHT JOIN Orders ON OrderItems.OrderID = Orders.OrderID RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT Customers.FirstName, Customers.LastName,Orders.OrderID,Products.ProductName,OrderItems.Quantity
FROM Products INNER JOIN OrderItems ON Products.ProductID = OrderItems.ProductID INNER JOIN Orders ON OrderItems.OrderID = Orders.OrderID INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Products.ProductName,
    OrderItems.Quantity
FROM
    Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    RIGHT JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
    RIGHT JOIN Products ON OrderItems.ProductID = Products.ProductID;
