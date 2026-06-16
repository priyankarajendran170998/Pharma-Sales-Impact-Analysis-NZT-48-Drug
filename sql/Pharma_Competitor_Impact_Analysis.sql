SELECT post_competitor FROM cleaned_data;

SELECT 
    post_competitor,
    SUM(CAST(sales AS BIGINT)) AS total_sales
FROM cleaned_data
GROUP BY post_competitor;

SELECT 
    post_competitor,
    AVG(CAST(sales AS FLOAT)) AS avg_sales
FROM cleaned_data
GROUP BY post_competitor;

SELECT 
    month,
    SUM(CAST(sales AS BIGINT)) AS monthly_sales
FROM cleaned_data
GROUP BY month
ORDER BY month;

-- Formula :  Revenue Loss per month = avg_before - avg_after
-- Total Loss = (avg_before - avg_after) × number_of_post_months

 SELECT COUNT(DISTINCT month) AS post_months
FROM cleaned_data
WHERE post_competitor = 1;

