---Проверяем все таблицы, которые нужны для решения задачи:
SELECT * FROM contract c 
SELECT * FROM executor e 
SELECT * FROM employees e2 

---Решение:
SELECT e2.name, AVG (c.amount)
FROM employees e2 
JOIN executor e 
ON e2.id =tab_no
JOIN contract c 
ON e.contract_id = c.id
GROUP BY e2.name 
HAVING e2.name = 'Ivan Ivanov'


SELECT AVG (c.amount)
FROM employees e2 
JOIN executor e 
ON e2.id =tab_no
JOIN contract c 
ON e.contract_id = c.id
GROUP BY e2.name 
HAVING e2.name = 'Ivan Ivanov'
