SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE   PROCEDURE  [dbo].[FetchInActiveUsersList]
AS 
BEGIN
	SELECT Username, FirstName, LastName, CreatedOn, ModifiedOn FROM [User] WHERE IsActive = 0 AND IsDeleted = 0
END
GO
