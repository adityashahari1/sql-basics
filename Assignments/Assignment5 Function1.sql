-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
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
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION totalEmployeesInBranch 
(
	-- Add the parameters for the function here
	@BranchName nvarchar(50)
)
RETURNS nvarchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @TotalEmployee int

	-- Add the T-SQL statements to compute the return value here
	SELECT @TotalEmployee = COUNT(EmpId) FROM Employees e 
	INNER JOIN Branches b ON e.BID = b.BID 
	WHERE b.Branch_Name =  @BranchName;

	-- Return the result of the function
	RETURN @TotalEmployee

END
GO

