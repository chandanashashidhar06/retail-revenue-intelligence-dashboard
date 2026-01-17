-- 1. Discounted Revenue by City
SELECT City,
       SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END) AS Discounted_Revenue
FROM transactions
GROUP BY City
ORDER BY Discounted_Revenue DESC;

-- 2. Discount Dependency % by City
SELECT City,
       (SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END) * 100.0
        / SUM("Total_Cost")) AS Discount_Dependency_Percentage
FROM transactions
GROUP BY City
ORDER BY Discount_Dependency_Percentage DESC;

-- 3. Revenue by Store Type
SELECT "Store_Type", SUM("Total_Cost") AS Total_Revenue
FROM transactions
GROUP BY "Store_Type"
ORDER BY Total_Revenue DESC;

-- 4. Discount Dependency % by Store Type
SELECT "Store_Type",
       (SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END) * 100.0
        / SUM("Total_Cost")) AS Discount_Dependency_Percentage
FROM transactions
GROUP BY "Store_Type"
ORDER BY Discount_Dependency_Percentage DESC;

-- 5. Top 5 Cities Driving Discounted Revenue
SELECT City,
       SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END) AS Discounted_Revenue
FROM transactions
GROUP BY City
ORDER BY Discounted_Revenue DESC
LIMIT 5;

