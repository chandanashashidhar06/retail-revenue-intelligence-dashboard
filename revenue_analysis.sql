-- 1. Total Revenue
SELECT SUM("Total_Cost") AS Total_Revenue
FROM transactions;

-- 2. Discount vs Non-Discount Revenue
SELECT "Discount_Applied", SUM("Total_Cost") AS Revenue
FROM transactions
GROUP BY "Discount_Applied";

-- 3. Discount Dependency %
SELECT 
    (SUM(CASE WHEN "Discount_Applied" = 'true' THEN "Total_Cost" ELSE 0 END)
     / SUM("Total_Cost")) * 100 AS Discount_Dependency_Percentage
FROM transactions;

-- 4. Average Order Value (AOV)
SELECT 
    SUM("Total_Cost") / COUNT("Transaction_ID") AS AOV
FROM transactions;

