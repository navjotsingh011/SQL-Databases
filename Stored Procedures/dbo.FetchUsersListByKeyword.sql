SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROCEDURE  [dbo].[FetchUsersListByKeyword]
(
@Keyword NVARCHAR(200)
)
AS 
BEGIN
	SELECT Username, FirstName, LastName, CreatedOn, ModifiedOn FROM [User] WHERE Username LIKE '%' + @Keyword + '%'
END
GO
