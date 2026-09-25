# Global E-Commerce Sales & Profitability Analysis

## What this is
An end-to-end e-commerce data analytics project completed as part of my
**Data Analyst Internship at Primeor Solutions**. The project analyzes a
global transactional dataset from 2011–2014 to understand sales, profitability,
customer value, product performance, regional/market performance, and shipping
patterns.

The workflow moves from data cleaning and basic analysis in Excel, to SQL-based
analysis, and finally to an interactive Power BI dashboard and business insights
report.

## Project Scope

The analysis covered:
- Data cleaning and validation
- Overall sales and profitability
- Product and category performance
- Region and market-wise sales
- Customer and segment analysis
- Monthly and yearly sales trends
- Discount and profitability patterns
- Loss-making orders/products
- Shipping mode usage
- Business recommendations based on the findings

## Data source
Global E-Commerce transaction dataset covering **2011–2014**, provided as part
of the Primeor Solutions Data Analytics Internship project.

The cleaned dataset contains **51,257 records**, covering **796 customers** and
**147 countries**.

## Methodology

### 1. Data Cleaning & Preparation — Excel
The raw dataset was inspected and transformed into an analysis-ready table.

Key steps included:
- Removed duplicate records
- Handled missing/null values
- Standardized inconsistent text values
- Corrected date formats
- Validated numerical fields
- Removed unnecessary spaces and formatting inconsistencies
- Prepared the cleaned dataset for downstream SQL and Power BI analysis

### 2. Basic Excel Analysis
Excel formulas, PivotTables and charts were used to perform an initial
exploration of the cleaned data.

Analysis included:
- Total sales and total profit
- Average discount
- Top 5 products by sales
- Top loss-making products
- Region-wise sales
- Profit by category
- Sales by customer segment
- Monthly sales trends
- Year-wise sales trends

### 3. SQL Analysis — MySQL
The cleaned dataset was imported into MySQL and structured for analytical
queries.

Key SQL work included:
- Converting order and shipping dates into proper `DATE` fields using
  `STR_TO_DATE()`
- Converting financial fields to appropriate `DECIMAL` precision
- Aggregating sales and profit using `SUM()` and `AVG()`
- Ranking customers using the `RANK() OVER()` window function
- Identifying top profitable products
- Comparing regional and market performance
- Analysing category-level profitability and discounting
- Identifying negative-profit orders
- Analysing monthly and yearly sales trends
- Measuring shipping-mode usage

### 4. Power BI Dashboard
An interactive Power BI dashboard was developed to turn the analysis into
decision-ready visuals.

The dashboard covers:
- Executive KPIs
- Sales by region and market
- Monthly sales trends
- Category performance
- Top products
- Top customers
- Profit by sub-category
- Customer segment analysis
- Interactive slicers/filters
- KPI cards and formatted visuals

### 5. Business Insights
The Excel and SQL results were cross-checked and synthesized into a final
business insights report, connecting the analytical findings to practical
business recommendations.

## Tools
**Microsoft Excel · MySQL · Power BI**

## Key Findings

- **$12.63M total sales** and **$1.47M total profit**, resulting in an overall
  profit margin of **11.62%**.
- **APAC** generated the highest market revenue at approximately **$3.58M**,
  while **Central** was the highest-selling region at approximately **$2.82M**.
- **Technology** had the highest average profit per order at **$65.46**, compared
  with $29.00 for Furniture and $16.58 for Office Supplies.
- **Furniture** had the highest average discount at approximately **17%**, with
  the deepest individual discount reaching **85%**.
- **Phones** were the highest-revenue sub-category at approximately **$1.71M**,
  followed by Copiers and Chairs.
- **Tom Ashbrook** was the highest-selling customer by total sales, at
  approximately **$40.5K**.
- **Standard Class** was the dominant shipping mode, accounting for roughly
  **60%** of records.
- Sales increased consistently across the 2011–2014 period, from approximately
  **$2.26M in 2011 to $4.29M in 2014**.
- Monthly analysis showed a strong year-end pattern, with **November and
  December** among the strongest sales months, while February was consistently
  one of the weakest.

## Business Recommendations

- Prioritize high-profit **Technology** products, particularly strong
  sub-categories such as Phones and Copiers, when allocating marketing and
  inventory resources.
- Review **Furniture discounting**, where relatively high discounts coincide
  with comparatively lower profitability.
- Continue developing high-revenue markets such as **APAC and EU**, while
  investigating weaker markets to understand the reasons for their lower
  contribution.
- Plan inventory, staffing and marketing activity around the observed
  **November–December sales peak** and investigate the recurring February
  slowdown.
- Develop a key-account strategy around the highest-value customers identified
  through the customer-level analysis.
- Investigate loss-making orders further by examining the relationship between
  discounts, shipping costs, products and profitability.

## Dashboard
The Power BI dashboard provides an interactive view of the project's main
KPIs, sales trends, geographic performance, product/category performance,
customer insights and operational patterns.

## Files

- `Cleaned_Dataset.csv` — cleaned and analysis-ready dataset
- `Excel_Analyzed.xlsx` — Excel cleaning, calculations, PivotTables and charts
- `Sql_queries(1).sql` — MySQL database setup and analytical queries
- `SQL Analysis Results and Insights(1).xlsx` — SQL outputs and summarized
  insights
- `Primeor_DAInt_Ecom_Analysis Dashboard(1).pbix` — Power BI dashboard
- `Primeor_Final_Business_Insights_Report(3).pdf` — final business insights
  report

## Learning Outcomes

This project provided hands-on experience across the full analytics workflow:
from cleaning and validating a large transactional dataset, to exploratory
analysis in Excel, structured querying in SQL, interactive visualization in
Power BI, and finally translating analytical results into business
recommendations.

It also reinforced an important part of data analytics: **the goal is not
simply to produce charts or queries, but to turn reliable data into insights
that can support business decisions.**
