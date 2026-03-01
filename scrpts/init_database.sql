*/
  CREATE DATABASE AND SCHEMAS
  SCRIPT PURPOSE:
  This script creates a new database  named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze','silver', and 'gold'.
  WARNING:
  Running this script will drop the entire 'DataWarehousr' database if it exists.
  All data in the database will be permanently deleted.proceed with caution and ensure you have proper backups before running this script.
  */
  

use master;
GO

  --------Drop and recreate the 'DataWarehouse' database
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'Datawarehouse')
  BEGIN 
        ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWarehouse;
    END;
     Go
    
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
