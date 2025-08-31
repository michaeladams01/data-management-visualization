-- sample_queries.sql
-- Example SQL queries demonstrating multi-table joins, GROUP BY, and data aggregation.

-- 1. Join dimension tables with fact table to get detailed sales records
SELECT f.sale_id, c.customer_name, p.product_name, d.date_id, f.quantity, f.revenue
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
JOIN dim_product p ON f.product_id = p.product_id
JOIN dim_date d ON f.date_id = d.date_id;

-- 2. Compute total revenue by customer and region
SELECT c.region, c.customer_name, SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.region, c.customer_name
ORDER BY total_revenue DESC;

-- 3. Generate monthly sales summary
SELECT d.year, d.month, SUM(f.quantity) AS total_units_sold, SUM(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;
