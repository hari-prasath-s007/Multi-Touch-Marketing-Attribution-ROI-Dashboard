# 📊 Multi-Touch Marketing Attribution & ROI Dashboard

## 📌 Project Overview

This project analyzes marketing campaign performance across multiple digital channels by implementing a Multi-Touch Attribution model. Using Python, Oracle SQL, and Power BI, the project identifies which marketing channels contribute most to customer conversions and measures campaign effectiveness using key performance indicators.

---

## 🎯 Business Problem

Traditional Last-Click attribution assigns all conversion credit to the final marketing channel, often leading to poor budget allocation. This project builds attribution models to provide a more accurate view of marketing performance and improve ROI.

---

## 🛠️ Tech Stack

- Python (Pandas)
- Oracle SQL
- Power BI
- Excel
- Git & GitHub

---

## 📂 Dataset

The project uses three datasets:

### 1. AD_SPEND
- Channel
- Campaign
- Spend
- Clicks
- Impressions

### 2. USER_JOURNEY
- User_ID
- Event_Time
- Channel
- Campaign
- Event

### 3. CONVERSIONS
- User_ID
- Conversion_Date
- Revenue

---

## 🐍 Python Data Cleaning

- Imported Excel datasets using Pandas
- Handled missing values
- Removed duplicate records
- Standardized date formats
- Corrected data types
- Exported cleaned datasets for SQL analysis

---

## 🗄️ SQL Analysis

Performed:

- INNER JOIN
- GROUP BY
- Aggregate Functions
- Window Functions (ROW_NUMBER)
- Customer Journey Analysis
- First-Touch Attribution
- Last-Touch Attribution
- KPI Calculations

### KPIs

- Total Spend
- Total Revenue
- ROAS
- CAC

---

## 📋 SQL Views

- VW_FIRST_TOUCH
- VW_LAST_TOUCH
- VW_ROAS
- VW_CAC
- VW_CHANNEL_REVENUE
- VW_MARKETING_SUMMARY

---

## 📈 Power BI Dashboard

### KPI Cards

- Total Spend
- Total Revenue
- ROAS
- CAC

### Visualizations

- Revenue by Channel
- Marketing Spend by Channel
- ROAS by Channel
- CAC by Channel
- First-Touch Attribution
- Last-Touch Attribution
- Marketing Performance Summary

### Filters

- Channel
- Campaign
- Conversion Date

---

## 📊 Key Business Insights

- Identified top-performing marketing channels.
- Compared First-Touch and Last-Touch attribution models.
- Measured campaign profitability using ROAS and CAC.
- Built an executive dashboard for marketing decision-making.

---

## 📁 Project Structure

```
Marketing-Attribution-Dashboard/
│
├── data/
│   ├── marketing_dataset.xlsx
│   └── cleaned_dataset.csv
│
├── python/
│   └── data_cleaning.ipynb
│
├── sql/
│   ├── joins.sql
│   ├── attribution.sql
│   ├── kpi_calculations.sql
│   ├── views.sql
│   └── marketing_summary_view.sql
│
├── powerbi/
│   └── Marketing_Attribution_Dashboard.pbix
│
├── screenshots/
│   ├── dashboard.png
│   ├── revenue_by_channel.png
│   ├── spend_by_channel.png
│   ├── roas_by_channel.png
│   ├── cac_by_channel.png
│   └── marketing_summary.png
│
└── README.md
```

---

## 🚀 Project Workflow

```
Excel Dataset
      │
      ▼
Python Data Cleaning
      │
      ▼
Oracle SQL Analysis
      │
      ▼
SQL Views
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

## 💼 Skills Demonstrated

- Data Cleaning
- Data Transformation
- SQL Joins
- Window Functions
- Attribution Analysis
- KPI Calculation
- Data Modeling
- Dashboard Development
- Business Intelligence
- Git & GitHub

---

## 👤 Author

**Hariprasath S**

Aspiring Data Analyst skilled in Python, Oracle SQL, Power BI, Excel, and GitHub.

