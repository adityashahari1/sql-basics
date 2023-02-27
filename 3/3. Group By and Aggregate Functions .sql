use school;

SELECT * FROM Enrollments;

-- distinct does not print repeating data

SELECT TeacherId, StudentId from Enrollments;
SELECT distinct TeacherId, StudentId from Enrollments;

-- this is same as using distinct
Select TeacherId, StudentId from Enrollments Group by TeacherId, StudentId;


-- group by
-- its placed before having, order by
-- its placed after join, where
-- it basically does not repeat the same data

--here there is no difference in select and group by therefore same result
SELECT TOP (1000) [id]
      ,[lastName]
      ,[firstName]
      ,[dateOfBirth]
      ,[enrollmentDate]
  FROM [Students]
  WHERE id > 2
  GROUP BY [id]
      ,[lastName]
      ,[firstName]
      ,[dateOfBirth]
      ,[enrollmentDate]


Select * from Enrollments;

Select CourseId, avg(Grade) from Enrollments
where CourseId = 3 
Group by CourseId;

-- Filter on normal column you use WHERE
-- Filter on aggregate column you use HAVING


-- Count()
Select Count(StudentId), CourseId 
from Enrollments
Group by CourseId;

-- Count() with inner join
Select Count(StudentId) [Student Count], e.CourseId [Course ID] ,
c.title [Title]
from Enrollments e 
inner join Students s on s.id = e.StudentId
inner join Courses c on c.courseId = e.CourseId
Group by e.CourseId, c.title


-- Max() Min()
select CourseId [Course ID], 
Max(Grade) [Max Grade], 
Min(Grade) [Min Grade] 
from Enrollments
Group by CourseId


-- Sum()
Select StudentId [Student Id], 
s.firstName + ' ' + s.lastName [Student Name], 
Sum(Grade)[Total grade] 
from Enrollments e
inner join Students s on s.id = e.StudentId
Where StudentId = 1 
Group by StudentId, s.firstName + ' ' + s.lastName