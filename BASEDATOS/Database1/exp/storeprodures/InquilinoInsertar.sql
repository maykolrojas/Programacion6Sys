CREATE PROCEDURE [exp].[InquilinoInsertar]
     @Descripcion VARCHAR(250),
	 @Estado BIT

	

AS BEGIN
SET NOCOUNT ON
      
	  BEGIN TRANSACTION TRASA
	  BEGIN TRY

	  INSERT INTO exp.TipoInquilino
	  ( Descripcion,
		 Estado
		 )

		 VALUES
		 (
		 @Descripcion,
		 @Estado
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


