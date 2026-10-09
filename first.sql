CREATE DATABASE College;

USE College;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

SELECT * FROM Student;
INSERT INTO Student (StudentID, Name, Age)
VALUES
(1, 'Riddhi', 21),
(2, 'Amit', 22),
(3, 'Sneha', 20);


UPDATE Student 
SET Age = 20
WHERE StudentID = 2;

SELECT * from Student;


SELECT * FROM Student;
INSERT INTO Student (StudentID, Name, Age)
VALUES (4,  'Achal' , null);


delete from Student
WHERE StudentID = 2;

SELECT * FROM Student;


UPDATE Student 
SET Age = 20
WHERE StudentID = 2;

DELETE FROM Student
WHERE StudentID = 2;