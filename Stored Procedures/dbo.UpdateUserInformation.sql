SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROCEDURE  [dbo].[UpdateUserInformation]
(
@UserId BIGINT
,@FirstName NVARCHAR(200)
,@LastName NVARCHAR(200)
,@Status NVARCHAR(200)
)
AS 
BEGIN
	DECLARE @Result INT = 0
	IF EXISTS (SELECT 1 FROM [User] WHERE UserId = @UserId AND IsDeleted = 0)
		BEGIN
			IF EXISTS (SELECT 1 FROM [User] WHERE UserId = @UserId AND IsActive = 1)
				BEGIN	
					UPDATE [User]
					SET FirstName = @FirstName,
					LastName = @LastName,
					Status = @Status
					WHERE UserId = @UserId
					SET @Result = 1
				END
			ELSE
				BEGIN
					SET @Result = 2
				END
		END
	ELSE
		BEGIN
			SET @Result = 3
		END
END

GO
