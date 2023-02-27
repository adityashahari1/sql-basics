use school;

Select * from courses;
Select * from Enrollments;
Select * from Students;
Select * from Teachers;

-- Joins
-- Inner Joins

select * from Enrollments
inner join Teachers t on t.id = enrollments.TeacherId
inner join Students s on s.id = enrollments.StudentId
inner join Courses c on c.courseId = enrollments.CourseId;


-- This is how you need to print data 
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
where s.firstName = 'Aditya'
order by c.title

--INNER JOIN: returns rows when there is a match in both tables.
--LEFT JOIN: returns all rows from the left table, even if there are no matches in the right table.
--RIGHT JOIN: returns all rows from the right table, even if there are no matches in the left table.
--FULL JOIN: combines the results of both left and right outer joins.






