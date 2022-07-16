SELECT s.hacker_id , h.name
FROM submissions s
JOIN hackers h
ON s.hacker_id = h.hacker_id
JOIN challenges c
ON s.challenge_id = c.challenge_id
JOIN difficulty d
ON c.difficulty_level = d.difficulty_level
where d.score = s.score
GROUP BY s.hacker_id, h.name
HAVING count(s.hacker_id) > 1
ORDER BY count(s.hacker_id) DESC, s.hacker_id asc 
