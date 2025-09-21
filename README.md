# 🛒 Product Analysis Project

## 📌 Project Overview
This project analyzes **27K+ product records** inspired by Blinkit-style data, covering categories, brands, prices, discounts, and ratings.  
The goal was to uncover key insights such as **discount strategy, category performance, and customer rating gaps** — and present them in an interactive Power BI dashboard.

---

## 🔧 Tools & Technologies
- **Python (Pandas)** – Data cleaning, feature engineering (discount %, etc.)
- **SQL (MySQL)** – Querying, creating views for category/brand analysis
- **Power BI** – Dashboard design, DAX measures, slicers, interactive visuals

---

## 📂 Project Workflow
1. **Data Cleaning (Python)**
   - Handled missing values (`brand`, `product`)
   - Kept `rating` blanks for realistic analysis (31% missing → business insight)
   - Added `discount` & `discount_percent` columns
   - Saved cleaned data to CSV for SQL & Power BI

2. **SQL Analysis**
   - Created **views** for category & brand analysis
   - Wrote queries for:
     - Total products, avg sale price, avg discount
     - % products with/without discount
     - Missing rating %
     - Top categories, brands, and subcategories

3. **Power BI Dashboard**
   - KPIs: Total Products, Total Sale, Total Brands, Missing Rating %, Avg Discount %
   - Charts:
     - Category-wise product count
     - Avg Sale Price by Category
     - % Products with vs without Discount
     - Top 10 Brands by Sale
     - Avg Discount by Top 10 Sub-Category
   - Interactive Slicers: Category, Price Range

---

## 📊 Key Insights
- **55.3% products** are discounted → indicates strong promotional activity  
- **31% products** have no rating → opportunity for customer engagement campaigns  
- **Beauty & Hygiene** is the largest category → focus area for marketing & stock optimization  
- Top brands like **Prestige, Divry, BB Royal** contribute major share of sales  

---

## 🏆 Skills Demonstrated
- Data Cleaning & Feature Engineering  
- SQL Aggregations & Views  
- Power BI Dashboard Design  
- DAX Measures & KPI Creation  
- Business Insights & Storytelling  

---

## 📎 Project Files
- `Blinkit_Products_Cleaned.csv` – Cleaned dataset
- `SQL_Queries.sql` – All SQL queries & views
- `final_analysis.pdf` – Project report
- `PowerBI_Dashboard.pbix` – Interactive dashboard file

---

## 📢 Connect with Me
[LinkedIn](www.linkedin.com/in/prince212108)
