-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
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
CREATE FUNCTION EmployeesMoreThan1Year 
(	
	-- Add the parameters for the function here
	@BranchName nvarchar(50)
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT Emp_FirstName + ' ' + Emp_LastName [Employee Name] From Employees e
	INNER JOIN Branches b on e.BID = b.BID
	WHERE DOJ <= DATEADD(year, -1, GETDATE())
	AND Branch_Name = @BranchName
	
)
GO
