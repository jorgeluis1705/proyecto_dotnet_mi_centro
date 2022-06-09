USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Pago_prxomo]    Script Date: 27/11/2021 10:39:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Pago_prxomo]
-- Add the parameters for the stored procedure here
	(
	@id_alumno int,
	@pago_proximo date
	)
	AS

	UPDATE [dbo].[Colegiatura]
	SET pago_proximo = @pago_proximo WHERE id_alumno = @id_alumno

	SELECT *FROM Colegiatura WHERE id_alumno = @id_alumno
GO

