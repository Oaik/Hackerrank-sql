SELECT min(CITY), LENGTH(CITY) FROM STATION GROUP BY LENGTH(CITY) LIMIT 1;
SELECT min(CITY), LENGTH(CITY) FROM STATION GROUP BY LENGTH(CITY) ORDER BY LENGTH(CITY) DESC LIMIT 1;
