# Data Management & Visualization

This repository showcases projects and assignments from UMGC Data 620 (Data Management & Visualization). The coursework covers designing data warehouses, writing SQL queries, building ETL pipelines, ensuring data quality, and creating interactive dashboards.

## Projects

### SQL & ETL

- **Schema Design & ETL:** SQL scripts create dimension tables (customer, product, date) and a fact table for sales. The ETL script demonstrates extracting raw data, applying simple transformations, and loading it into the warehouse. These scripts illustrate best practices in dimensional modeling, indexing, and data quality measures【845546530106716†L3-L16】.
- **Sample Queries:** A set of SQL queries joins fact and dimension tables, calculates revenue by customer and region, and summarises monthly sales. These queries practice multi‑table joins, `GROUP BY`, and aggregation using SQL【845546530106716†L3-L16】.

### Visualization & Data Wrangling

- **Visualization Portfolio:** This folder contains exported Tableau dashboards and a summary README. The dashboards explore time‑series data, geographic patterns, and interactive story points, in line with the course’s emphasis on visualizing data and building effective data marts【845546530106716†L3-L16】.
- **Python Data Wrangling:** Example scripts demonstrate data cleaning, string operations, and iterating over rows to prepare data for analysis.

### Assignments

This repository also includes select assignments from Data 620 demonstrating the breadth of skills:

- **Text Analysis (MichaelA‑text‑analysis.docx):** An analytical report using Python to process NVIDIA’s shareholder letters. The assignment tokenises text, counts word frequencies, and visualises how themes like AI, gaming, and automotive shift between 2022 and 2023 letters using Tableau.
- **SQL Helpdesk Queries (Assignment 2.3):** A set of SQL queries for a helpdesk database. The assignment joins multiple tables (Tickets, Agents, Users) to compute average resolution time, identify agents handling the most tickets, and summarise ticket status counts.
- **SQL Order & Group (Assignment 5.2):** Queries that use `ORDER BY` and `GROUP BY` to analyse product orders and revenue by category. The assignment demonstrates sorting and grouping data and interpreting the results.
- **Employee Satisfaction Dashboard (Adams_C6.docx):** A Tableau dashboard summarising employee satisfaction across departments, reasons for dissatisfaction, geographic patterns, and correlations with bonuses. The narrative describes key insights drawn from the visualisation, such as the prevalence of low satisfaction in sales and the impact of work environment and salary.

## How to Use

- The `sql_etl` folder contains SQL scripts for building a small data warehouse and sample queries.
- The `visualization_portfolio` folder provides exported dashboards. The README within explains the storytelling behind each dashboard.
- The `assignments` folder holds original assignment documents for reference.

## Dataset & Libraries

Where possible, synthetic or publicly available datasets are used to illustrate concepts. SQL scripts are written in standard ANSI SQL; the dashboards were created in Tableau; Python scripts use libraries like pandas, NumPy, and Matplotlib for data wrangling and visualisation. The projects emphasise data governance, ETL, indexing, and data quality principles discussed in the course【845546530106716†L23-L38】.

## Results & Insights

These projects and assignments collectively demonstrate the ability to:

- Design a dimensional data model and implement it in a relational database.
- Build ETL pipelines that load data into fact and dimension tables while maintaining data quality.
- Write complex SQL queries with joins, grouping, and ordering to answer business questions.
- Develop interactive dashboards that communicate insights effectively to stakeholders.
- Apply Python for data cleaning, text analysis, and preparing data for visualisation.

Pinning this repository alongside the `predictive-modeling-portfolio` will provide potential employers or colleagues with a comprehensive view of your data management and visualization skills.
