/* SQL Constraints Primary Key, NOT NULL, Unique, 
Foreign Key and Check Constraint , DEFAULT */

/* NOT NULL - Ensures that column can't be empty not have null value
UNIQUE - All values in column must be unique
table can have multiple unique constraint but single primary key constraint
Primary Key - A combination of a NOT NULL and UNIQUE
Uniquely identifies each row in a table
Foreign Key - Prevents actions that could destroy links between tables
Check - ensures column satisfies the specific condition
*/

create database company_db;
use company_db;

/* NOT NULL*/
create table Employee (EmpID int NOT NULL , FirstName varchar(50)  , LastName varchar (10), EmpAge int);

desc Employee;

/* insert into Employee values(NULL , 'Rida' , 'Rao' , 20); 
here empid cannot be null it will show error*/

insert into Employee values(101 , 'Rida' , 'Rao' , 20);
select * from Employee;

/*UNIQUE KEY */
create table Employee1 (EmpID int NOT NULL , FirstName varchar(50)  , LastName varchar(10), EmpAge int , unique (EmpID));
desc Employee1;


(NULL , 'Ravi ' , 'Kumar'); /*will show error */
INSERT INTO Employee1 VALUES (1, 'Ravi', 'Kumar', 30);

insert into Employee1 values (1 , 'Ravi ' , 'Kumar'); /*wont take duplicate entry */
insert into Employee1 values (2 , 'Ravi ' , 'Kumar', 21);
select * from Employee1;

/*CHECK CONSTRAINT */
create table Employee3 (EmpID int NOT NULL , FirstName varchar(50)  , LastName varchar(10), EmpAge int , check(EmpAge>20));
desc Employee3;

insert into Employee3 values (1, 'Geeta ' , 'Kumari' , 15 ); /*gives error because of check constraint */
insert into Employee3 values (1, 'Geeta ' , 'Kumari' , 22 );

select * from Employee3;

 -- check constraint using alter command
 -- add salary column in table
 Alter table Employee3 Add column Salary int;
 Alter table Employee3 add check (Salary >= 50000); -- only check constraint
 update Employee3 set Salary =100000;
 
 desc Employee3;
 insert into  Employee3 values ( 202 , 'Radha' , 'Sharma ' , 32 , 55000);
 
 -- check constraint on multiple columns
 create table Employee4 (EmpID int Primary Key , FirstName varchar(50)  , LastName varchar(10), EmpAge int );
 desc Employee4;
 
 insert into Employee4 values (Null , 'Ram' , 'Kumar' , 20); -- cannot be null due to PK
 
 ALTER TABLE Employee4 ADD COLUMN Salary int;

 Alter table Employee4 add constraint chk_EmpAge_salary 
 check (EmpAge>20 AND salary >=5000);
 
 insert into Employee4 values (2 , 'Geet' , 'Gore' , 13 , 4000); -- because of constraint won't execute
 
 insert into Employee4 values (2 , 'Geet' , 'Gore' , 21 , 6000);
 select * from Employee4;			
 
 -- drop check constraint individual
 -- Alter table Employee4 drop check Salary;
 
 -- constraint not fully dropped
 -- dropping only a column level constraint while a table-level constraint remains
 
 SHOW create table Employee4;
 alter table Employee4 drop check chk_EmpAge_salary;
 insert into Employee4 values (5 , 'Anushka' , 'Naik' , 10 , 10000);
 
 select*from Employee4 ;
 
 
/* DEFAULT */
create table Employee5 (EmpID int NOT NULL , FirstName varchar(50)  , LastName varchar(10), EmpDept varchar(50) DEFAULT 'Operations');
desc Employee5;

insert into Employee5  (EmpID , FirstName, LastName)
values (1,'Rabi' , 'Kumar');
 select*from Employee5 ;

/*Check Constraint 09-10 */
create table Employee6(EmpID int primary key , FirstName varchar(50)  , LastName varchar(10), EmpAge int , Salary int);
-- single column-> Alter table Employee6 add check (salary>=5000)
-- multiple column we have to give the alias
 Alter table Employee6 add constraint chk_EmpAge_Salary
 check(EmpAge>20 and Salary >=5000);
 
 desc Employee6 ;
 -- we will know while inserting data in table we will know if we add against the constraint
 
 -- to check every constraints
 Show create table Employee6;
 
 
 insert into Employee6 values (201, 'Rita','Sharma',18,25000) ;-- couldnt execute because of the age constraint age should have been more than 18
 insert into Employee6 values (201, 'Rita','Sharma',28,25000);
 
  select * from Employee6;
  
  
  -- to drop constraint
  Alter table Employee6 drop check chk_EmpAge_Salary;
  desc Employee6;
  
  Alter table Employee6 add check (salary>=5000); -- added constraint to the salary
   Show create table Employee6;
   
-- when we don't name the constraint it gets the constraint name automatically and can be seen with the command  Show create table tablename;
Alter table Employee6 Drop Check employee6_chk_1;


