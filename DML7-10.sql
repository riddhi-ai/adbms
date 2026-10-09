create database College_1;
use College_1;
show databases;
 
create table Employees (EmpID int , FirstName varchar(10) ,  LastName varchar (10),EmpAge int , EmpZOne varchar(10));
desc Employees;

/*INSERT DELETE UPDATE TRUNCATE SELECT */
/* INSERT QUERY */
insert into Employees values (1 , 'Neha' , 'Zade' , 20 , 'West' );
select * from Employees;

/*here this will execute because we haven't declared any constraints above*/
insert into Employees  (EmpID , FirstName , LastName , EmpAge , EmpZone )
values(2 , 'Nidhi' , 'Shah' , 30 , 'North' ),
	  (3 , NULL , 'Shah' , 21 , 'South' ),
      (4 , 'Rida' , NULL , 30 , NULL );
select * from Employees;      
      
Alter table Employees rename column EmpZOne to EmpZone ;

/* we can add values to only selected attributes as well */
insert into Employees (EmpID , FirstName , LastName )
values (5, 'Raha' , 'Rao'),
		(6, NULL , 'Garg');
        
/*UPDATE QUERY we have to give condition */
update Employees set FirstName = 'Neha' where EmpAge=20 ;

update Employees set EmpID = 2 where EmpAge=21 ;

/*UPDATE QUERY we have to give condition to change null value and repeated value in the empid*/
select * from Employees;    
update Employees set EmpID = 3 where EmpAge=21 ;

update Employees set LastName = 'Tharana' where EmpID=4 ;

select * from Employees;    
/*UPDATE QUERY to update multiple fields*/
update Employees set LastName = 'Sharma' , FirstName = 'Mona' where EmpID=3 ;

/*we cannot use UPDATE QUERY to update different rows it gives syntax error to
 change multiple values in different rows we can update multiple values in single row*/
/* update Employees set EmpZone = 'East'  where EmpID=5, EmpID =6  ; */

/*DELETE QUERY */
delete from Employees where EmpID=6;
select * from Employees;    

/*Truncate command is used to delete rows from the table deletes structure */
truncate table Employees;

select * from Employees;
