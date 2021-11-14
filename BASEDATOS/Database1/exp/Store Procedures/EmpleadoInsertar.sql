CREATE PROCEDURE [exp].[EmpleadoInsertar]
     @IdTipoIdentificacion int,	
	@Identificacion varchar(50),
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
	  ( IdTipoIdentificacion,
	      Identificacion,
	          Nombre,
	     PrimerApellido,
		 SegundoApellido,
		 Edad,
		 FechaNacimiento
		 )

		 VALUES
		 (
		 @IdTipoIdentificacion,
	     @Identificacion,
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


