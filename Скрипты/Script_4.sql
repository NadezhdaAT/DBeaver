SELECT amount , COUNT(*) FROM contract c3 GROUP BY amount HAVING COUNT(*)>1