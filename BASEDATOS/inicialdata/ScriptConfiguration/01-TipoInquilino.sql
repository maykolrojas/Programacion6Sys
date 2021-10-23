
DROP TABLE IF EXISTS #FisicoTemp

SELECT 
Id_TipoInquilino, Descripcion INTO #FisicoTemp
FROM (
VALUES
(1, 'FISICO'),
(2, 'JURIDICO')

)AS TEMP (Id_TipoInquilino, Descripcion)


----- ACTUALIZAR DATOS

 UPDATE P SET
 P.Descripcion= TM.Descripcion
 FROM Dbo.TipoInquilino P
 INNER JOIN #TipoInquilinoTemp TM 
 ON P.Id_TipoInquilino= TM.Id_TipoInquilino

 ---- INSERT DATOS---

 SET IDENTITY_INSERT dbo.TipoInquilino ON

 INSERT INTO dbo.TipoInquilino(
 Id_TipoInquilino, Descripcion)
SELECT
Id_TipoInquilino, Descripcion
FROM #TipoInquilinoTemp

EXCEPT
SELECT
Id_TipoInquilino, Descripcion
FROM dbo.TipoInquilino

SET IDENTITY_INSERT dbo.TipoInquilino off

GO