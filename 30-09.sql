/* DDl Commands*/
create database Institute;
show databases;

use Institute;

CREATE TABLE Staff ( staff_id INT , first_name VARCHAR(10), last_name VARCHAR(10), DOB DATE, dep_id INT);


create table Department (dept_id int , dept_name varchar (10) , dept_location varchar (10));

desc Staff;
desc Department;

/*add column to existing table.*/

ALTER TABLE Staff ADD COLUMN dept_name VARCHAR(50) ;
ALTER TABLE Staff ADD COLUMN dept_location VARCHAR(50) ;

/*  Syntax Alter table table name Add columnname datatype();
ALTER TABLE Staff ADD COLUMN age int , ADD contact_number int(10) ; */

ALTER TABLE Staff ADD COLUMN age INT, ADD COLUMN contact_number BIGINT;
desc Staff;

/*  Change the datatype of a column in an existing table
syntax : Alter table tablename modify columnname datatype(); */

alter table Staff modify contact_number int (10);

/* Drop column in existing table 
syntax : Alter table tablename drop column columnname*/
 
 alter table Staff drop column contact_number;
 
 /*Create a foreign key constraint between two table
 first created the primary key constraint on tables
 syntax : Alter table table name add primary key (columnname);
 Create a foreign key constraint between two table
 syntax :Alter table table name add foreign key (columnname);
 */
 Alter table Staff add primary key (staff_id);
 desc Staff;

Alter table Department add primary key (dept_id);
desc Department;

ALTER TABLE Staff
CHANGE dep_id dept_id INT;

Alter table Staff add foreign key (dept_id) references department (dept_id) ;

Desc Staff;




