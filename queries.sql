
-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM superstore_sales;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM superstore_sales;

-- Sales by Region
SELECT Region, SUM(Sales) AS Region_Sales
FROM superstore_sales
GROUP BY Region;

-- Sales by Category
SELECT Category, SUM(Sales) AS Category_Sales
FROM superstore_sales
GROUP BY Category;

-- Monthly Sales
SELECT strftime('%m', Order_Date) AS Month, SUM(Sales) AS Monthly_Sales
FROM superstore_sales
GROUP BY Month
ORDER BY Month;
