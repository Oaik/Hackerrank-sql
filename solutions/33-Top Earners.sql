SELECT MAX(months * salary), COUNT(DISTINCT employee_id)
FROM Employee GROUP BY (months * salary)
ORDER BY (months * salary) DESC LIMIT 1