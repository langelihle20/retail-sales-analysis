# Results and Business Insights

These results are based on the fictional 12-transaction dataset in `schema.sql`.

## Summary metrics
- **Total revenue:** R42,300.00
- **Number of sales records:** 12
- **Average revenue per sale record:** R3,525.00
- **Registered customers:** 6
- **Customers with purchases:** 5
- **Customers without purchases:** 1 (Nandi)

## Revenue by product
| Product | Revenue |
|---|---:|
| Laptop | R25,500.00 |
| Office Chair | R7,200.00 |
| Desk | R6,400.00 |
| Keyboard | R1,950.00 |
| Mouse | R1,250.00 |

**Insight:** Laptops are the largest revenue contributor in this sample, generating R25,500.

## Revenue by month
| Month | Revenue |
|---|---:|
| January 2026 | R11,450.00 |
| February 2026 | R15,450.00 |
| March 2026 | R15,400.00 |

**Insight:** February had the highest revenue, narrowly ahead of March.

## Revenue by category
| Category | Revenue |
|---|---:|
| Electronics | R29,750.00 |
| Furniture | R12,550.00 |

**Insight:** Electronics generated more revenue than Furniture in this sample.

## Customer spending
| Customer | Total spent |
|---|---:|
| Thabo | R12,350.00 |
| Zanele | R12,100.00 |
| Lerato | R10,800.00 |
| Ayanda | R4,500.00 |
| Sipho | R2,550.00 |

**Insight:** Thabo is the highest-spending customer in the sample. Nandi has no purchases and can be identified with a `LEFT JOIN` and `WHERE sales.sale_id IS NULL`.

## Caveats
- This is a small fictional dataset, so the results are illustrative and should not be treated as evidence about a real business.
- Average transaction value is calculated per row in the `sales` table. Each row is treated as one sale record.
- The sample stores customer names in `sales` rather than customer IDs; a production schema should use stable keys.
