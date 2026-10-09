/*1.	Create a database named CompanyDB. */
create database CompanyDB;
show databases;

use CompanyDB;
    
/* 2.	Create a table Employees with the following columns:
Employees (EmpID (Integer, Primary Key), EmpName, Salary, JoinDate ) */

create table Employees (Emp_ID int PRIMARY KEY , EmpName varchar (30) , Salary int  , Join_Date date);

/*	3 Create a table Departments with:
Departments (DeptID (Integer, Primary Key), DeptName) */
create table Departments (Dept_ID int Primary key , Dept_Name varchar (50));

desc Employees;
desc Departments;

/* 4.	Add a column Email (VARCHAR(100)) to the Employees table.*/
ALTER table Departments ADD column dept_location varchar(50);

/*5.	Add a column dept_location to the Departments table.*/
ALTER table Employees ADD column Email varchar(50);
desc Employees;
desc Departments;

/* 6. to add not null constraint to the phone column*/
ALTER TABLE Employees add column Phone VARCHAR(15) NOT NULL;
ALTER TABLE Departments add column Phone int NOT NULL;

/* 7.	Change the size of the EmpName column from VARCHAR (50) to VARCHAR (100).*/
alter table Employees modify EmpName varchar (50); 
alter table Employees modify Phone int; 

desc Employees;
desc Departments;


/*8.	Create a foreign key constraint between two tables*/
ALTER TABLE Employees ADD COLUMN Dept_ID INT, ADD CONSTRAINT fk_dept FOREIGN KEY (Dept_ID) REFERENCES Departments(Dept_ID);

/* 9.	Drop the primary key Constraint from Departments*/
ALTER TABLE Employees DROP FOREIGN KEY fk_dept;
ALTER TABLE Departments DROP PRIMARY KEY;

/* 10.	Rename the column EmpName to EmployeeName.*/
alter table Employees rename column EmpName to EmployeeName ;
desc Employees;

/* 11.	Remove the Phone column from the Employees table.*/
ALTER TABLE Employees DROP COLUMN Phone;

/* 12.	Rename the table Employees to EmployeeDetails.*/
alter table Employees rename EmployeeDetails;

/*13.	Delete the Departments table permanently.*/
DROP table departments;

show tables
desc EmployeeDetails;


insert into EmployeeDetails ( Emp_ID , EmployeeName , Salary , Join_Date , Email , Dept_ID)
VALUES  (1011, 'Neha', 50000, '2026-09-30', 'neha@example.com', 1001),
		(1091, 'Harsha', 40900 , '2025-07-30', 'harsha@gmail.com', 2001),
        (1041,'Radha', 54811, '2022-01-11','radha@gmail.com' , 3001),
        (1611,'Navya', 62111 , '2025-02-21', 'navya@gmail.com', 4001),
        (21011, 'Riddhi', 52115, '2026-08-15', 'riddhi@gmail.com',5001);

desc EmployeeDetails;



