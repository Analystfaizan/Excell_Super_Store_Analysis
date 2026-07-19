# 🛍️ B2C Sales Dashboard — Super Store Analysis

### MS Excel | SQL | MySQL

[![Excel](https://img.shields.io/badge/MS%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](https://github.com/Analystfaizan)
[![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://github.com/Analystfaizan)
[![MySQL](https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://github.com/Analystfaizan)

> An interactive **B2C sales dashboard** tracking revenue, profit margins, and payment-mode trends across products and time periods — built using SQL/MySQL for data querying and Excel for analysis and reporting, giving stakeholders faster, data-backed insight into sales performance.

---

## 📌 Table of Contents
- [Overview](#-overview)
- [Business Problem](#-business-problem)
- [Tools & Technologies](#-tools--technologies)
- [Dataset](#-dataset)
- [Approach & Methodology](#-approach--methodology)
- [Key Features](#-key-features)
- [Key Calculations](#-key-calculations)
- [Key Insights & KPIs](#-key-insights--kpis)
- [Dashboard Preview](#-dashboard-preview)
- [Skills Demonstrated](#-skills-demonstrated)
- [How to Use This Project](#-how-to-use-this-project)
- [Repository Structure](#-repository-structure)
- [About the Author](#-about-the-author)

---

## 🔍 Overview

This project is an interactive **Excel-based B2C sales dashboard** built on retail (Superstore) transaction data, with the underlying data queried and aggregated in **MySQL**. It tracks **revenue, profit margins, and payment-mode trends** across products and time, giving business stakeholders a single, dynamic view for faster decision-making — without needing to dig through raw transactional data.

The focus of this build was as much on **usability and polish** as on the numbers: dynamic filtering with slicers, real-time summary KPIs, a clean formatted layout, and clear tooltips/comments make the dashboard genuinely pleasant to use.

---

## 🎯 Business Problem

Retail stakeholders need a fast, reliable way to answer:

- How is revenue and profit trending over time and across products?
- Which payment modes are customers actually using, and how does that shift over time?
- Where are the profit margins strongest — and where are they being eroded?
- Can leadership filter and explore the data themselves, in real time, without analyst support?

---

## 🛠 Tools & Technologies

| Category | Tools Used |
|---|---|
| Data Querying & Aggregation | MySQL (Joins, Aggregations, Subqueries, CTEs) |
| Dashboard & Reporting | MS Excel (PivotTables, PivotCharts, Slicers, Formulas) |
| Data Cleaning & Transformation | Excel + SQL |
| Design | Formatted layout, cell comments/tooltips for readability |

---

## 📊 Dataset

- **Type:** B2C retail transaction data (Superstore-style dataset)
- **Scope:** Product-level and time-series sales data, including revenue, profit, and payment mode
- **Prep:** Queried and aggregated in MySQL, then cleaned and shaped in Excel for consistent, reliable reporting

---

## 🧭 Approach & Methodology

1. **Data Preparation** — Queried and joined raw sales tables in MySQL, aggregating at the product and time-period level
2. **Formula Development** — Built Excel formulas (SUMIFS, calculated fields) for Profit and Profit % to ensure accuracy and consistency across the dashboard
3. **Interactivity Layer** — Implemented PivotTable slicers and summary KPI cells so filters apply consistently across all dashboard views
4. **Debugging & Refinement** — Resolved data sorting and slicer-interaction issues that were affecting reporting accuracy
5. **Design Polish** — Applied a clean, formatted layout with cell comments/tooltips to improve readability and overall user experience

---

## ✨ Key Features

- 📊 Revenue, profit margin, and payment-mode trend tracking across products and time periods
- 🧮 Custom Excel formulas for **Profit** and **Profit %**
- 🎚️ **PivotTable slicers** across multiple dashboard views for consistent filtering
- 📌 Real-time **summary KPI cells** for at-a-glance performance tracking
- 🎨 Clean, formatted layout with tooltips/comments for improved readability
- 🐛 Resolved data sorting and slicer-interaction issues for a smoother user experience

---

## 🧮 Key Calculations

- **Profit** — calculated via SQL aggregation and Excel formulas, feeding revenue and margin visuals
- **Profit %** — standardized margin calculation using SUMIFS/calculated fields, applied consistently across all dashboard views

Building these with a combination of MySQL aggregation and Excel formulas (rather than static one-off numbers) ensured the results stayed accurate and consistent as users filtered by product, time period, or payment mode.

---

## 💡 Key Insights & KPIs

| Metric | Detail |
|---|---|
| Revenue Tracking | Across products and time periods |
| Profit Margin Tracking | Standardized via SQL + Excel formulas |
| Payment-Mode Trends | Tracked across the full transaction dataset |
| Interactivity | PivotTable slicers + summary KPI cells across all views |
| UX Improvements | Fixed sorting/slicer bugs, added clean formatting + tooltips |

**What this shows:** the project goes beyond just displaying numbers — it demonstrates the ability to query and aggregate data in SQL, debug real reporting issues, and design a dashboard in Excel that stakeholders would actually enjoy using.

---

## 🖼 Dashboard Preview

![Dashboard](https://github.com/Analystfaizan/Excell_Super_Store_Analysis/blob/cd55533316c01ddb7b92451e657076fb779ed561/Screenshots/Executive%20Summary.png)


```
/screenshots
  ├── Screenshot.png
```

---

## 🧠 Skills Demonstrated

- SQL/MySQL querying: joins, aggregations, subqueries for data extraction
- Excel dashboard development for B2C retail data
- Formula-based calculations (Profit, Profit %) using SUMIFS and calculated fields
- PivotTable slicers and real-time summary KPI design
- Debugging data sorting & slicer-interaction issues
- Clean formatting and tooltip/comment usage for readability

---

## ▶️ How to Use This Project

1. Clone or download this repository
2. Review the SQL queries used for data extraction and aggregation (`/sql`)
3. Open the Excel workbook to view the interactive dashboard
4. Use the PivotTable slicers to filter by product, time period, or payment mode
5. Watch the summary KPI cells update in real time as filters are applied

---

## 📁 Repository Structure

```
b2c-sales-dashboard-superstore/
│
├── Dashboards/                              # Report and Dashboards 
├── Row_Data                                 # Source data and Excell file and CSV Row Data file
├── SQL Queries/                             # All 5 SQL Queries OR Insightes 
├── screenshots/                             # Dashboard preview images
└── README.md                                # Project documentation
```

*(Update this structure to match your actual repo layout.)*

---

## 👤 About the Author

**Syed Faizan**
Data Analyst | SQL • Power BI • DAX • Excel • Data Visualization

- 📧 Email: sdfaizan3126@gmail.com
- 💻 GitHub: [github.com/Analystfaizan](https://github.com/Analystfaizan)
- 📱 Mobile: +91 8483833126

> Data-driven Computer Science graduate passionate about turning raw data into actionable business insight through dashboards, DAX-based analysis, and exploratory data analysis (EDA).

⭐ **If you found this project useful or interesting, consider starring the repo!**
