SELECT CONCAT(name, "(", left(occupation, 1) , ')') as name FROM OCCUPATIONS ORDER BY name;
SELECT CONCAT("There are a total of ", COUNT(1) ," ",  LOWER(occupation) , "s.") FROM OCCUPATIONS GROUP BY occupation ORDER BY COUNT(1) ASC;