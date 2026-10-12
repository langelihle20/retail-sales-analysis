-- Retail Sales Analysis
-- Run these queries one at a time after running schema.sql.
-- Revenue means quantity * unit_price.

-- 1. Preview all sales
SELECT * FROM sales ORDER BY sale_date;

-- 2. Calculate revenue for each sale
SELECT
    sale_id,
    sale_date,
    customer_name,
    product,
    quantity,
    unit_price,
    quantity * unit_price AS revenue
FROM sales
ORDER BY sale_date;

-- 3. Total revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

-- 4. Revenue by product
SELECT
    product,
    SUM(quantity * unit_price) AS product_revenue
FROM sales
GROUP BY product
ORDER BY product_revenue DESC;

-- 5. Revenue by month
SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;

-- 6. Revenue by category
SELECT
    category,
    SUM(quantity * unit_price) AS category_revenue
FROM sales
GROUP BY category
ORDER BY category_revenue DESC;

-- 7. Average revenue per sale
SELECT AVG(quantity * unit_price) AS average_transaction_value
FROM sales;

-- 8. Total spending by customer
SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC;

-- 9. Customer spending with city (INNER JOIN)
SELECT
    customers.customer_name,
    customers.city,
    SUM(sales.quantity * sales.unit_price) AS total_spent
FROM customers
INNER JOIN sales
    ON customers.customer_name = sales.customer_name
GROUP BY customers.customer_id, customers.customer_name, customers.city
ORDER BY total_spent DESC;

-- 10. All customers and number of sales (LEFT JOIN)
-- COUNT(sales.sale_id) returns zero for customers with no matching sale.
SELECT
    customers.customer_name,
    customers.city,
    COUNT(sales.sale_id) AS number_of_sales
FROM customers
LEFT JOIN sales
    ON customers.customer_name = sales.customer_name
GROUP BY customers.customer_id, customers.customer_name, customers.city
ORDER BY number_of_sales ASC, customers.customer_name;

-- 11. Customers who have never purchased
SELECT
    customers.customer_name,
    customers.city
FROM customers
LEFT JOIN sales
    ON customers.customer_name = sales.customer_name
WHERE sales.sale_id IS NULL;

-- 12. Sales with transaction revenue above the average transaction revenue
SELECT
    sale_id,
    customer_name,
    product,
    quantity * unit_price AS revenue
FROM sales
WHERE quantity * unit_price > (
    SELECT AVG(quantity * unit_price)
    FROM sales
)
ORDER BY revenue DESC;

-- 13. Classify each sale by revenue
SELECT
    sale_id,
    customer_name,
    product,
    quantity * unit_price AS revenue,
    CASE
        WHEN quantity * unit_price >= 5000 THEN 'High'
        WHEN quantity * unit_price >= 1000 THEN 'Medium'
        ELSE 'Low'
    END AS sales_level
FROM sales
ORDER BY revenue DESC;

-- 14. Customers spending above the average customer total
SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM sales
GROUP BY customer_name
HAVING SUM(quantity * unit_price) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(quantity * unit_price) AS customer_total
        FROM sales
        GROUP BY customer_name
    ) AS customer_spending
)
ORDER BY total_spent DESC;
