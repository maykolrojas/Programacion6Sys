CREATE PROCEDURE [exp].[InquilinoDetalle]
   @Id_TipoInquilino int= NULL
   AS BEGIN
     SET NOCOUNT ON

	 SELECT
       E.Id_TipoInquilino,
	   E.Descripcion,
	   E.Estado
	   
	   
	   FROM exp.Tipoinquilino E

	     WHERE 
		 (@Id_TipoInquilino IS NULL OR Id_TipoInquilino=Id_TipoInquilino)
		 
		 END

		 
