SELECT employee_id, sale_amount,
       SUM(sale_amount) OVER (PARTITION BY employee_id) AS total_sales,
       RANK() OVER (ORDER BY SUM(sale_amount) OVER (PARTITION BY employee_id) DESC) AS sales_rank
FROM Sales;