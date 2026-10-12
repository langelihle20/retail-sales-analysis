# Retail Sales Analysis | SQL Project

A beginner data analytics project using SQL to analyse retail sales performance, identify revenue trends, evaluate product performance, and understand customer purchasing behaviour.

## Project Overview

This project explores a fictional retail business using relational data and SQL queries. The objective is to turn raw sales records into meaningful business insights that could support reporting and decision-making.

The project demonstrates foundational SQL skills, including data retrieval, aggregation, filtering, sorting, conditional logic, subqueries, and table joins.

## Business Objectives

- Calculate total revenue and average transaction value.
- Analyse revenue trends across months.
- Identify the highest- and lowest-revenue products.
- Compare revenue across product categories.
- Evaluate customer spending patterns.
- Identify customers who have not made any purchases.
- Practise extracting business insights from relational data.

## Tools & Technologies

- **SQL:** MySQL
- **Development environment:** DB Fiddle / MySQL-compatible SQL environment
- **Version control:** Git and GitHub
- **Visualisation:** Microsoft Power BI (companion dashboard in development)

## Dataset

The project uses fictional retail sales and customer data.

### Sales table

| Column | Description |
|---|---|
| `sale_id` | Unique identifier for each sale |
| `sale_date` | Date the transaction occurred |
| `customer_name` | Customer associated with the sale |
| `product` | Product purchased |
| `category` | Product category |
| `quantity` | Number of units purchased |
| `unit_price` | Price per unit in South African rand (ZAR) |

### Customers table

| Column | Description |
|---|---|
| `customer_id` | Unique customer identifier |
| `customer_name` | Customer name |
| `city` | Customer's city |

The dataset contains 12 sales transactions and 6 customer records. Five customers have made purchases, while one customer has no recorded sales.

## SQL Analysis

The project includes queries covering:

- **Data exploration:** Previewing and sorting sales records.
- **Revenue calculations:** Calculating revenue using quantity multiplied by unit price.
- **Aggregate functions:** Using `SUM()` and `AVG()` to calculate key metrics.
- **Grouping and ranking:** Comparing revenue by product, category, customer, and month.
- **Filtering:** Retrieving records that meet specific business conditions.
- **Conditional logic:** Using `CASE` statements to classify results.
- **Subqueries:** Answering questions using nested queries.
- **Joins:** Combining sales and customer data.
- **Customer analysis:** Using a `LEFT JOIN` to identify customers without purchases.

## Key Findings

Based on the sample dataset:

| Metric | Result |
|---|---:|
| Total revenue | R42,300 |
| Number of sales transactions | 12 |
| Average revenue per transaction | R3,525 |
| Highest-revenue product | Laptop |
| Laptop revenue | R25,500 |
| Highest-revenue month | February |
| February revenue | R15,450 |
| Leading product category | Electronics |
| Electronics revenue | R29,750 |

### Business Insights

1. **Product performance:** Laptops generated the highest revenue at R25,500, making them the strongest revenue contributor in this sample.
2. **Monthly performance:** February recorded the highest monthly revenue at R15,450, compared with R11,450 in January and R15,400 in March.
3. **Category performance:** Electronics generated R29,750, compared with R12,550 from Furniture.
4. **Customer analysis:** Five of the six recorded customers made at least one purchase. The remaining customer could be investigated further in a real retail environment.

These findings are illustrative because the dataset is small and fictional. They should not be treated as statistically representative of an actual retail business.

## Repository Structure

```text
retail-sales-analysis/
├── schema.sql
├── analysis_queries.sql
├── README.md
├── results_and_insights.md
└── power-bi/
    └── README.md
```

- `schema.sql` — Creates and populates the database tables.
- `analysis_queries.sql` — Contains SQL queries for the analysis.
- `results_and_insights.md` — Summarises the query results and business findings.
- `power-bi/README.md` — Documents the companion Power BI dashboard.

## How to Run the Project

1. Open a MySQL-compatible SQL environment, such as [DB Fiddle](https://www.db-fiddle.com/).
2. Select a compatible MySQL version.
3. Copy and execute the contents of `schema.sql` in the schema/setup section.
4. Copy and execute individual queries from `analysis_queries.sql` in the query section.
5. Review the results and compare them with the documented findings in `results_and_insights.md`.

Run the setup script before running the analysis queries.

## Skills Demonstrated

- SQL querying and data manipulation
- Relational database fundamentals
- Data aggregation and reporting
- Revenue and customer analysis
- Business problem-solving
- Data interpretation
- GitHub project documentation

## Future Improvements

- Add interactive Power BI dashboard screenshots and the report file where available.
- Introduce a larger dataset for more meaningful trend analysis.
- Calculate month-over-month revenue growth.
- Analyse repeat purchases and customer retention.
- Add product and category filters to the dashboard.
- Explore additional KPIs such as units sold and revenue contribution by product.

## Disclaimer

This project uses fictional data for educational and portfolio purposes. All customer names, transactions, and business findings are illustrative.

---

**Author:** [langelihle20](https://github.com/langelihle20)

