-- Retail Sales Analysis
-- Database: MySQL 8+ / MySQL 9
-- Run this script first in your SQL editor's schema/setup section.

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Thabo', 'Johannesburg'),
(2, 'Lerato', 'Soweto'),
(3, 'Sipho', 'Sandton'),
(4, 'Ayanda', 'Roodepoort'),
(5, 'Zanele', 'Midrand'),
(6, 'Nandi', 'Midrand');

INSERT INTO sales
    (sale_id, sale_date, customer_name, product, category, quantity, unit_price)
VALUES
(1,  '2026-01-05', 'Thabo',  'Laptop',       'Electronics', 1, 8500.00),
(2,  '2026-01-07', 'Lerato', 'Mouse',        'Electronics', 2,  250.00),
(3,  '2026-01-10', 'Sipho',  'Office Chair', 'Furniture',   1, 1800.00),
(4,  '2026-01-12', 'Thabo',  'Keyboard',     'Electronics', 1,  650.00),
(5,  '2026-02-02', 'Ayanda', 'Desk',         'Furniture',   1, 3200.00),
(6,  '2026-02-05', 'Lerato', 'Laptop',       'Electronics', 1, 8500.00),
(7,  '2026-02-08', 'Sipho',  'Mouse',        'Electronics', 3,  250.00),
(8,  '2026-02-14', 'Zanele', 'Office Chair', 'Furniture',   2, 1800.00),
(9,  '2026-03-01', 'Ayanda', 'Keyboard',     'Electronics', 2,  650.00),
(10, '2026-03-04', 'Thabo',  'Desk',         'Furniture',   1, 3200.00),
(11, '2026-03-09', 'Zanele', 'Laptop',       'Electronics', 1, 8500.00),
(12, '2026-03-15', 'Lerato', 'Office Chair', 'Furniture',   1, 1800.00);
