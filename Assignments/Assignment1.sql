use Company;

CREATE TABLE Departments(
	Dept_ID smallint primary key identity(1, 1),
	Dept_Name nchar(10) not null,
);

INSERT INTO Departments(Dept_Name) VALUES
('HR'),
('Software'),
('Admin'),
('Payroll'),
('Security'),
('Info');

UPDATE Departments set Dept_Name = 'HRD' WHERE Dept_ID = 1;
UPDATE Departments set Dept_Name = 'Finance' WHERE Dept_ID = 4;

CREATE TABLE Branches(
	BID smallint primary key identity(1, 1),
	Branch_Name nchar(20)
);

INSERT INTO Branches(Branch_Name) VALUES
('Mumbai'),
('Delhi'),
('Chennai'),
('Kolkata');


SELECT * FROM Departments;
SELECT * FROM Branches;