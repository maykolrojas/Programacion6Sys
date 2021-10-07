CREATE TABLE [dbo].[Provincia]
(
	[IdProvincia] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_PROVINCIA  PRIMARY KEY CLUSTERED(IdProvincia)
	, NombreProvincia varchar (50) not null
)
