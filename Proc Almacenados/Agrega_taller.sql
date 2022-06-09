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
CREATE PROCEDURE Agrega_taller
	-- Add the parameters for the stored procedure here
	(
	@id_taller int,
	@nom_taller nvarchar(50),
	@hora_taller time,
	@id_tallerista int
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [dbo].[Taller]
	(
	id_taller,
	nom_taller,
	hora_taller,
	id_tallerista
	)

	values (@id_taller, @nom_taller, @hora_taller, @id_tallerista)

	SELECT *from Taller where nom_taller = @nom_taller
END
GO
