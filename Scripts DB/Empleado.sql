CREATE SCHEMA Catalogo
GO

CREATE TABLE	Catalogo.Empleado (
				IdEmpleado		INT			NOT NULL,
				IdSalario		INT			NOT NULL,
				Nombre			VARCHAR		(50),
				Apellido		VARCHAR		(50),
				Edad			INT			NOT NULL,
				Estado			BIT			NOT NULL,
				FechaIngreso	DATETIME	NULL,
				UsuarioIngreso	DECIMAL		(20,0)NULL,
				FechaModifico	DATETIME	NULL,
				UsuarioModifico DECIMAL		(20,0)NULL,
				CONSTRAINT		PK_Empleado PRIMARY KEY CLUSTERED
				(
					IdEmpleado ASC
				)
) 
GO



----Documentacion de la tabla Emnpleado

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo de referencia PK a Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'IdEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Nombre de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Apellido de la Tabla Empleados' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'Apellido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Edad de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'Edad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo Estado de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cedula del usuario que ingreso el dato de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se ingreso el dato de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cedula del usuario que Modifico el dato de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se Modifico el dato de la Tabla Empleado' , @level0type=N'SCHEMA',@level0name=N'Catalogo', @level1type=N'TABLE',@level1name=N'Empleado', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO