# 🏢 SQL Data Warehouse Project

![SQL](https://img.shields.io/badge/Language-SQL-blue.svg)
![Data Warehouse](https://img.shields.io/badge/Domain-Data_Engineering-orange.svg)
![Database](https://img.shields.io/badge/Database-PostgreSQL%2FSQL_Server-green.svg)
![License](https://img.shields.io/badge/License-MIT-brightgreen.svg)

## 📌 Overview

The **`sql-data-warehouse`** repository contains a end-to-end Data Warehouse solution built using SQL. The goal of this project is to transform raw transactional data (OLTP) into an optimized analytical architecture (OLAP) based on a Dimensional Model (Star Schema / Snowflake Schema), enabling efficient reporting, business intelligence, and data analytics.

---

## 🏗️ Data Warehouse Architecture

The project implements a multi-layer data flow pattern:

<img width="1192" height="702" alt="data_architecture" src="https://github.com/user-attachments/assets/57d9048b-4df3-4e3d-b757-e90c07e0a880" />



### 📊 Data Modeling
* **Fact Tables:** Store numeric metrics and business event transactions (e.g., sales, orders, events).
* **Dimension Tables:** Store business context (e.g., customers, products, date/time, location).
* **Slowly Changing Dimensions (SCD):** Implemented SCD Type 1 and Type 2 to manage historical changes over time.

---

## 📁 Repository Structure

```text
sql-data-warehouse
    ├───datasets
    │   ├───source_crm
    |   |    ├───cust_info.csv
    |   |    ├───prd_info.csv
    |   |    └───sales_details.csv
    │   └───source_erp
    |   |    ├───CUST_AZ12.csv
    |   |    ├───LOC_A101.csv
    |   |    └───PX_CAT_G1V2.csv
    ├───docs
    |   ├───data_architecture.drawio
    |   ├───data_architecture.png
    |   ├───data_catalog.md
    |   ├───data_flow.drawio
    |   ├───data_flow.png
    |   ├───data_integration.drawio
    |   ├───data_integration.png
    |   ├───data_model.png
    |   └───naming_conventions.md
    ├───scripts
    │   ├───bronze
    |   |     ├───ddl_bronze.sql
    |   |     └───proc_load_bronze.sql
    │   ├───gold
    |   |     ├───ddl_gold.sql
    │   ├───silver
    |   |     ├───ddl_silver.sql
    |   |     └───proc_load_silver.sql
    |   └───init_database.sql
    ├───tests
    │   ├───quality_checks_gold.sql
    |   └───quality_check_silver.sql
    ├───LICENSE
    └───README.md
```
---

## 🚀 Getting Started

### Prerequisites
* A Relational Database Management System (RDBMS) such as **MS SQL Server**.
* A SQL client tool (e.g., *SQL SSMS 22*, *pgAdmin*, *Azure Data Studio*).

## 📈 Sample Analytical Query

Below is an example query aggregating sales performance by product category:

```sql
SELECT DISTINCT
	YEAR(fs.order_date) AS sales_year,
	dp.category,
	COUNT(fs.order_number) OVER(PARTITION BY dp.category, YEAR(order_date)) AS total_orders,
	SUM(fs.sales_amount) OVER(PARTITION BY YEAR(fs.order_date)) AS yearly_total_revenue
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
ON fs.product_key = dp.product_key
ORDER BY 
	dp.category ASC,
	yearly_total_revenue DESC;
```

---

## 🛡️ Data Quality & Validation

The project incorporates data validation scripts to ensure warehouse reliability:
- Primary key uniqueness & non-null constraints.
- Foreign key integrity checks between facts and dimensions.
- Range and domain validation (e.g., price > 0, quantity >= 0, valid date ranges).

---

## 📄 License

This project is licensed under the **MIT License** – see the `LICENSE` file for details.
README.md
Wyświetlam README.md.
