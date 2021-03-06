USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Modifica_alumno]    Script Date: 02/12/2021 01:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Modifica_alumno] 
	-- Add the parameters for the stored procedure here
	(
	@id_alumno int,
	@nom_alumno nvarchar(50),
	@id_taller int,
	@taller nvarchar(50),
	@horario time
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Alumno]
	SET nom_alumno = @nom_alumno, id_taller = @id_taller, taller = @taller WHERE id_alumno = @id_alumno

	UPDATE [dbo].[Colegiatura]
	SET horario = @horario WHERE id_alumno = @id_alumno

	SELECT 	a1.id_alumno, nom_alumno, a1.id_taller, taller, horario FROM Alumno as a1 inner join Colegiatura as c1 on a1.id_alumno = c1.id_alumno Where a1.id_alumno = @id_alumno
END
