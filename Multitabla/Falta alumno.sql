USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Falta_alumno]    Script Date: 30/11/2021 01:04:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Falta_alumno] 
	-- Add the parameters for the stored procedure here
	(
	@id_alumno int,
	@dia_falta date
	)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Asist_Alumno] 
	([id_alumno],
	[dia_falta])
	VALUES (@id_alumno, @dia_falta)

	
	SELECT a1.id_alumno, nom_alumno, dia_falta FROM Asist_Alumno as a1 inner join Alumno as a2 on a1.id_alumno = a2.id_alumno WHERE (a1.id_alumno = @id_alumno) and (dia_falta = @dia_falta)

END