---Таблицы, которые нужны для решения:
SELECT * FROM customer_new cn 
SELECT * FROM contract c

---Решение:
SELECT customer_name , AVG (amount) 
FROM contract c
JOIN customer_new cn 
ON c.customer_id =cn.id 
GROUP BY customer_id ORDER BY AVG (amount) ASC LIMIT 1


