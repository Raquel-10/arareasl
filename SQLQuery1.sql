/*RUTINA DE BACKUPS MULTIPLES ADVENTURE WORKS*/
USE master
GO

/*CREACION DEL DISPOSITIVO*/

EXEC sp_addumpdevice 'disk' , 'DispositivoLogicoAdventureWork' , 'D:\Respaldo\DispositivoLogicoAdventureWork.bak'
GO

EXEC sp_helpdevice 'DispositivoLogicoAdventureWork'
GO

EXEC sp_dropdevice  'DispositivoLogicoAdventureWork'
GO

/*CREAR UN BACKUP FULL*/

USE AdventureWorks2019
GO

DECLARE @NAME NVARCHAR (50) = 'AwExamenBDII/'+ CONVERT(NVARCHAR(50) , GETDATE(), 103)
SELECT @NAME

ALTER DATABASE AdventureWorks2019
SET RECOVERY FULL 

BACKUP DATABASE AdventureWorks2019
