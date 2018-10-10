USE [Cargo_Production]
GO
/****** Object:  UserDefinedFunction [dbo].[UDF_CheckScheduleOfDeal]    Script Date: 10/09/2018 18:36:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[UDF_GETDEALSTATUS] 
(
@TcId INT
)
RETURNS VARCHAR(50)
AS
BEGIN	
	DECLARE 
	@StatusId INT,
	@DealStatus VARCHAR(50)

	SELECT @StatusId = (SELECT STATUS_ID FROM tblDispatch
	WHERE TC_ID = @TcId)
	
	SELECT @DealStatus = (Select STATUS_NAME from tblStatus WHERE STATUS_ID = @StatusId)

	RETURN @DealStatus	
END
--select [dbo].[UDF_MyFunction](86159) AS Status