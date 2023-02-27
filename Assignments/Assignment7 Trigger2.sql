-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER dbo.CreateLogOfEmployeeDel
   ON  dbo.Employees
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	Declare 
	@EmpFirstName nvarchar(50), 
	@EmpLastName nvarchar(50),
	@EmpCity nvarchar(30),
	@Doj date,
	@Salary float

	Select @EmpFirstName = Emp_FirstName from deleted
	Select @EmpLastName = Emp_LastName from deleted
	Select @EmpCity = Emp_City from deleted
	Select @Doj = DOJ from deleted
	Select @Salary = Salary from deleted 

	Insert Into dbo.Employee_Test_Audit(Emp_FirstName, Emp_LastName, Emp_City, DOJ, Salary, Stat) 
	Values (@EmpFirstName, @EmpLastName, @EmpCity, @Doj, @Salary, 'Deleted')

END
GO
