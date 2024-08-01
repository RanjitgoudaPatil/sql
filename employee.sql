CREATE DATABASE empoyee;
USE employee;
CREATE TABLE Employees (ID INT PRIMARY KEY,Name VARCHAR(50) NOT NULL,Age INT NOT NULL CHECK (Age >= 18 AND Age <= 65),Position VARCHAR(50) NOT NULL,Salary DECIMAL(10, 2) NOT NULL CHECK (Salary > 0));

INSERT INTO Employees  VALUES(1, 'Alice Johnson', 30, 'Engineer', 75000.00);
INSERT INTO Employees  VALUES(2, 'Bob Smith', 45, 'Manager', 90000.00);
INSERT INTO Employees  VALUES(3, 'Charlie Brown', 28, 'Developer', 65000.00);
INSERT INTO Employees  VALUES(4, 'David Wilson', 40, 'Analyst', 70000.00);
INSERT INTO Employees  VALUES(5, 'Eva Davis', 35, 'Engineer', 72000.00);
INSERT INTO Employees  VALUES(6, 'Frank White', 50, 'Consultant', 95000.00);
INSERT INTO Employees  VALUES(7, 'Grace Lee', 29, 'Designer', 68000.00);
INSERT INTO Employees  VALUES(8, 'Hank Miller', 42, 'Manager', 88000.00);
INSERT INTO Employees  VALUES(9, 'Ivy Adams', 38, 'Developer', 69000.00);
INSERT INTO Employees  VALUES(10, 'Jack Evans', 33, 'Analyst', 71000.00);

SELECT * FROM Employees WHERE Age BETWEEN 30 AND 40;

SELECT * FROM Employees WHERE Position LIKE '%Developer%';

SELECT * FROM Employees ORDER BY Salary DESC;

SELECT Name, UPPER(Name) AS UpperName, LENGTH(Name) AS NameLength FROM Employees;

CREATE INDEX idx_position ON Employee(Position);

SELECT * FROM Employees WHERE Position = 'Engineer';
