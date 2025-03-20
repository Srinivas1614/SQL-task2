SELECT employee_id, sale_amount 
FROM Sales 
WHERE sale_amount > (SELECT AVG(sale_amount) FROM Sales);