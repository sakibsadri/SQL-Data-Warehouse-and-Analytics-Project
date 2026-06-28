# /*

PROJECT       : SQL Data Warehouse Project
AUTHOR        : Sakib Sadri
LAYER         : Bronze
PROCEDURE     : bronze.load_bronze
LOAD TYPE     : Full Refresh

DESCRIPTION:
This procedure loads raw CRM and ERP source files into the Bronze Layer.

PROCESS FLOW:

1. Truncate existing Bronze tables
2. Load CRM source files
3. Load ERP source files
4. Track execution duration
5. Log progress messages
6. Handle and report errors

SOURCE SYSTEMS:

* CRM System
* ERP System

TARGET SCHEMA:

* bronze

EXECUTION:
EXEC bronze.load_bronze;

===============================================================================
*/

CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN

```
SET NOCOUNT ON;

DECLARE
    @start_time        DATETIME,
    @end_time          DATETIME,
    @batch_start_time  DATETIME,
    @batch_end_time    DATETIME;

BEGIN TRY

    -----------------------------------------------------------------------
    -- START BATCH
    -----------------------------------------------------------------------

    SET @batch_start_time = GETDATE();

    PRINT '====================================================';
    PRINT 'STARTING BRONZE LAYER LOAD';
    PRINT 'LOAD TYPE : FULL REFRESH';
    PRINT 'START TIME: ' + CAST(@batch_start_time AS NVARCHAR(30));
    PRINT '====================================================';

    -----------------------------------------------------------------------
    -- CRM TABLES
    -----------------------------------------------------------------------

    PRINT '';
    PRINT '====================================================';
    PRINT 'LOADING CRM TABLES';
    PRINT '====================================================';

    -----------------------------------------------------------------------
    -- STEP 1.1 : CRM CUSTOMER DATA
    -- Source : cust_info.csv
    -- Target : bronze.crm_cust_info
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.crm_cust_info';

    TRUNCATE TABLE bronze.crm_cust_info;

    BULK INSERT bronze.crm_cust_info
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.crm_cust_info';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- STEP 1.2 : CRM PRODUCT DATA
    -- Source : prd_info.csv
    -- Target : bronze.crm_prd_info
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.crm_prd_info';

    TRUNCATE TABLE bronze.crm_prd_info;

    BULK INSERT bronze.crm_prd_info
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.crm_prd_info';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- STEP 1.3 : CRM SALES DATA
    -- Source : sales_details.csv
    -- Target : bronze.crm_sales_details
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.crm_sales_details';

    TRUNCATE TABLE bronze.crm_sales_details;

    BULK INSERT bronze.crm_sales_details
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.crm_sales_details';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- ERP TABLES
    -----------------------------------------------------------------------

    PRINT '';
    PRINT '====================================================';
    PRINT 'LOADING ERP TABLES';
    PRINT '====================================================';

    -----------------------------------------------------------------------
    -- STEP 2.1 : ERP LOCATION DATA
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.erp_loc_a101';

    TRUNCATE TABLE bronze.erp_loc_a101;

    BULK INSERT bronze.erp_loc_a101
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.erp_loc_a101';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- STEP 2.2 : ERP CUSTOMER DATA
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.erp_cust_az12';

    TRUNCATE TABLE bronze.erp_cust_az12;

    BULK INSERT bronze.erp_cust_az12
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.erp_cust_az12';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- STEP 2.3 : ERP PRODUCT CATEGORY DATA
    -----------------------------------------------------------------------

    SET @start_time = GETDATE();

    PRINT 'Loading : bronze.erp_px_cat_g1v2';

    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    BULK INSERT bronze.erp_px_cat_g1v2
    FROM 'C:\Users\Win-10\Music\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    SET @end_time = GETDATE();

    PRINT 'Completed : bronze.erp_px_cat_g1v2';
    PRINT 'Duration  : '
        + CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)
        + ' Seconds';

    -----------------------------------------------------------------------
    -- BATCH COMPLETED
    -----------------------------------------------------------------------

    SET @batch_end_time = GETDATE();

    PRINT '';
    PRINT '====================================================';
    PRINT 'BRONZE LAYER LOAD COMPLETED SUCCESSFULLY';
    PRINT 'TOTAL DURATION : '
        + CAST(DATEDIFF(SECOND,@batch_start_time,@batch_end_time) AS NVARCHAR)
        + ' Seconds';
    PRINT 'END TIME : ' + CAST(@batch_end_time AS NVARCHAR(30));
    PRINT '====================================================';

END TRY

BEGIN CATCH

    PRINT '';
    PRINT '====================================================';
    PRINT 'BRONZE LAYER LOAD FAILED';
    PRINT 'ERROR MESSAGE : ' + ERROR_MESSAGE();
    PRINT 'ERROR NUMBER  : ' + CAST(ERROR_NUMBER() AS NVARCHAR);
    PRINT 'ERROR STATE   : ' + CAST(ERROR_STATE() AS NVARCHAR);
    PRINT 'ERROR LINE    : ' + CAST(ERROR_LINE() AS NVARCHAR);
    PRINT '====================================================';

    THROW;

END CATCH
```

END;
GO

EXEC bronze.load_bronze;
GO
