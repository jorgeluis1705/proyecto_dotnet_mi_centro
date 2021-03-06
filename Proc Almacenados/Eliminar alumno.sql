USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_alumno]    Script Date: 02/12/2021 12:54:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Eliminar_alumno]
	(@id_alumno int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from Colegiatura where id_alumno = @id_alumno
	Delete from Asist_Alumno where id_alumno = @id_alumno
	Delete from Eliminar where id_alumno = @id_alumno
	Delete from Alumno where id_alumno = @id_alumno

	select id_alumno, nom_alumno, id_taller, taller from Alumno

END
