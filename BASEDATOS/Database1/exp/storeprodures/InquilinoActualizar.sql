CREATE PROCEDURE [exp].[InquilinoActualizar]
    @Id_TipoInquilino int,
	@Descripcion VARCHAR(250),
	@Estado BIT
	

AS BEGIN
SET NOCOUNT ON
      
	  BEGIN TRANSACTION TRASA
	  BEGIN TRY

	  UPDATE exp.TipoInquilino SET

	  TipoInquilino = @TipoInquilino,
	  Descripcion =@Descripcion,
	  Estado = @Estado

	   

	     WHERE 
		     Id_TipoInquilino= @Id_TipoInquilino
		    
		 
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