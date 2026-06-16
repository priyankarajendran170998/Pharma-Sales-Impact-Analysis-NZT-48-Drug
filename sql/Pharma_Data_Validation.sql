USE PharmaDB;
SELECT COUNT(*) FROM cleaned_data;

SELECT TOP 5 * FROM cleaned_data;

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_data';

SELECT COUNT(*) 
FROM cleaned_data
WHERE sales IS NULL;

SELECT COUNT(*) FROM pharma_sales;