USE [Cargo_Production]
GO
/****** Object:  UserDefinedFunction [dbo].[UDF_CheckScheduleOfDeal]    Script Date: 10/09/2018 18:36:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[UDF_GETDEALSTATUS] 
(
@TcId INT
)
RETURNS VARCHAR(50)
AS
BEGIN	
	DECLARE 
	@DealStatus VARCHAR(50)

	SELECT @DealStatus = STATUS_NAME from tblStatus join tblDispatch on tblStatus.STATUS_ID = tblDispatch.STATUS_ID 
	WHERE TC_ID= @TcId

	RETURN @DealStatus	

END


