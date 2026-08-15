# Data Warehouse Project – Bronze Layer Data Ingestion

This repository contains the T-SQL implementation for the **Bronze Layer** of a Data Warehouse architecture. The Bronze Layer serves as the raw ingestion zone, storing data in its original format directly from various source systems (CRM, ERP) into Microsoft SQL Server.

---

## 🏗️ Architecture Overview

The project follows the **Medallion Architecture** pattern:

* **Bronze Layer (Raw):** Ingests raw data from CSV files with minimal to no transformation, preserving source formats.
* **Silver Layer (Cleansed):** *(Next step)* Data cleaning, normalization, and business rule enforcement.
* **Gold Layer (Analytical):** *(Final step)* Star schema / dimensional modeling optimized for reporting and analytics.

---

## 🚀 Getting Started
Prerequisites
 * Database Engine: Microsoft SQL Server (2016 or higher recommended)
 * Client Tool: SQL Server Management Studio (SSMS) or Azure Data Studio
 * Permissions: Sufficient privileges to execute TRUNCATE TABLE and BULK INSERT operations.

## 📝 License
This project is open-source and available under the MIT License.
