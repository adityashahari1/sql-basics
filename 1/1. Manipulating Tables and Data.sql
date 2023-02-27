-- to change to a specific database

use school;

-- create database

create table Student(
	id int primary key not null,
	firstname nvarchar(50) not null, 
	lastname nvarchar(50) not null,
	dateofbirth datetime not null
);

-- insert into database

Insert into Students (lastName, [firstName], dateOfBirth, enrollmentDate) values
('cook', 'tim', 1883, null),
('pichai', 'sundar', 1883, null);

-- select from database, as is used to name our column 
-- 'First Name' is called as alias

select 
firstName as 'First Name', 
lastName [Last Name], 
dateOfBirth [Date of birth] 
from Students;

-- select specific
select * from Students where firstName = 'Aditya';

-- select if it contains follwing chars (its not case sensitive)
select * from Students where lastName like '%stu%';
-- 's%'  begins with s
-- '%s'  ends with s


-- concatenating two colums
select firstName, 
lastName, 
firstName+' '+lastName [Full Name],
enrollmentDate [Enrollment Date] 
from Students;

-- on numbers you can use where col is >= > = < <= operations


-- update all enrollment dates that are empty(null)
update Students set enrollmentDate = '2018-02-01' 
where enrollmentDate is null

-- update all rows in enrollment dates (be carefull)
update Students set enrollmentDate = '2000-11-01'

-- update with ids
update Students set firstName = 'Jeff', lastName = 'Bezos' where id = 4;

-- delete student with id 1
delete from Students where id = 1;

-- delete student named Student2 , Test2
delete from Students where firstName = 'Test2' and lastName = 'Student2';

-- delete all students withe name containing students
delete from Students where firstName like '%student%' or lastName like '%student%';


select * from Students;
