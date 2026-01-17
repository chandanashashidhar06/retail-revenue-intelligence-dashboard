-- 1. Revenue Contribution % by City
SELECT City,
       SUM("Total_Cost") AS City_Revenue,
       (SUM("Total_Cost") * 100.0 / (SELECT SUM("Total_Cost") FROM transactions)) AS Contribution_Percentage
FROM transactions
GROUP BY City
ORDER BY Contribution_Percentage DESC;

-- 2. Revenue Contribution % by Store Type
SELECT "Store_Type",
       SUM("Total_Cost") AS Store_Revenue,
       (SUM("Total_Cost") * 100.0 / (SELECT SUM("Total_Cost") FROM transactions)) AS Contribution_Percentage
FROM transactions
GROUP BY "Store_Type"
ORDER BY Contribution_Percentage DESC;

