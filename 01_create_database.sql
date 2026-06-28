/*
===============================================================================
PROJECT      : SQL Data Warehouse Project
DESCRIPTION  : Create Database and Schemas
AUTHOR       : Sakib Sadri
===============================================================================
*/

USE master;
GO

IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Data_Warehouse'
)
BEGIN
    ALTER DATABASE Data_Warehouse
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE Data_Warehouse;
END;
GO

CREATE DATABASE Data_Warehouse;
GO

USE Data_Warehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
