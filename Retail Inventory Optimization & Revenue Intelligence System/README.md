# Retail Inventory Optimization & Revenue Intelligence System

## 📌 Project Overview
In a retail catalog of 1,850+ SKUs, inventory capital is often trapped in slow-moving items while high-demand "Star Products" face stock-out risks. This project provides an end-to-end analytical solution to prioritize inventory based on *Revenue Concentration (80/20 Rule)* and *Demand Volatility*.

### 🛠️ Tech Stack
* *Database:* SQL Server (Data Modeling & Statistical Buffer Calculations)
* *Visualization:* Power BI (DAX, Power Query, Executive Dashboarding)
* *Theory:* Pareto Principle (80/20), Safety Stock Modeling, CPG/Retail Inventory Logic

---

## 🚀 Key Features

### 1. Statistical Safety Stock Modeling (SQL)
Engineered a dynamic buffer formula to mitigate stock-out risks by calculating demand variance:
* *Logic:* Safety Stock = (Max_Daily_Sales * Max_Lead_Time) - (Avg_Daily_Sales * Avg_Lead_Time)
* *Impact:* Automated "Reorder Alerts" for high-velocity items.

### 2. Pareto (80/20) Revenue Analysis
Developed a DAX-driven cumulative revenue curve to segment the product catalog:
* *Finding:* Identified that the Top 20 SKUs (1% of catalog) drive *16.9% of total revenue*.
* *DAX used:* TOPN, SUMX, and CALCULATE for context transition.

### 3. Executive Dashboard
A high-fidelity Power BI report featuring:
* *Dual-Axis Pareto Chart:* Visualizing revenue concentration vs. product count.
* *Inventory Risk Matrix:* A color-coded heatmap of "Star Products" below safety levels.
* *Strategic KPIs:* Total Revenue, Top 20 SKU Share, and Global Safety Buffer targets.

---

## 📈 Business Interpretation
By integrating SQL-based math with Power BI visuals, this system allows Supply Chain Managers to:
1.  Prioritize 99% serviceability for the Top 20 "Star Products."
2.  Optimize working capital by reducing overstock in the "Long-Tail" (remaining 98% of SKUs).
3.  Transition from reactive to proactive reordering based on mathematical risk.

---

## 👤 Author
*Debmalya Roy* M.Sc. Mathematics | Aspiring Data Analyst [www.linkedin.com/in/debmalyaroydata] | [https://github.com/Debmalya21]
