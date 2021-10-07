CREATE PROCEDURE [exp].[EmpleadoInsertar]
	@Nombre varchar(50),
	@PrimerApellido varchar(50),
	@SegundoApellido varchar(50),
	@Edad int,
	@FechaNacimiento datetime

AS BEGIN
SET NOCOUNT ON
      
	  BEGIN TRANSACTION TRASA
	  BEGIN TRY

	  INSERT INTO exp.empleado
	  ( Nombre,
	     PrimerApellido,
		 SegundoApellido,
		 Edad,
		 FechaNacimiento
		 )

		 VALUES
		 (
		 @Nombre,
		 @PrimerApellido,
		 @SegundoApellido,
		 @Edad,
		 @FechaNacimiento
		 )

		 COMMIT TRANSACTION TRASA
		 SELECT 0 AS codeError, '' AS MsgError 

		 END TRY

		 BEGIN CATCH

		 SELECT 
		 ERROR_NUMBER() AS CodeError,
		 ERROR_MESSAGE() AS MsgError

		 ROLLBACK TRANSACTION TRASA

		 END CATCH

		 END


