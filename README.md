# 🚀 SQL Data Warehouse & Analytics Project

> A complete end-to-end Data Warehouse project built using SQL Server, implementing the Medallion Architecture (Bronze → Silver → Gold), ETL pipelines, dimensional modeling, and SQL analytics to generate business insights.

![SQL](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![ETL](https://img.shields.io/badge/ETL-Pipeline-blue?style=for-the-badge)
![Data Warehouse](https://img.shields.io/badge/Data-Warehouse-success?style=for-the-badge)
![Analytics](https://img.shields.io/badge/Analytics-Reporting-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

# 📌 Project Overview

This project demonstrates how to design and build a **Modern Data Warehouse** from multiple business systems using SQL Server.

The solution follows industry-standard **Medallion Architecture**, transforming raw ERP and CRM datasets into a clean, analytics-ready warehouse capable of supporting reporting, dashboards, and business intelligence.

The project covers every stage of the modern data engineering lifecycle:

- Data Ingestion
- Data Cleaning
- ETL Development
- Data Transformation
- Data Modeling
- Data Warehouse Design
- SQL Analytics
- Business Reporting

---

# 🎯 Project Objectives

✔ Build a scalable SQL Data Warehouse

✔ Integrate multiple business systems

✔ Improve data quality

✔ Create analytical data models

✔ Generate business insights using SQL

✔ Demonstrate real-world Data Engineering practices

✔ Build a portfolio-ready project

---

# 🏛 Architecture

The project follows the **Medallion Data Architecture**.

```
             Source Systems
          ┌────────┬─────────┐
          │  ERP   │   CRM   │
          └────┬───┴────┬────┘
               │
               ▼
      Bronze Layer (Raw Data)
               │
               ▼
     Silver Layer (Clean Data)
               │
               ▼
 Gold Layer (Business Warehouse)
               │
               ▼
     Analytics & Business Reports
```

---

# 🥉 Bronze Layer

Purpose:

Store raw data exactly as received from the source systems.

Features

- Raw CSV ingestion
- No transformations
- Historical loading
- Data backup
- Source auditing

---

# 🥈 Silver Layer

Purpose:

Transform raw datasets into clean, standardized, and validated data.

Transformations include

- Removing duplicates
- Handling NULL values
- Fixing data types
- Standardizing formats
- Data validation
- Data cleansing
- Business rule implementation

---

# 🥇 Gold Layer

Purpose:

Provide business-ready datasets optimized for reporting and analytics.

Includes

- Fact Tables
- Dimension Tables
- Aggregated Metrics
- KPI-ready datasets
- Star Schema

---

# 🛠 Tech Stack

| Category | Technology |
|-----------|------------|
| Database | SQL Server Express |
| Query Tool | SQL Server Management Studio (SSMS) |
| Language | SQL |
| Data Modeling | Star Schema |
| ETL | SQL Stored Procedures |
| Source Files | CSV |
| Version Control | Git & GitHub |
| Diagram Tool | Draw.io |
| Documentation | Markdown |

---

# 📂 Project Structure

```
SQL-Data-Warehouse-and-Analytics-Project
│
├── datasets/
│   ├── crm/
│   └── erp/
│
├── docs/
│   ├── architecture.drawio
│   ├── data_model.drawio
│   └── requirements.md
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   ├── analytics/
│   └── stored_procedures/
│
├── images/
│
├── README.md
│
└── LICENSE
```

---

# 📥 Data Sources

The project integrates data from two independent enterprise systems.

## ERP

Enterprise Resource Planning system containing

- Products
- Orders
- Inventory
- Sales

---

## CRM

Customer Relationship Management system containing

- Customers
- Sales Representatives
- Customer Information
- Business Relationships

---

# 🔄 ETL Workflow

```
CSV Files

      │

      ▼

Bronze Layer

      │

      ▼

Data Cleaning

      │

      ▼

Silver Layer

      │

      ▼

Business Transformation

      │

      ▼

Gold Warehouse

      │

      ▼

Analytics
```

---

# ⭐ Data Modeling

The warehouse follows a **Star Schema**.

Dimension Tables

- DimCustomer
- DimProduct
- DimDate
- DimSalesPerson

Fact Tables

- FactSales

Benefits

- Faster reporting
- Better performance
- Easier analytics
- Simplified SQL queries

---

# 📊 Analytics & Reporting

The project provides SQL reports for:

## Customer Analytics

- Top Customers
- Customer Segmentation
- Revenue by Customer
- Repeat Customers
- Customer Lifetime Value

---

## Product Analytics

- Best Selling Products
- Worst Selling Products
- Product Revenue
- Product Categories
- Product Performance

---

## Sales Analytics

- Monthly Sales
- Quarterly Sales
- Yearly Sales
- Sales Growth
- Revenue Trends
- Profit Analysis

---

# 📈 Key Business KPIs

- Total Revenue
- Total Orders
- Average Order Value
- Customer Count
- Product Count
- Sales Growth %
- Monthly Revenue
- Top Products
- Top Customers
- Revenue by Category

---

# 💡 Skills Demonstrated

- SQL Development
- Data Warehousing
- ETL Pipeline Development
- Data Cleaning
- Data Transformation
- Data Modeling
- Star Schema Design
- Database Design
- SQL Optimization
- Business Intelligence
- Data Analytics
- Reporting
- Data Architecture
- Dimensional Modeling

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience in

- Building enterprise Data Warehouses
- Designing Medallion Architecture
- Creating ETL pipelines
- Integrating multiple data sources
- SQL optimization
- Data quality management
- Fact & Dimension modeling
- Business reporting

---

# 🚀 Future Improvements

- Incremental Loading
- Change Data Capture (CDC)
- Slowly Changing Dimensions (SCD)
- SQL Agent Scheduling
- Power BI Dashboard Integration
- Azure Data Factory Pipeline
- Azure Synapse Analytics
- Microsoft Fabric Implementation

---

# 📷 Project Screenshots

```
images/
├── architecture.png
├── star_schema.png
├── dashboard.png
├── bronze_layer.png
├── silver_layer.png
└── gold_layer.png
```

(Add screenshots here)

---

# 🤝 Contributing

Contributions are welcome.

If you find improvements or bugs, feel free to open an issue or submit a pull request.

---

# 📜 License

This project is licensed under the MIT License.

---

# 👨‍💻 Author

**Sakib Sadri**

Software Engineer | Data Analyst | SQL Developer | Data Engineer

📧 Email: sadrisakib321@gmail.com

💼 LinkedIn: https://linkedin.com/in/sakibsadri

🌐 GitHub: https://github.com/yourusername

---

# ⭐ Support

If you found this project useful,

⭐ Star this repository

🍴 Fork it

📢 Share it with others

Happy Learning! 🚀
