use Company;

-- procedure named ANewEmplyee to Insert a new Employee and return 
--EmpID which is an auto generated

Declare @EmployeeId int
exec [dbo].[ANewEmployee] 'Rohit', 'Tak', 'Pune', '2023-2-19', 300, @EmployeeId OUTPUT
SELECT EmpId [Employee ID] From Employees Where EmpId = @EmployeeId;

-- Create a procedure named sp_RaiseSalary to increment salary by X% of employees whose 
-- current salary is <Y. X and Y will be input parameters with relevant names like inc,currentSalary

exec [dbo].[sp_RaiseSalary] 10, 200
SELECT * from Employees;