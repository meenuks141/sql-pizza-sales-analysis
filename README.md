# Pizza Sales Data Analysis (SQL Case Study)

## Project Overview
This project focuses on analyzing transactional pizza sales data using SQL to extract key performance indicators (KPIs) and business insights regarding sales performance, product trends, and peak operational times.

## Repository Contents
* `pizza_sales.csv` — Raw dataset containing transactional data.
* `pizza_analysis.sql` — SQL script with all cleaning and analytical queries.
* `README.md` — Project summary and key insights.


## Core Analytical Insights

### 1. High-Level KPIs
* **Total Revenue:** 817860.05
* **Total Orders:** 21350
* **Average Order Value (AOV):** 38.31
* **Total Pizzas Sold:** 49574

### 2. Category & Product Trends
* **Top Category:** The **Classic** category contributes the highest percentage to total revenue and overall volume.
* **Size Preference:** Large (**L**) and Medium (**M**) sizes account for the vast majority of consumer orders.
* **Top Performer:** The **The Thai Chicken Pizza** drives the highest overall revenue.
* **Lowest Performer:** The **The Brie Carre Pizza** records the lowest overall order counts and revenue.

### 3. Time & Seasonality Patterns
* **Peak Hours:** Daily order volume spikes sharply during lunch hours (**12:00 PM - 1:00 PM**) and dinner hours (**5:00 PM - 7:00 PM**).
* **Busiest Days:** Weekend traffic peaks on **Friday and Saturday** evenings, yielding the highest order density.

---

## Key Takeaways
1. **Inventory Management:** Optimize raw ingredient stock for Large and Medium sizes, as they dominate sales volume.
2. **Staffing Optimization:** Increase kitchen and delivery staff schedules during the 12 PM lunch rush and 5 PM dinner window to reduce customer wait times.
3. **Menu Engineering:** Re-evaluate or introduce targeted promotions for underperforming items like the Brie Carre pizza to clear inventory or replace them with higher-margin alternatives.
