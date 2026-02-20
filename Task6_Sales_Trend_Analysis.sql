USE sales_analysis;

DROP TABLE IF EXISTS online_sales;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO online_sales VALUES
(1, '2023-01-05', 500.00, 101),
(2, '2023-01-15', 700.00, 102),
(3, '2023-02-10', 300.00, 103),
(4, '2023-02-18', 900.00, 101),
(5, '2023-03-02', 400.00, 104);
SELECT * FROM online_sales;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;