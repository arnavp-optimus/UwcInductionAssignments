USE [Cargo_Production]
GO
/****** Object:  Trigger [dbo].[tr_tblClaim_ForInsert]    Script Date: 10/11/2018 17:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[tr_tblClaim_ForInsert] ON [dbo].[tblClaim]
FOR INSERT
AS
BEGIN

INSERT into tbltest1 Select [TcId] ,[CarrierId] ,[Commodity] ,[ClaimNatureId] ,[ClaimAmount], [Salvage], [Insurance], [Reimbursement]
 ,[Other] ,[CreatedBy] ,[CreatedOn] ,[LastModifiedBy] ,[LastModifiedOn] ,[CompletedOn] ,[CompletedBy] ,[InsuranceCompanyID]
  ,[FreightDeduction] ,[SalvageCurrency], [SalvageCompanyId] ,[InsuranceCurrency], [OtherAmountCurrency], [InsuranceRefID], [SalvageRefID],'N', Null from inserted

END
