SELECT h.hacker_id, h.name, COUNT(*) as cnt
FROM hackers h
JOIN challenges c
on h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING 
    cnt = (SELECT MAX(temp1.cnt)
        from (SELECT COUNT(*) as cnt
             from Challenges
             group by hacker_id) temp1)
     OR 
        cnt in (SELECT t.cnt FROM
        (SELECT COUNT(*) as cnt FROM Challenges group by hacker_id) t
        group by t.cnt
        having COUNT(t.cnt) = 1)
ORDER BY cnt DESC, h.hacker_id