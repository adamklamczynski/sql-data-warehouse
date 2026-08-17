/*
===============================================================================
Stored Procedure: silver.load_silver
===============================================================================
Script Purpose:
    This stored procedure performs the ETL (Extract, Transform, Load) process
    to populate the 'silver' schema tables from the 'bronze' schema layer.

Transformations Applied:
    - Cleans and standardizes raw data (trimming, case normalization).
    - Handles NULL and invalid values (recalculating totals, setting invalid dates to NULL).
    - Deduplicates customer records using ROW_NUMBER().
    - Derives dimension keys and historical date ranges (SCD Type 2 logic via LEAD).
    - Maps domain codes to readable business lookup values.

Usage Example:
    EXEC silver.load_silver;
===============================================================================
*/
