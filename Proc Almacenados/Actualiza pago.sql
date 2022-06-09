CREATE PROCEDURE Actualiza_pago
-- Add the parameters for the stored procedure here
	(
	@id_alumno int,
	@pago_actual date
	)
	AS

    -- Insert statements for procedure here

	UPDATE [dbo].[Colegiatura]
	SET pago_actual = @pago_actual WHERE id_alumno = @id_alumno

	SELECT *FROM Colegiatura WHERE id_alumno = @id_alumno
GO