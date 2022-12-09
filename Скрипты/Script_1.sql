--- Проверяем все нужные для решения таблицы, чтобы было видно к каким таблицам привязать данные: 
SELECT * FROM contract c 
SELECT * FROM executor e 
SELECT * FROM employees e2 
SELECT * FROM department d 

---Решение:
SELECT e2.name, e.contract_id 
FROM employees e2 
JOIN department d 
ON e2.department_id=d.id 
JOIN executor e 
ON e2.id =tab_no
JOIN contract c 
ON contract_id=c.id 
WHERE d.name ='Logistic'

