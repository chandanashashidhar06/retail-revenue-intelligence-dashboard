-- 1. Monthly Total Revenue
SELECT 
    strftime('%Y-%m', Date) AS Month,
    SUM("Total_Cost") AS Total_Revenue
FROM transactions
GROUP BY Month
ORDER BY Month;

-- 2. Monthly Discounted Revenue
SELECT 
    strftime('%Y-%m', Date) AS Month,
    SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END) AS Discounted_Revenue
FROM transactions
GROUP BY Month
ORDER BY Month;

-- 3. Monthly Non-Discounted Revenue
SELECT 
    strftime('%Y-%m', Date) AS Month,
    SUM(CASE WHEN "Discount_Applied" = 'false' THEN "Total_Cost" ELSE 0 END) AS Non_Discounted_Revenue
FROM transactions
GROUP BY Month
ORDER BY Month;
