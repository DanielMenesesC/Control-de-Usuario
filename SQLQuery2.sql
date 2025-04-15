CREATE SCHEMA Catalogo
GO

CREATE TABLE	Catalogo.Salario (
				IdSalario		INT			NOT NULL,
				Monto			DECIMAL		(20,2)NULL,
				Estado			BIT			NOT NULL,
				FechaIngreso	DATETIME	NULL,
				UsuarioIngreso	DECIMAL		(20,0)NULL,
				FechaModifico	DATETIME	NULL,
				UsuarioModifico DECIMAL		(20,0)NULL,
				CONSTRAINT PK_Salario PRIMARY KEY CLUSTERED
				(
					IdSalario ASC
				)
)
GO


--FK A LA Tabla Salario

ALTER TABLE Catalogo.Empleado  WITH CHECK ADD  CONSTRAINT FK_01_Empleado_Salario FOREIGN KEY(IdSalario)
REFERENCES	Catalogo.Salario (IdSalario)
GO
ALTER TABLE	Catalogo.Empleado CHECK CONSTRAINT FK_01_Empleado_Salario
GO

----Documentacion de la tabla Emnpleado

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo de referencia PK a Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'IdSalario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Monto de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'Monto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Estado de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cedula del usuario que ingreso el dato de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se ingreso el dato de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cedula del usuario que Modifico el dato de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se Modifico el dato de la Tabla Salario' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Salario', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
 