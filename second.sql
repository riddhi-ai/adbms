CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Floor INT,
    Department VARCHAR(50),
    Salary INT
);

select* from Employee;

INSERT INTO Employee (EmployeeID, Name, Floor, Department, Salary)
VALUES
(1, 'Riddhi', 21, 'IT', 40000),
(2, 'Amit', 25, 'HR', 35000),
(3, 'Sneha', 23, 'IT', 45000),
(4, 'Rahul', 28, 'Finance', 50000);

UPDATE Employee
SET Floor = 20
WHERE EmployeeID = 2


DELETE FROM Employee
WHERE EmployeeID = 2;

