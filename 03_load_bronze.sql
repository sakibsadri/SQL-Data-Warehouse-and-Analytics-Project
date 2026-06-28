/*
===============================================================================
BRONZE LOAD PROCEDURE
Full Refresh Load
===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN

    DECLARE @start_time DATETIME,
            @end_time DATETIME,
            @batch_start_time DATETIME,
            @batch_end_time DATETIME;

BEGIN TRY

    SET @batch_start_time = GETDATE();

    PRINT 'STARTING BRONZE LOAD';

    TRUNCATE TABLE bronze.crm_cust_info;

    BULK INSERT bronze.crm_cust_info
    FROM 'datasets/source_crm/cust_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    TRUNCATE TABLE bronze.crm_prd_info;

    BULK INSERT bronze.crm_prd_info
    FROM 'datasets/source_crm/prd_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    TRUNCATE TABLE bronze.crm_sales_details;

    BULK INSERT bronze.crm_sales_details
    FROM 'datasets/source_crm/sales_details.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    TRUNCATE TABLE bronze.erp_loc_a101;

    BULK INSERT bronze.erp_loc_a101
    FROM 'datasets/source_erp/loc_a101.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    TRUNCATE TABLE bronze.erp_cust_az12;

    BULK INSERT bronze.erp_cust_az12
    FROM 'datasets/source_erp/cust_az12.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    BULK INSERT bronze.erp_px_cat_g1v2
    FROM 'datasets/source_erp/px_cat_g1v2.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @batch_end_time = GETDATE();

    PRINT 'BRONZE LOAD COMPLETED';

END TRY

BEGIN CATCH

    PRINT ERROR_MESSAGE();

END CATCH

END;
GO

EXEC bronze.load_bronze;
