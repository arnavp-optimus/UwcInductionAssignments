USE [Cargo_Production]
GO
/****** Object:  Trigger [dbo].[tr_tblClaim_ForUpdate]    Script Date: 10/11/2018 17:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[tr_tblClaim_ForUpdate] ON [dbo].[tblClaim]
FOR INSERT
AS
BEGIN

declare 	
@TcId [int] ,
@ClaimAmount [numeric](18, 2) 

SELECT @TcId= TcId,
	   @ClaimAmount= ClaimAmount from inserted

UPDATE tbltest1  
SET    StatusDesc =  CASE  
                        WHEN ClaimAmount < 1000 THEN 'Small Amount Pending' 
                        WHEN ClaimAmount BETWEEN 1000 and 5000 THEN 'Average Amount Pending'
                        ELSE 'Large Amount Pending'
                    END 
WHERE   TcId= @TcId
END