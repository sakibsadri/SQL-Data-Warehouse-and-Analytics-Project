# 🚀 SQL Data Warehouse & Analytics Project

<div align="center">

### Design • Build • Transform • Analyze • Deliver

A production-inspired **Data Warehouse & Analytics Project** built using **Microsoft SQL Server**, implementing the **Medallion Architecture (Bronze → Silver → Gold)** to transform raw ERP and CRM data into a scalable, analytics-ready warehouse for business intelligence and decision-making.
<img width="634" height="375" alt="image" src="https://github.com/user-attachments/assets/0549c29a-f755-4dad-9570-34b6321677fd" />

---

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Data Warehouse](https://img.shields.io/badge/Data-Warehouse-0052CC?style=for-the-badge)
![ETL Pipeline](https://img.shields.io/badge/ETL-Pipeline-success?style=for-the-badge)
![Analytics](https://img.shields.io/badge/Business-Analytics-orange?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Star-Schema-blueviolet?style=for-the-badge)
![SQL](https://img.shields.io/badge/Language-SQL-informational?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?style=for-the-badge&logo=github)

</div>

---

# 📖 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Key Features](#-key-features)
- [Solution Architecture](#-solution-architecture)
- [Architecture Layers](#-architecture-layers)
- [Technology Stack](#-technology-stack)
- [Repository Structure](#-repository-structure)
- [Data Sources](#-data-sources)
- [ETL Pipeline](#-etl-pipeline)
- [Data Warehouse Design](#-data-warehouse-design)
- [Analytics & Business Intelligence](#-analytics--business-intelligence)
- [Performance Optimization](#-performance-optimization)
- [Project Workflow](#-project-workflow)
- [Installation Guide](#-installation-guide)
- [Future Roadmap](#-future-roadmap)
- [Contributing](#-contributing)
- [License](#-license)
- [Author](#-author)

---

# 📌 Project Overview

Modern organizations generate enormous volumes of operational data from multiple business systems. However, this data is often fragmented, inconsistent, and unsuitable for analytical reporting.

This project demonstrates how to design and implement a **modern SQL-based Data Warehouse** that consolidates data from multiple enterprise systems into a centralized analytical repository.

Using Microsoft's SQL Server ecosystem, the project follows the **Medallion Architecture** to progressively refine raw datasets into trusted, business-ready information.

The final warehouse enables efficient reporting, KPI monitoring, trend analysis, and strategic decision-making while following industry-standard data engineering practices.

---

# 💼 Business Problem

Business data frequently resides across multiple systems such as ERP and CRM platforms. These systems often differ in structure, naming conventions, data quality, and update frequency, making cross-functional reporting both difficult and time-consuming.

Without a centralized data warehouse, organizations face challenges including:

- Duplicate records
- Inconsistent customer information
- Missing or invalid values
- Poor data quality
- Slow reporting processes
- Limited historical analysis
- Difficult KPI tracking
- Lack of a single source of truth

This project addresses these challenges by building a scalable data warehouse that standardizes, cleans, validates, and models enterprise data for analytical consumption.

---

# 🎯 Project Objectives

The primary objectives of this project are to:

- Build an enterprise-style SQL Data Warehouse
- Implement the Medallion Architecture (Bronze, Silver, Gold)
- Consolidate ERP and CRM datasets
- Develop reusable ETL pipelines
- Improve data quality through cleansing and validation
- Design an optimized dimensional data model
- Create fact and dimension tables
- Enable analytical reporting using SQL
- Generate meaningful business insights
- Demonstrate real-world Data Engineering workflows

---

# ✨ Key Features

✔ Enterprise Data Warehouse Design

✔ Medallion Architecture

✔ Multi-source Data Integration

✔ Automated ETL Pipelines

✔ Data Cleaning & Validation

✔ SQL Transformations

✔ Star Schema Modeling

✔ Fact & Dimension Tables

✔ Business KPI Generation

✔ Analytical SQL Queries

✔ Performance-Oriented Design

✔ Production-Ready Repository Structure

---

# 🏛 Solution Architecture

The project follows a layered Medallion Architecture to progressively improve data quality throughout the pipeline.

```
                   Source Systems

          +-----------------------------+
          |            ERP              |
          |            CRM              |
          +--------------+--------------+
                         |
                         |
                Raw CSV Extraction
                         |
                         ▼

        ┌─────────────────────────────────┐
        │         Bronze Layer            │
        │     Raw Landing Data Zone       │
        └─────────────────────────────────┘
                         │
                         ▼
        ┌─────────────────────────────────┐
        │         Silver Layer            │
        │ Data Cleansing & Standardization│
        └─────────────────────────────────┘
                         │
                         ▼
        ┌─────────────────────────────────┐
        │          Gold Layer             │
        │ Business Ready Data Warehouse   │
        └─────────────────────────────────┘
                         │
                         ▼

             Reports • KPIs • Analytics
          Dashboards • Business Insights

```

---

# 🥉🥈🥇 Architecture Layers

## Bronze Layer

The Bronze Layer acts as the raw ingestion zone where source files are loaded exactly as received.

### Responsibilities

- Raw data ingestion
- Historical storage
- Source preservation
- Data lineage
- Audit support

---

## Silver Layer

The Silver Layer focuses on improving data quality through cleaning and transformation.

### Responsibilities

- Remove duplicates
- Handle NULL values
- Standardize formats
- Correct data types
- Validate business rules
- Data enrichment
- Quality checks

---

## Gold Layer

The Gold Layer contains analytical datasets optimized for reporting and business intelligence.

### Responsibilities

- Fact tables
- Dimension tables
- Star schema
- Business KPIs
- Aggregated metrics
- Reporting datasets

---

# 🛠 Technology Stack

| Category | Technology |
|-----------|------------|
| Database | Microsoft SQL Server |
| IDE | SQL Server Management Studio (SSMS) |
| Programming Language | SQL |
| Architecture | Medallion Architecture |
| Data Modeling | Star Schema |
| ETL | SQL Stored Procedures |
| Source Files | CSV |
| Version Control | Git |
| Repository | GitHub |
| Documentation | Markdown |
| Diagram Tool | Draw.io |

---

> **📌 Continue below with Part 2**

<!-- ========================================================= -->
<!--                 PASTE PART 2 BELOW THIS LINE              -->
<!-- ========================================================= -->
# 📂 Repository Structure

The repository is organized following industry-standard project conventions to ensure scalability, maintainability, and ease of collaboration.

```text
SQL-Data-Warehouse-and-Analytics-Project
│
├── datasets/
│   ├── crm/
│   │   ├── customers.csv
│   │   ├── sales_person.csv
│   │   └── ...
│   │
│   └── erp/
│       ├── products.csv
│       ├── sales.csv
│       ├── inventory.csv
│       └── ...
│
├── docs/
│   ├── architecture.drawio
│   ├── star_schema.drawio
│   ├── data_flow.drawio
│   ├── requirements.md
│   └── business_requirements.md
│
├── images/
│   ├── architecture.png
│   ├── medallion_architecture.png
│   ├── star_schema.png
│   ├── etl_pipeline.png
│   └── dashboard_preview.png
│
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   ├── analytics/
│   └── stored_procedures/
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 📁 Directory Description

| Folder | Description |
|----------|-------------|
| **datasets/** | Raw ERP and CRM source datasets |
| **docs/** | Project documentation, architecture, and data model diagrams |
| **images/** | Screenshots, diagrams, and project visuals |
| **scripts/bronze/** | Raw data ingestion scripts |
| **scripts/silver/** | Data cleaning and transformation scripts |
| **scripts/gold/** | Business-ready warehouse scripts |
| **scripts/analytics/** | SQL queries for reporting and insights |
| **scripts/stored_procedures/** | Reusable ETL stored procedures |

---

# 📥 Data Sources

The warehouse integrates data from multiple enterprise systems to create a centralized source of truth for reporting and analytics.

## Enterprise Resource Planning (ERP)

The ERP system contains operational data used to manage day-to-day business processes.

### Sample Entities

- Products
- Categories
- Inventory
- Sales Orders
- Order Details
- Suppliers

### Business Value

ERP data provides insight into product performance, inventory levels, operational efficiency, and sales transactions.

---

## Customer Relationship Management (CRM)

The CRM system stores customer-related information and sales interactions.

### Sample Entities

- Customers
- Sales Representatives
- Customer Addresses
- Regions
- Contact Information
- Customer Relationships

### Business Value

CRM data enables customer segmentation, revenue analysis, retention tracking, and customer lifetime value calculations.

---

# 🔄 ETL Pipeline

The project implements a structured ETL (Extract, Transform, Load) workflow that progressively enhances data quality before loading it into the analytical warehouse.

```text
                 Source Files
              (ERP & CRM CSV)

                     │
                     ▼

              Extract Raw Data
                     │
                     ▼

        Bronze Layer (Landing Zone)
                     │
                     ▼

         Data Validation & Profiling
                     │
                     ▼

        Silver Layer (Cleaned Data)
                     │
                     ▼

    Business Rules & Transformations
                     │
                     ▼

       Gold Layer (Star Schema)
                     │
                     ▼

 Business Reports • Dashboards • KPIs
```

---

# ⚙ ETL Processing Stages

## 1. Extract

The extraction stage loads raw CSV files into the Bronze Layer without applying any transformations.

### Activities

- Import CSV files
- Preserve original data
- Track load timestamps
- Maintain source integrity

---

## 2. Transform

The transformation stage improves data quality and prepares datasets for analysis.

### Data Cleaning Tasks

- Remove duplicate records
- Handle missing values
- Convert invalid data types
- Standardize text formatting
- Normalize date formats
- Validate business rules
- Remove unwanted characters

---

## 3. Load

The cleaned data is loaded into analytical tables designed for fast querying and reporting.

### Output

- Dimension Tables
- Fact Tables
- KPI-ready datasets
- Reporting views

---

# 🧹 Data Quality Framework

Data quality is a fundamental part of the ETL pipeline.

The project includes several validation mechanisms to ensure consistency, accuracy, and reliability.

| Validation | Purpose |
|------------|---------|
| Duplicate Detection | Prevent duplicate business records |
| NULL Validation | Handle incomplete data |
| Data Type Validation | Ensure correct SQL data types |
| Format Standardization | Maintain consistent values |
| Business Rule Validation | Enforce business logic |
| Referential Integrity | Validate foreign key relationships |

---

# ⭐ Data Warehouse Design

The warehouse follows **Dimensional Modeling** using the **Star Schema**, a widely adopted approach for analytical databases.

### Why Star Schema?

- Faster query performance
- Simplified reporting
- Optimized aggregations
- Easy BI integration
- Reduced query complexity
- Better scalability

---

# 🌟 Star Schema Overview

```text
                 DimCustomer
                      │
                      │
                      │
DimDate ─────── FactSales ─────── DimProduct
                      │
                      │
                      │
               DimSalesPerson
```

The central **FactSales** table stores measurable business events, while surrounding dimension tables provide descriptive business context.

---

# 📊 Fact Tables

Fact tables contain measurable business metrics.

| Fact Table | Description |
|------------|-------------|
| FactSales | Stores sales transactions and business metrics |

### Measures

- Sales Amount
- Quantity Sold
- Discount
- Profit
- Cost
- Revenue

---

# 📚 Dimension Tables

Dimension tables provide descriptive attributes used for filtering, grouping, and reporting.

| Dimension | Description |
|-----------|-------------|
| DimCustomer | Customer information |
| DimProduct | Product details |
| DimDate | Calendar hierarchy |
| DimSalesPerson | Sales representative details |

---

# 🔗 Relationship Model

```text
DimCustomer
      │
      │
      ▼

FactSales

▲      ▲      ▲

│      │      │

DimDate  DimProduct  DimSalesPerson
```

Each dimension table connects to the central fact table using surrogate keys, enabling efficient analytical queries and high-performance reporting.

---

# 🖼 Architecture & Data Model Diagrams

The repository includes visual documentation to simplify understanding of the overall solution architecture.

| Diagram | Description |
|----------|-------------|
| Architecture Diagram | End-to-end solution overview |
| Medallion Architecture | Bronze → Silver → Gold workflow |
| Star Schema | Dimensional data model |
| ETL Pipeline | Data movement across layers |
| Dashboard Preview | Sample analytical outputs |

> **📸 Add screenshots inside the `/images` folder and reference them here once available.**

---

> **📌 Continue below with Part 3**

<!-- ========================================================= -->
<!--                 PASTE PART 3 BELOW THIS LINE              -->
<!-- ========================================================= -->
# 📊 Analytics & Business Intelligence

The Gold Layer serves as the foundation for business intelligence by exposing clean, structured, and analytics-ready datasets.

Using SQL, the project answers key business questions, identifies performance trends, and generates actionable insights that support strategic decision-making.

The analytics layer is designed to be easily consumed by reporting tools such as Power BI, Tableau, Excel, or custom dashboards.

---

# 💼 Business Use Cases

The data warehouse enables a variety of real-world business scenarios, including:

### Customer Analytics

- Identify high-value customers
- Analyze customer purchasing behavior
- Measure Customer Lifetime Value (CLV)
- Track repeat purchase rates
- Segment customers based on revenue
- Monitor customer growth trends

---

### Sales Analytics

- Analyze monthly sales performance
- Compare quarterly and yearly revenue
- Monitor sales growth
- Identify seasonal sales patterns
- Evaluate sales representative performance
- Track revenue trends over time

---

### Product Analytics

- Best-selling products
- Worst-performing products
- Revenue by product category
- Inventory movement analysis
- Product profitability
- Category performance comparison

---

### Operational Analytics

- Order processing trends
- Inventory availability
- Product demand forecasting
- Customer acquisition trends
- Sales channel performance

---

# 📈 Key Performance Indicators (KPIs)

The warehouse is designed to calculate business-critical KPIs efficiently.

| KPI | Description |
|------|-------------|
| Total Revenue | Total sales generated |
| Total Orders | Number of completed orders |
| Total Customers | Active customer count |
| Total Products | Available product count |
| Average Order Value | Revenue per order |
| Revenue Growth % | Period-over-period revenue growth |
| Monthly Sales | Monthly sales trend |
| Quarterly Revenue | Quarterly business performance |
| Yearly Revenue | Annual performance summary |
| Top Customers | Highest revenue-generating customers |
| Top Products | Best-selling products |
| Revenue by Category | Category-wise sales contribution |
| Customer Lifetime Value | Total customer contribution |
| Profit Margin | Overall business profitability |

---

# 📊 Sample Analytical Questions

The project answers practical business questions such as:

### Sales

- What are the monthly revenue trends?
- Which quarter generated the highest revenue?
- Which year recorded maximum sales?
- What is the average order value?
- How much revenue is generated per month?

---

### Customers

- Who are the top 10 customers?
- Which customers generate the highest revenue?
- How many repeat customers exist?
- Which region has the highest customer concentration?
- What is each customer's lifetime value?

---

### Products

- Which products generate maximum revenue?
- Which products are underperforming?
- Which product categories are growing?
- What products should be discontinued?
- Which products contribute the highest profit?

---

# 🧾 SQL Reporting Modules

The analytics layer contains reusable SQL queries organized into reporting modules.

| Module | Purpose |
|----------|----------|
| Customer Reports | Customer insights |
| Sales Reports | Revenue analysis |
| Product Reports | Product performance |
| Executive Dashboard | Business KPIs |
| Trend Analysis | Historical reporting |
| Revenue Analysis | Financial insights |

---

# ⚡ SQL Performance Optimization

Several optimization techniques have been incorporated to improve query efficiency and scalability.

### Query Optimization

- Optimized JOIN operations
- Efficient filtering using WHERE clauses
- Reduced unnecessary subqueries
- Aggregation using GROUP BY
- Window Functions for advanced analytics
- Common Table Expressions (CTEs)

---

### Database Optimization

- Primary Keys
- Foreign Keys
- Clustered Indexes
- Non-Clustered Indexes
- Constraint Validation
- Optimized Data Types

---

### ETL Optimization

- Layered transformations
- Reusable Stored Procedures
- Incremental loading-ready architecture
- Modular SQL scripts
- Error handling
- Transaction management

---

# 💻 SQL Features Demonstrated

This project showcases practical SQL skills commonly used in enterprise environments.

### Core SQL

- SELECT
- INSERT
- UPDATE
- DELETE
- MERGE

---

### Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- SELF JOIN

---

### Aggregations

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

### Advanced SQL

- Common Table Expressions (CTEs)
- Window Functions
- CASE Statements
- Subqueries
- Correlated Subqueries
- Views
- Stored Procedures
- Temporary Tables

---

### Data Warehouse Concepts

- ETL
- Dimensional Modeling
- Star Schema
- Fact Tables
- Dimension Tables
- Surrogate Keys
- Slowly Changing Dimensions (Ready for Enhancement)

---

# 📉 Business Insights Generated

The warehouse enables organizations to derive valuable business insights, including:

- Revenue growth trends
- Customer purchasing behavior
- High-performing products
- Sales representative performance
- Product category profitability
- Seasonal demand patterns
- Customer segmentation
- Business growth opportunities

---

# 📊 Reporting Outputs

The warehouse supports reporting at multiple business levels.

### Executive Reports

- Company Revenue
- Business Growth
- Profitability
- Sales KPIs

---

### Operational Reports

- Daily Sales
- Order Summary
- Product Availability
- Inventory Status

---

### Analytical Reports

- Customer Segmentation
- Product Performance
- Revenue Analysis
- Sales Trends

---

# 🛠 Skills Demonstrated

This project demonstrates practical skills across Data Engineering, SQL Development, and Business Intelligence.

### Data Engineering

- Data Warehousing
- ETL Development
- Data Integration
- Data Validation
- Data Transformation
- Data Cleansing

---

### SQL Development

- Query Writing
- Stored Procedures
- Views
- Joins
- Window Functions
- Performance Optimization

---

### Data Modeling

- Star Schema
- Fact & Dimension Design
- Primary & Foreign Keys
- Relational Modeling

---

### Business Intelligence

- KPI Development
- Business Reporting
- Dashboard Data Preparation
- Trend Analysis
- Executive Reporting

---

# 🎓 Learning Outcomes

Through this project, I gained hands-on experience in:

- Designing enterprise-grade Data Warehouses
- Building scalable ETL pipelines
- Implementing Medallion Architecture
- Applying dimensional data modeling
- Writing optimized SQL queries
- Improving data quality through validation
- Creating analytical data models
- Generating business insights from operational data
- Preparing data for Business Intelligence platforms

---

> **📌 Continue below with Part 4**

<!-- ========================================================= -->
<!--                 PASTE PART 4 BELOW THIS LINE              -->
<!-- ========================================================= -->
# 🚀 Getting Started

Follow the steps below to set up and run the project locally.

---

# 📋 Prerequisites

Before getting started, ensure you have the following installed:

| Software | Version |
|----------|---------|
| Microsoft SQL Server | 2019 or later |
| SQL Server Management Studio (SSMS) | Latest |
| Git | Latest |
| GitHub | Account |
| Draw.io *(Optional)* | Latest |

---

# ⚙️ Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/SQL-Data-Warehouse-and-Analytics-Project.git
```

---

### 2. Navigate to the Project

```bash
cd SQL-Data-Warehouse-and-Analytics-Project
```

---

### 3. Open SQL Server Management Studio

Connect to your SQL Server instance.

---

### 4. Create a New Database

```sql
CREATE DATABASE DataWarehouse;
GO
```

---

### 5. Execute SQL Scripts

Run the SQL scripts in the following order:

```text
1. scripts/bronze/
        ↓
2. scripts/silver/
        ↓
3. scripts/gold/
        ↓
4. scripts/analytics/
```

Executing the scripts in sequence ensures that all dependencies are created correctly.

---

# ▶️ Project Execution Flow

```text
Extract Source Data
        │
        ▼

Load Bronze Layer
        │
        ▼

Clean & Validate Data
        │
        ▼

Load Silver Layer
        │
        ▼

Apply Business Transformations
        │
        ▼

Populate Gold Layer
        │
        ▼

Run Analytical SQL Queries
        │
        ▼

Generate Reports & KPIs
```

---

# 📸 Project Screenshots

> Replace the placeholders below with screenshots from your project.

## Solution Architecture

```markdown
![Architecture](images/architecture.png)
```

---

## Medallion Architecture

```markdown
![Medallion](images/medallion_architecture.png)
```

---

## Star Schema

```markdown
![Star Schema](images/star_schema.png)
```

---

## ETL Pipeline

```markdown
![ETL Pipeline](images/etl_pipeline.png)
```

---

## Sample Analytics Dashboard

```markdown
![Dashboard](images/dashboard_preview.png)
```

---

# 📌 Project Highlights

✔ End-to-End SQL Data Warehouse

✔ Medallion Architecture (Bronze → Silver → Gold)

✔ Enterprise ETL Pipeline

✔ Data Cleaning & Validation

✔ Star Schema Design

✔ Fact & Dimension Modeling

✔ Analytical SQL Queries

✔ KPI Reporting

✔ Business Intelligence Ready

✔ Modular & Maintainable Codebase

✔ Portfolio-Ready Documentation

---

# 🗺️ Roadmap

The following enhancements are planned for future iterations of the project:

- [ ] Incremental Data Loading
- [ ] Change Data Capture (CDC)
- [ ] Slowly Changing Dimensions (SCD Type 2)
- [ ] SQL Server Agent Job Scheduling
- [ ] Data Quality Monitoring Dashboard
- [ ] Automated ETL Logging Framework
- [ ] Parameterized Stored Procedures
- [ ] Power BI Dashboard Integration
- [ ] Azure Data Factory Pipeline
- [ ] Azure Synapse Analytics
- [ ] Microsoft Fabric Integration
- [ ] Data Lake Implementation
- [ ] CI/CD Pipeline using GitHub Actions

---

# 🤝 Contributing

Contributions are welcome!

If you have ideas for improvements, bug fixes, or new features, feel free to:

1. Fork the repository
2. Create a new feature branch
3. Commit your changes
4. Push the branch
5. Open a Pull Request

Please ensure that your code follows the project's structure and coding standards.

---

# 📄 License

This project is licensed under the **MIT License**.

See the `LICENSE` file for more information.

---

# 🙏 Acknowledgements

Special thanks to the open-source community and Microsoft SQL Server documentation for providing valuable learning resources and best practices that inspired the design of this project.

---

# 👨‍💻 Author

## Sakib Sadri

**Software Engineer | Data Analyst | SQL Developer | Data Engineer**

Passionate about building scalable data solutions, designing modern data warehouses, developing ETL pipelines, and transforming raw data into actionable business insights.

### 📬 Connect with Me

- 📧 **Email:** sadrisakib321@gmail.com
- 💼 **LinkedIn:** https://linkedin.com/in/sakibsadri
- 🌐 **GitHub:** https://github.com/yourusername

---

# ⭐ Support

If you found this project helpful or learned something from it:

- ⭐ Star this repository
- 🍴 Fork the project
- 🛠️ Share your feedback
- 📢 Share it with your network

Your support helps improve the project and motivates future contributions.

---

<div align="center">

## 🌟 Transforming Raw Data into Meaningful Insights

### Built with ❤️ using Microsoft SQL Server

**If you like this project, don't forget to leave a ⭐ on GitHub!**

</div>
