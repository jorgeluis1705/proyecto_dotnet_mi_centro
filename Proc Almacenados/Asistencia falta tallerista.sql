USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Asistencia_faltas_talleristas]    Script Date: 30/11/2021 01:18:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Asistencia_faltas_talleristas] 
	-- Add the parameters for the stored procedure here
	(
	@id_tallerista int
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t1.id_tallerista, nom_tallerista, dia_asis, dia_falt FROM Asist_Tallerista as t1 inner join Tallerista as t2 on t1.id_tallerista = t2.id_tallerista WHERE t1.id_tallerista = @id_tallerista

END
