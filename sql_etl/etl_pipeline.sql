-- etl_pipeline.sql
-- Example ETL pipeline script for extracting data from source tables, transforming it, and loading into the data warehouse fact table.

-- Step 1: Extract data from operational sources (example using INSERT INTO SELECT)
INSERT INTO dim_customer (customer_id, customer_name, region)
SELECT customer_id, customer_name, region FROM source_customers;

INSERT INTO dim_product (product_id, product_name, category)
SELECT product_id, product_name, category FROM source_products;

INSERT INTO dim_date (date_id, year, quarter, month, day)
SELECT DISTINCT order_date, EXTRACT(YEAR FROM order_date), EXTRACT(QUARTER FROM order_date),
       EXTRACT(MONTH FROM order_date), EXTRACT(DAY FROM order_date)
FROM source_orders;

-- Step 2: Transform data (example: derive revenue)
-- For simplicity, no additional transforms here.

-- Step 3: Load data into fact table
INSERT INTO fact_sales (sale_id, customer_id, product_id, date_id, quantity, revenue)
SELECT o.order_id, o.customer_id, oi.product_id, o.order_date, oi.quantity, oi.quantity * oi.unit_price
FROM source_orders o
JOIN source_order_items oi ON o.order_id = oi.order_id;
