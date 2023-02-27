use school

-- View is already created with certain colums
-- You can directly write query to get results
-- In work you need to write reports, this helps in doing it efficiently
-- View is just a manifestation of a query

Select * From Student_Courses

-- Creating view 
--CREATE VIEW' must be the first statement in a query batch (go)
go
Create view Student_Subject_Lecturer as
select t.firstName as 'Teacher First Name' ,
t.lastName [Teacher Last Name],
s.firstName as 'Student First Name',
s.lastName [Student Last Name],
c.title [Course Title],
c.courseCode [Course Code]
from Enrollments 
inner join Teachers t on t.id = enrollments.TeacherId
inner join Students s on s.id = enrollments.StudentId
inner join Courses c on c.courseId = enrollments.CourseId

--Using created view

Select * From Student_Subject_Lecturer
Where [Teacher First Name] = 'Shewta'
Order by [Course Title]
--It reduces the overhead of type the same lenthy statement repeatedly


-- update using alter 
go
alter view Student_Subject_Lecturer as
select t.firstName as 'Teacher First Name' ,
t.lastName [Teacher Last Name],
s.firstName as 'Student First Name',
s.lastName [Student Last Name],
c.title [Course Title],
c.courseCode [Course Code]
from Enrollments 
inner join Teachers t on t.id = enrollments.TeacherId
inner join Students s on s.id = enrollments.StudentId
inner join Courses c on c.courseId = enrollments.CourseId

-- Rename view name
exec sp_rename 'Student_Subject_Lecturer', 'Student_Enrollments'


-- Scalar Valued Functions

-- get date
select getDate()

-- get year
select year(getDate())


-- Scalar function
-- Used to create userdefined functions for efficiency
-- returns variable

select dbo.getHighestGrade() [Highest Grade]

-- Scalar function with parameter
select dbo.getCourseTitleById(6)

-- Inline Table-Valued Functions
-- Returns table
-- for more complex queries

-- find students grade between two parameters
select * from dbo.gradeRange(0, 100)


-- Multi Statement Table-Valued Functoins
select * from dbo.allPersons()


-- Stored Procedures
-- In business applications you need stored procedures to call the data

--
exec dbo.SelectAllStudents;

exec dbo.SelectStudentById @id = 1;

exec [dbo].[InsertStudent] @lastName = 'Yagami', @firstName = 'Light', @dateOfBirth = '2000-1-11'

-- hw create update and delete

exec [dbo].[UpdateStudent] 
@lastName = 'Uchiha', 
@firstName = 'Itachi', 
@dateofBirth = '2000-1-12', 
@id = 3


exec DeleteStudentById @id = 6


Declare @StudentId int
exec [dbo].[InsertStudentOuputVariable] 'Uzumaki', 'Naruto', '2000-02-02', @StudentId OUTPUT
exec dbo.SelectStudentById @id = @StudentId;


-- Triggers
-- procedure that automatically runs when an event occurs
-- Insert, Update, Delete action
-- A practical use case of triggers is that it is used to create logs
-- After certaing update, delete, insert we can log that data into a table


-- When a new student is inserted it automatically triggers
-- and assigns teacher and course to the new student

DECLARE @StudentId int
exec [dbo].[InsertStudentOuputVariable] 'Willis', 'Brian', '2002-11-1', @StudentId OUTPUT

-- If a student is deleted then delete all his enrollments
Delete From Students where id = 11;


select * from Enrollments
select * from Students