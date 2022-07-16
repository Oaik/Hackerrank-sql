SELECT f1.x, f1.y 
from Functions f1
JOIN Functions f2
ON f1.x = f2.y AND f1.y = f2.x
GROUP BY f1.x, f1.y
HAVING f1.x < f1.y OR COUNT(f1.x) > 1
ORDER BY f1.x