USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[falta_taller]    Script Date: 30/11/2021 01:16:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[falta_taller] 
	-- Add the parameters for the stored procedure here
	(
	@id_tallerista int,
	@dia_falt date
	)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Asist_Tallerista] 
	([id_tallerista],
	[dia_falt])
	VALUES (@id_tallerista, @dia_falt)

	SELECT t1.id_tallerista, nom_tallerista, dia_falt FROM Asist_Tallerista as t1 inner join Tallerista as t2 on t1.id_tallerista = t2.id_tallerista WHERE t1.id_tallerista = @id_tallerista and dia_falt = @dia_falt

END