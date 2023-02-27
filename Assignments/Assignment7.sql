use Company;


-- Company wants to know which record is inserted into employee table or deleted from employee 
-- table. Help the company by creating After Insert and After Delete Trigger on Employee table 
-- which will select newly inserted record or deleted record of Employee table and add that record 
-- in Employee_Test_Audit table. You must create Employee_Test_Audit table also with relevant columns.


-- Create table
CREATE TABLE Employee_Test_Audit
(
	EmpId int primary key identity(1,1),
	Emp_FirstName nvarchar(50),
	Emp_LastName nvarchar(50),
	Emp_City nvarchar(30),
	DOJ date,
	Salary float,
	Stat nvarchar(30)
)

-- insert in table employees
INSERT INTO Employees (Emp_FirstName, Emp_LastName, Emp_City, DOJ, Salary) 
Values
('Aditya', 'Shahari', 'Pune', '2023-2-19', 100)

-- delete from table employees
Delete from Employees where EmpId = 7;

select * from Employees


Select * From Employee_Test_Audit