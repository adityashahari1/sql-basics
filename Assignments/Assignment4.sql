use Company;


--Create View
GO
CREATE VIEW View_Department_MaxSalary AS
SELECT Dept_Name [Department], MAX(Salary) [Salary] FROM Departments d
INNER JOIN Employees AS e ON d.Dept_ID = e.BID
GROUP BY Dept_Name;

SELECT * FROM View_Department_MaxSalary;