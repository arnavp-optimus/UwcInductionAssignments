USE [Cargo_Production]
GO
/****** Object:  Trigger [dbo].[tr_tblClaim_ForDelete]    Script Date: 10/11/2018 17:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[tr_tblClaim_ForDelete] ON [dbo].[tblClaim]
FOR DELETE
AS
BEGIN

declare 	
@TcId [int] 

Select @TcId= TcId from deleted

UPDATE tbltest1 set IsDeleted ='Y' WHERE TcId = @TcId;

END
