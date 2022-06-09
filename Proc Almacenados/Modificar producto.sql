USE [MICENTRO_PFINAL]
GO
/****** Object:  StoredProcedure [dbo].[Modifica_producto]    Script Date: 02/12/2021 02:45:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Modifica_producto]
	(
	@id_producto int,
	@precio int,
	@cantidad int
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Tienda]
	SET precio = @precio, cantidad = @cantidad WHERE id_producto = @id_producto

	SELECT *FROM Tienda WHERE id_producto = @id_producto
END