USE PharmaDB;

SELECT COUNT(*) AS total_records
FROM cleaned_data;

SELECT TOP 5 *
FROM cleaned_data;

SELECT SUM(CAST(sales AS FLOAT)) AS total_sales
FROM cleaned_data;

SELECT SUM(CAST(qty AS BIGINT)) AS total_quantity
FROM cleaned_data;

SELECT AVG(CAST(sales AS FLOAT)) AS avg_sales
FROM cleaned_data;

SELECT
    FORMAT(month, 'yyyy-MM') AS month,
    SUM(sales) AS total_sales
FROM cleaned_data
GROUP BY FORMAT(month, 'yyyy-MM')
ORDER BY month;

SELECT
    district,
    SUM(sales) AS total_sales
FROM cleaned_data
GROUP BY district
ORDER BY total_sales DESC;

SELECT
    acctype,
    SUM(sales) AS total_sales
FROM cleaned_data
GROUP BY acctype
ORDER BY total_sales DESC;

SELECT
    AVG(strategy1) AS avg_strategy1,
    AVG(strategy2) AS avg_strategy2,
    AVG(strategy3) AS avg_strategy3
FROM cleaned_data;

SELECT
    strategy1,
    AVG(sales) AS avg_sales
FROM cleaned_data
GROUP BY strategy1
ORDER BY strategy1;

SELECT
    AVG(salesvisit1) AS visit1,
    AVG(salesvisit2) AS visit2,
    AVG(salesvisit3) AS visit3,
    AVG(salesvisit4) AS visit4,
    AVG(salesvisit5) AS visit5
FROM cleaned_data;

-- Add post_competitor column only if it does not already exist
IF COL_LENGTH('cleaned_data', 'post_competitor') IS NULL
BEGIN
    ALTER TABLE cleaned_data
    ADD post_competitor BIT;
END;

-- Update competitor flag
UPDATE cleaned_data
SET post_competitor =
    CASE
        WHEN month >= '2015-06-01' THEN 1
        ELSE 0
    END;

SELECT
    post_competitor,
    COUNT(*) AS record_count
FROM cleaned_data
GROUP BY post_competitor;

SELECT
    MIN(month) AS first_month,
    MAX(month) AS last_month
FROM cleaned_data;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_data';

SELECT
    post_competitor,
    AVG(sales) AS avg_sales
FROM cleaned_data
GROUP BY post_competitor;

SELECT TOP 10
    accid,
    SUM(sales) AS total_sales
FROM cleaned_data
GROUP BY accid
ORDER BY total_sales DESC;

SELECT
    district,
    acctype,
    SUM(sales) AS total_sales,
    SUM(qty) AS total_qty
FROM cleaned_data
GROUP BY district, acctype
ORDER BY total_sales DESC;

SELECT COUNT(*) AS null_count
FROM cleaned_data
WHERE post_competitor IS NULL;

SELECT TOP 10
    month,
    post_competitor
FROM cleaned_data
ORDER BY month;

SELECT TOP 10
    month,
    post_competitor
FROM cleaned_data
ORDER BY month DESC;

SELECT
    month,
    post_competitor
FROM cleaned_data
WHERE month BETWEEN '2015-05-01' AND '2015-07-01'
ORDER BY month;

