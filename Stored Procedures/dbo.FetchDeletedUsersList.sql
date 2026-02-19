SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE   PROCEDURE  [dbo].[FetchDeletedUsersList]
AS 
BEGIN
	SELECT Username, FirstName, LastName, CreatedOn, ModifiedOn FROM [User] WHERE  IsDeleted = 1
END
GO
