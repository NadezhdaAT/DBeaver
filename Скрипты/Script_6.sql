--- Выводим таблицы, необходимые для решения, чтобы проверить связи с таблицами данных:
SELECT * FROM department d 
SELECT * FROM employees e 
SELECT * FROM executor e2 
SELECT * FROM contract c 

---Решение:
SELECT d.name, SUM (c.amount) 
FROM department d
JOIN employees e
ON d.id=department_id
JOIN executor e2
ON e.id=tab_no
JOIN contract c 
ON contract_id = c.id 
GROUP BY d.name  ORDER BY SUM (c.amount) DESC LIMIT 1



