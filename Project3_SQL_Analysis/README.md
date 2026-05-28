# Project 3 - SQL Data Analysis

This project performs SQL-based business analysis using MySQL.
📊 DecodeLabs Project 3 – SQL Data Analysis
📌 Project Overview
This project is part of the DecodeLabs Data Analytics Internship Program (Batch 2026). The objective of this project is to perform SQL-based Data Analysis on an e-commerce dataset to extract meaningful business insights using SQL queries.

The project focuses on:

Data Cleaning
Missing Value Handling
Duplicate Checking
Business Analysis
Revenue Analysis
Customer Analysis
Trend Analysis
Advanced SQL Concepts
This project demonstrates practical SQL skills used by real-world Data Analysts.

🎯 Project Objectives
The main goals of this project are:

Understand the dataset structure

Perform data cleaning and validation

Handle missing values professionally

Analyze business performance using SQL

Generate product, customer, and revenue insights

Use SQL clauses like:

SELECT
WHERE
GROUP BY
ORDER BY
HAVING
Subqueries
Aggregate Functions
🛠️ Technologies Used
MySQL
SQL
MySQL Workbench
CSV Dataset
📂 Dataset Information
The dataset contains e-commerce order details including:

OrderID
Date
CustomerID
Product
Quantity
UnitPrice
ShippingAddress
PaymentMethod
OrderStatus
ItemsInCart
CouponCode
ReferralSource
🧹 Data Cleaning Process
Before analysis, the dataset was cleaned professionally by:

✔ Checking Missing Values
Used:

CASE WHEN
IS NULL
TRIM()
✔ Handling Missing Values
Replaced missing values in:

CouponCode
Empty strings
Blank spaces
✔ Duplicate Detection
Checked duplicate Order IDs using:

GROUP BY
HAVING COUNT(*) > 1
✔ Invalid Data Validation
Checked:

Negative Quantity
Invalid UnitPrice
📈 SQL Analysis Performed
🔹 Basic Analysis
Total Records
Total Orders
Total Revenue
Average Order Value
🔹 Product Analysis
Product-wise Revenue
Product-wise Quantity Sold
Most Popular Product
Top Revenue Products
🔹 Customer Analysis
Customer-wise Spending
Top Customers
🔹 Payment Analysis
Most Used Payment Method
Revenue by Payment Method
🔹 Order Status Analysis
Delivered Orders Revenue
Cancelled Orders Analysis
🔹 Trend Analysis
Monthly Revenue Trend
Daily Revenue Trend
Highest Revenue Month
🔹 Advanced SQL Analysis
Revenue Contribution Percentage
Orders Above Average Revenue
HAVING Clause Analysis
Subqueries
🧠 Key SQL Concepts Used
SELECT
WHERE
GROUP BY
ORDER BY
COUNT()
SUM()
AVG()
ROUND()
CASE WHEN
HAVING
Subqueries
Aggregate Functions
📊 Sample Business Insights
Some important insights extracted from the dataset:

Identified top-performing products based on revenue
Found most valuable customers
Analyzed payment method usage trends
Detected monthly revenue growth patterns
Calculated revenue contribution percentage of products
Detected missing and inconsistent data
📷 Project Workflow
Data Understanding
Data Cleaning
Missing Value Handling
Duplicate Checking
Business Analysis
Trend Analysis
Insight Generation
🚀 Learning Outcomes
Through this project, I learned:

Practical SQL querying
Real-world data cleaning techniques
Business-oriented data analysis
Handling messy datasets
Writing professional SQL queries
Extracting insights using SQL
📌 Conclusion
This project helped me strengthen my SQL and Data Analytics skills through hands-on practice. It demonstrates how SQL can be used not only for querying data but also for solving real business problems and generating meaningful insights from raw datasets.

The project reflects a professional data analysis workflow including:

Data cleaning
Validation
Aggregation
Trend analysis
Business intelligence
👨‍💻 Author
Kaleem Ali Data Analytics Intern – DecodeLabs Batch 2026
