-- 09-10-26
/* create index statement is used to create indexs in tables
Indexes are used to retrieve data from the database more quickly than otherwise. 
the users cannot see the indexes
they are used to speed up searches/queries*/


use company_db;

-- to create index
select * from Employee;
create Index DemoIndex on Employee(FirstName);
show indexes from Employee;  -- to show indexes


create Index DemoIndex1 on Employee(FirstName,LastName); -- to give multiple indexes
show indexes from Employee; 

-- to retrieve data for index of only firstname then have to use DemoIndex only DemoIndex1 is for LastName