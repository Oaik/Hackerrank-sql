SELECT IF(g.grade >= 8, s.name, "NULL"), g.grade, s.marks from students s
JOIN grades g
on s.marks between g.min_mark and g.max_mark
ORDER BY g.grade DESC, name