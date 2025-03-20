WITH MonthlySales AS (
    SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(sale_amount) AS total_sales
    FROM Sales
    GROUP BY month
)
SELECT * FROM MonthlySales;