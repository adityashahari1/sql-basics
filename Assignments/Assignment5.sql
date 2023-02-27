use Company;


--function to display total number of employees working in a particular branch

SELECT dbo.totalEmployeesInBranch('Mumbai');

--function to display all employees who are in an organization for more 
--than 1 year in a particular branch

SELECT * FROM dbo.EmployeesMoreThan1Year('Mumbai');