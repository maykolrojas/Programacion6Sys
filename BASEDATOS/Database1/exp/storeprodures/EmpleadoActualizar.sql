CREATE PROCEDURE [exp].[EmpleadoActualizar]
    @IdEmpleado int,
	@Nombre varchar(50),
	@PrimerApellido varchar(50),
	@SegundoApellido varchar(50),
	@Edad int,
	@FechaNacimiento datetime

AS BEGIN
SET NOCOUNT ON
      
	  BEGIN TRANSACTION TRASA
	  BEGIN TRY

	  UPDATE exp.empleado SET
	   Nombre = @Nombre,
	     PrimerApellido = @PrimerApellido,
		 SegundoApellido= @SegundoApellido,
		 Edad= @Edad,
		 FechaNacimiento = @FechaNacimiento

	     WHERE 
		    IdEmpleado=@IdEmpleado
		 
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