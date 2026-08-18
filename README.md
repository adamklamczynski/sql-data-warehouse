# 🏢 SQL Data Warehouse Project

![SQL](https://img.shields.io/badge/Language-SQL-blue.svg)
![Data Warehouse](https://img.shields.io/badge/Domain-Data_Engineering-orange.svg)
![Database](https://img.shields.io/badge/Database-SQL_Server-green.svg)
![License](https://img.shields.io/badge/License-MIT-brightgreen.svg)

## 📌 Overview

The **`sql-data-warehouse`** repository contains a end-to-end Data Warehouse solution built using SQL. The goal of this project is to transform raw transactional data (OLTP) into an optimized analytical architecture (OLAP) based on a Dimensional Model (Star Schema / Snowflake Schema), enabling efficient reporting, business intelligence, and data analytics.
Designed as a portfolio project, it highlights industry best practies in data engineering and analytisc.

---

## 🏗️ Data Warehouse Architecture

The project implements a multi-layer data flow pattern:

<img width="1192" height="702" alt="data_architecture" src="https://github.com/user-attachments/assets/57d9048b-4df3-4e3d-b757-e90c07e0a880" />


---

## 📊 Project Overview
* **Data Architecture:** Designing a Modern Data Warehouse using Medallion Architecture - Bronze, Silver, Gold Layer.
* **ETL Pipes:** Extracting, transforming and loading data from source system into the warehouse.
* **Data Modeling** Developing fact and dimension tables optimized for analytical queries
* **Analytics & Reporting:** Creating SQL-based reports and dashboards for actionable insights.

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

## 🚀Project Requirements
Building the Data Warehouse - Data Engineering
Designing a modern data warehouse using SQL Server to integrate sales data, enabling analytical reporting and informed decision-making.

**Specifications**
* Import data from two source system (CRM and ERP) provides as CSV files.
* Cleansing and elimination of data inconsistencies.
* Combining both tables into a single, user-friendly table.
* Focus solely on current data; historical data is not requested.

---

## 📄 License

This project is licensed under the **MIT License** – see the `LICENSE` file for details.
README.md
Wyświetlam README.md.
