CREATE DATABASE primeor_analysis_queries;
USE primeor_analysis_queries;
DESCRIBE cleaned_dataset;

SELECT * FROM cleaned_dataset
LIMIT 10;

ALTER TABLE cleaned_dataset
ADD COLUMN order_date_new DATE;

ALTER TABLE cleaned_dataset
ADD COLUMN ship_date_new DATE;

SET SQL_SAFE_UPDATES = 0;

UPDATE cleaned_dataset
SET order_date_new = STR_TO_DATE(order_date, '%d-%m-%Y');

UPDATE cleaned_dataset
SET ship_date_new = STR_TO_DATE(ship_date, '%d-%m-%Y');

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE cleaned_dataset
MODIFY sales DECIMAL(12,2),
MODIFY profit DECIMAL(12,2),
MODIFY shipping_cost DECIMAL(12,2),
MODIFY discount DECIMAL(5,2);

SELECT category, product_name, SUM(profit) AS total_profit
FROM cleaned_dataset
GROUP BY category, product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT customer_name, SUM(sales) AS total_sales,
RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
FROM cleaned_dataset
GROUP BY customer_name
LIMIT 10;

SELECT region, SUM(sales) AS total_sales
FROM cleaned_dataset
GROUP BY region
ORDER BY total_sales DESC;

SELECT category, AVG(profit) AS average_profit
FROM cleaned_dataset
GROUP BY category;

SELECT category, discount
FROM cleaned_dataset
GROUP BY category, discount
ORDER BY discount DESC
LIMIT 1;

SELECT category, ROUND(AVG(discount), 2) AS Avg_discount
FROM cleaned_dataset
GROUP BY category
ORDER BY Avg_discount DESC
LIMIT 1;

SELECT order_id, product_name, profit
FROM cleaned_dataset
WHERE profit<0
GROUP BY order_id, product_name, profit
ORDER BY profit DESC;

SELECT order_id, product_name, profit
FROM cleaned_dataset
WHERE profit<0
GROUP BY order_id, product_name, profit
ORDER BY profit DESC;

SELECT MONTH(order_date_new) AS Month_number,
MONTHNAME(order_date_new) AS Month_name,
SUM(sales) as Total_Sales
FROM cleaned_dataset
GROUP BY Month_number, MONTH_name
ORDER BY Month_number ASC;

SELECT YEAR(order_date_new) AS Year, MONTH(order_date_new) AS Month_number,
MONTHNAME(order_date_new) AS Month_name,
SUM(sales) as Total_Sales
FROM cleaned_dataset
GROUP BY YEAR(order_date_new), Month_number, Month_name
ORDER BY Year, Month_number ASC;

SELECT market, SUM(sales) AS Total_Revenue
FROM cleaned_dataset
GROUP BY market
ORDER BY Total_Revenue DESC;

SELECT sub_category, SUM(sales) AS Total_Sales
FROM cleaned_dataset
GROUP BY sub_category
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT ship_mode, 
COUNT(*) AS usage_count,
ROUND(((COUNT(*)*100)/(SELECT COUNT(*) FROM cleaned_dataset)), 1) AS pct_usage
FROM cleaned_dataset
GROUP BY ship_mode
ORDER BY pct_usage DESC;

-- =====================================================
-- TASK 3: KEY INSIGHTS
-- =====================================================

-- 1. Market with highest revenue
-- Insight: APAC

-- 2. Least profitable categories
-- Insight: Office Supplies

-- 3. Most commonly used shipping mode
-- Insight: Standard Class