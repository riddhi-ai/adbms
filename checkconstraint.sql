-- individual check constraint to two 2 column then drop then together add check constraint then drop then add values

create database emp;
use emp;
CREATE TABLE Employee4 (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmpAge INT,
    Salary INT
);

/*To Add individual CHECK constraints */
-- Age must be > 20
ALTER TABLE Employee4
ADD CONSTRAINT chk_age CHECK (EmpAge > 20);

-- Salary must be > 1000
ALTER TABLE Employee4
ADD CONSTRAINT chk_salary CHECK (Salary > 1000);

/*Drop individual constraints*/
ALTER TABLE Employee4 DROP CONSTRAINT chk_age;
ALTER TABLE Employee4 DROP CONSTRAINT chk_salary;

/*add combination constraints*/
ALTER TABLE Employee4
ADD CONSTRAINT chk_age_salary CHECK (EmpAge > 20 AND Salary > 1000);

/*Drop the combined constraint*/
ALTER TABLE Employee4 DROP CONSTRAINT chk_age_salary;

-- This will fail (Age < 20)
INSERT INTO Employee4 VALUES (1, 'Ravi', 'Kumar', 18, 2000);

-- This will fail (Salary < 1000)
INSERT INTO Employee4 VALUES (2, 'Geeta', 'Kumari', 25, 500);

-- This will succeed
INSERT INTO Employee4 VALUES (3, 'Amit', 'Sharma', 30, 5000);


-- apply foreign key constraint to single column then check and drop it using  Show create table tablename;