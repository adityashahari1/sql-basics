use Company;

Create table Employees(
	EmpId smallint primary key identity(1,1),
	Emp_FirstName nchar(20),
	Emp_LastName nchar(20),
	Emp_City nchar(20),
	DOJ date,
	Salary money,
	DID smallint Foreign key References Departments(Dept_Id),
	BID smallint Foreign key References Branches(BID)
);

INSERT INTO Employees(Emp_FirstName, Emp_LastName, Emp_City, DOJ, Salary, DID, BID) values
('Light', 'Yagami', 'Pune', '2017-2-4', 100, 2, 1),
('Tokyo', 'Ghoul', 'Mumbai', '2017-2-22', 200, 2, 2),
('Death', 'Note', 'Punjab', '2018-5-23', 200, 5, 3),
('Naruto', 'Uzumaki', 'Nashik', '2019-3-24', 500, 2, 4),
('Ted', 'Lasso', 'Aurangabad', '2015-4-25', 400, 3, 2),
('Bradd', 'Pitt', 'Lucknow', '2016-5-26', 200, 1, 2),
('Timothy ', 'Miller', 'Punjab', '2018-6-27', 100, 2, 4),
('Joshua ', 'Potter', 'Pune', '2015-7-28', 300, 4, 3),
('Crystal ', 'Morales', 'Aurangabad', '2016-8-29', 400, 3, 2),
('Jordan ', 'Carlson', 'Gujrat', '2015-8-1', 500, 4, 1),
('Thomas ', 'Mack', 'Ahemdabad', '2021-2-2', 200, 5, 3),
('Martin ', 'Phillips', 'Nashik', '2020-3-3', 300, 3, 3),
('Amy ', 'Payne', 'Pune', '2020-6-4', 100, 5, 2),
('Fernando ', 'Neal', 'Mumbai', '2021-12-5', 400, 1, 4);


--Joined in 2021
SELECT Emp_FirstName + ' ' + Emp_LastName as 'Full Name' 
FROM Employees WHERE DOJ > '2020-12-31' AND DOJ < '2022-1-1'; 

--Working in software dept before 2021
SELECT * FROM Employees WHERE DID = 2 AND DOJ < '2021-1-1';

--Working in Mumbai branch
SELECT * FROM Employees WHERE BID = 1;

--Working in Software, Mumbai branch, Joined before 2021, Salary less than 15000
SELECT * FROM Employees WHERE DID = 2 AND BID = 1 AND DOJ < '2021-1-1' AND Salary < 15000;

--Select Emp names and dept names, also show dept where no employee is working
SELECT 
Emp_FirstName [Employee First Name], 
Emp_LastName [Employee Last Name],
Dept_Name [Department Name]
FROM Employees 
RIGHT JOIN Departments on Departments.Dept_ID = Employees.DID;

-- Delete Info dept
DELETE FROM Departments WHERE Dept_ID = 6;

SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Branches;


