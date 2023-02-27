use Company;


-- Department wise salary report 
SELECT Dept_Name [Department], SUM(Salary) [Salary]
FROM Employees e
inner join Departments d ON e.DID = d.Dept_ID
GROUP BY Dept_Name;


-- Min, Max, Avg salary in each dept
SELECT Dept_Name [Department], 
MIN(Salary) [Minimum Salary], 
MAX(Salary) [Maximum Salary], 
AVG(Salary) [Average Salary]
FROM Employees e
inner join Departments d ON e.DID = d.Dept_ID
GROUP BY Dept_Name;


-- No of employees working in each branch
SELECT Branch_Name [Branch Name], 
COUNT(e.BID) [Employee Count] 
FROM Branches b
inner join Employees e ON b.BID = e.BID
GROUP BY Branch_Name;


--Branch-wise, Department-wise salary report distributed in each Department
SELECT Branch_Name [Branch Name], 
Dept_Name [Department Name], 
SUM(Salary) [Total Salary]
FROM Employees e
inner join Branches b ON b.BID = e.BID
inner join Departments d ON d.Dept_ID = e.DID
GROUP BY Branch_Name, Dept_Name











