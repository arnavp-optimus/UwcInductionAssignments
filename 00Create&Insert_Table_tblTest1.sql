create TABLE [dbo].[tblTest1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TcId] [int] NOT NULL,
	[CarrierId] [int] NOT NULL,
	[Commodity] [nvarchar](max) NULL,
	[ClaimNatureId] [int] NOT NULL,
	[ClaimAmount] [numeric](18, 2) NOT NULL,
	[Salvage] [numeric](18, 2) NULL,
	[Insurance] [numeric](18, 2) NULL,
	[Reimbursement] [numeric](18, 2) NULL,
	[Other] [numeric](18, 2) NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedOn] [datetime] NULL,
	[CompletedOn] [datetime] NULL,
	[CompletedBy] [int] NULL,
	[InsuranceCompanyID] [int] NULL,
	[FreightDeduction] [decimal](18, 0) NULL,
	[SalvageCurrency] [varchar](10) NULL,
	[SalvageCompanyId] [int] NULL,
	[InsuranceCurrency] [varchar](10) NULL,
	[OtherAmountCurrency] [varchar](10) NULL,
	[InsuranceRefID] [varchar](100) NULL,
	[SalvageRefID] [varchar](100) NULL,
	IsDeleted  [varchar](100) NULL,
	StatusDesc  [varchar](100) NULL
) 


Insert into tblTest1 Select TcId ,CarrierId ,Commodity,ClaimNatureId ,ClaimAmount, Salvage, Insurance, Reimbursement
 ,Other ,CreatedBy ,CreatedOn ,LastModifiedBy ,LastModifiedOn ,CompletedOn,CompletedBy ,InsuranceCompanyID
  ,FreightDeduction ,SalvageCurrency, SalvageCompanyId ,InsuranceCurrency, OtherAmountCurrency, InsuranceRefID, SalvageRefID,'N', Null from tblClaim
