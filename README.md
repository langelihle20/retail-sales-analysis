Retail Sales Analysis (SQL)
Project overview
This beginner-friendly portfolio project uses a fictional South African retailer's sales data to answer practical business questions with SQL. It demonstrates data retrieval, calculated fields, aggregation, filtering, joins, subqueries, and conditional logic.
Database: MySQL 9 (also compatible with MySQL 8+)  
Environment: Browser-based SQL editor such as DB Fiddle  
Currency: South African rand (R)  
Data: 12 sales transactions, 5 purchasing customers, and 1 customer with no purchases.
> All names, transactions, and figures in this project are fictional and are provided for learning purposes.
Business questions
What is the total revenue?
Which products and categories generate the most revenue?
How does revenue compare month by month?
What is the average transaction value?
Which customers spend the most?
Which registered customers have never purchased?
Which sales are above the average transaction revenue?
How can sales be grouped into High, Medium, and Low revenue levels?
Repository contents
`schema.sql` — creates and populates the `customers` and `sales` tables.
`analysis_queries.sql` — contains 14 analysis queries, with comments explaining each task.
`results_and_insights.md` — key findings and interpretation of the sample data.
How to run the project in a browser
Open DB Fiddle.
Select MySQL 9 (or a compatible MySQL version).
Copy the full contents of `schema.sql` into the Schema SQL panel and run the setup.
Copy one query at a time from `analysis_queries.sql` into the Query SQL panel and run it.
Review the results and compare them with `results_and_insights.md`.
Important: `schema.sql` starts by dropping tables with these names so the project can be recreated cleanly. Run it only in this learning project's isolated database, not in a database containing data you need to keep.
SQL skills demonstrated
`SELECT`, `WHERE`, `ORDER BY`
Calculated columns and aliases
Aggregate functions: `SUM`, `AVG`, `COUNT`
`GROUP BY` and `HAVING`
`INNER JOIN` and `LEFT JOIN`
`IS NULL` to find customers without matching sales
Subqueries
`CASE` expressions
Date grouping with `DATE_FORMAT`
Data model
`customers`
Column	Meaning
`customer_id`	Unique customer identifier
`customer_name`	Customer name used to match sales in this beginner dataset
`city`	Customer's city
`sales`
Column	Meaning
`sale_id`	Unique transaction/line identifier
`sale_date`	Date of sale
`customer_name`	Customer who made the purchase
`product`	Product sold
`category`	Product category
`quantity`	Number of units sold
`unit_price`	Price per unit in rand
Design note: For a production database, sales should normally reference `customer_id` as a foreign key rather than relying on customer names. Names are used here to keep the join logic accessible to beginners.
Key findings
See `results_and_insights.md` for the calculated results and business interpretation.
Possible next improvements
Add a `products` table and link sales to products by `product_id`.
Add a `customer_id` foreign key to sales.
Add date filters for custom reporting periods.
Build a dashboard in Excel or Power BI using the query results.
Add more sample data and compare sales by city.
Author
Created as a SQL learning and portfolio project.
