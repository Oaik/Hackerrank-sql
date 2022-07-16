
SELECT h.hacker_id, h.name, SUM(t.score) as score FROM hackers h
JOIN ((
SElECT hacker_id, challenge_id, MAX(score) as score FROM submissions
GROUP BY hacker_id, challenge_id) t)
ON h.hacker_id = t.hacker_id
GROUP BY h.hacker_id, h.name
HAVING score != 0
ORDER BY score desc, hacker_id