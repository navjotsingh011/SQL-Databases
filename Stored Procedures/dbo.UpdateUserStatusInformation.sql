SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   PROCEDURE  [dbo].[UpdateUserStatusInformation]
(
@UserId BIGINT
,@Status NVARCHAR(200)
)
AS 
BEGIN
	DECLARE @Result INT = 0
	IF EXISTS (SELECT 1 FROM [User] WHERE UserId = @UserId)
		BEGIN	
			UPDATE [User] SET
			Status = @Status
			WHERE UserId = @UserId
			SET @Result = 1
			
		END
	ELSE
		BEGIN
			SET @Result = 2
		END
END


GO
