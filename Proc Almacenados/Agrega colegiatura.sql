-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Agrega_colegiatura 
	-- Add the parameters for the stored procedure here
	(
	@id_alumno int,
	@id_taller nvarchar(50),
	@horario time,
	@pago_actual date,
	@pago_proximo date
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [dbo].[Colegiatura]
	(
	id_alumno,
	id_taller,
	horario,
	pago_actual,
	pago_proximo
	)
	values (@id_alumno, @id_taller, @horario, @pago_actual, @pago_proximo)

	SELECT *from Colegiatura where id_alumno = @id_alumno
END
GO
