USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Ingresa_alumno]    Script Date: 02/12/2021 12:27:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Ingresa_alumno] 
	-- Add the parameters for the stored procedure here
	(
	@nom_alumno nvarchar(50),
	@id_taller int,
	@taller nvarchar(50)
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into [dbo].[Alumno]
	([nom_alumno],
	[id_taller],
	[taller]
	)
	Values (@nom_alumno, @id_taller, @taller)

	SELECT *FROM Alumno WHERE nom_alumno = @nom_alumno
END
