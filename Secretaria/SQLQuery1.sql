USE [BD_SSyPC]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[sp_IniciaSesion]
		@contraseñaV = N'12345',
		@nombreV = N'ruben',
		@usuarioV = N'operador'

SELECT	'Return Value' = @return_value

GO
