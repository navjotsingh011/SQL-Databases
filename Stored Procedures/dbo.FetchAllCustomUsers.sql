SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROCEDURE [dbo].[FetchAllCustomUsers]
AS 
BEGIN
SELECT Username, FirstName, LastName, CreatedOn, ModifiedOn FROM [User] WHERE IsActive = 1 AND IsDeleted = 0
END
GO
