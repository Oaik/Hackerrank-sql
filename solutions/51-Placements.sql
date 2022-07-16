SELECT s1.name FROM
friends f 
JOIN packages p1
ON f.friend_id = p1.id 
JOIN packages p2
ON f.id = p2.id 
JOIN students s1
on s1.id = f.id
WHERE p1.salary > p2.salary
ORDER BY p1.salary