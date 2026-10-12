Retail Sales Analysis (SQL)
Project overview by Langelihle Ndlovu
Database: MySQL 9 (also compatible with MySQL 8+)  
Environment: Browser-based SQL editor such as DB Fiddle  
Currency: South African rand (R)  
Data: 12 sales transactions, 5 purchasing customers, and 1 customer with no purchases.
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

