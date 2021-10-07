CREATE TABLE [exp].[empleado]

(
	IdEmpleado INT NOT NULL IDENTITY(1,1)  CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED (IdEmpleado)
    , Nombre varchar(50) not null 
    , PrimerApellido VARCHAR(50) NOT NULL
    , SegundoApellido VARCHAR(50) NOT NULL
    , [Edad] int not null
    , FechaNacimiento datetime not null
)
with (data_compression = page)
go