
use master;
GO

  --------Drop and recreate the 'DataWarehouse' database
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'Datawarehouse')
  BEGIN 
        ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWarehouse;
    END;
    





----create database 'datawarehouse'

use master;
create database datawarehouse;
use datawarehouse;

CREATE SCHEMA bronze;
go
CREATE SCHEMA silver;
go
CREATE SCHEMA  gold;
go
