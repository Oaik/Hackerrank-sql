SELECT id, age, coins_needed, power FROM Wands as t
JOIN Wands_Property as s
ON t.code = s.code
WHERE s.is_evil = 0 AND t.coins_needed = (
    select min(coins_needed) from Wands as t1 JOIN Wands_Property as s1
    on t1.code = s1.code
    WHERE t1.power = t.power AND s1.age = s.age
)
ORDER BY t.power DESC, s.age DESC