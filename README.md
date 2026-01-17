# Retail Revenue Intelligence – SQL Analysis

This repository contains SQL queries used to analyze revenue performance, discount dependency, and growth trends for a retail business.  
The analysis supports an interactive Power BI dashboard that answers the business question:

**“Is revenue growth organic, or is it primarily driven by heavy discounting?”**

The SQL scripts are organized by analytical theme and were used to generate insights for:
- Executive performance overview
- Revenue leakage analysis
- Growth intelligence and trend evaluation
## Repository Structure

### 1. `revenue_analysis.sql`
Contains queries for:
- Total revenue calculation  
- Discounted vs non-discounted revenue  
- Discount dependency percentage  
- Average Order Value (AOV)

These queries support the **Executive Overview** section of the dashboard.

### 2. `discount_analysis.sql`
Contains queries for:
- Discount dependency by City  
- Discount dependency by Store Type  
- Top 5 cities contributing to discounted revenue  

These queries support the **Revenue Leakage Analysis** page of the dashboard.

### 3. `trend_analysis.sql`
Contains time-series queries for:
- Monthly total revenue  
- Monthly discounted revenue  
- Monthly non-discounted revenue  

These queries support the **Growth Intelligence** trend analysis.

### 4. `city_store_segmentation.sql`
Contains segmentation and contribution analysis for:
- Revenue contribution by City  
- Revenue contribution by Store Type  

These queries support the **Contribution Analysis** visuals in the dashboard.
