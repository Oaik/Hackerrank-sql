set @r1 = 0, @r2 = 0, @r3 = 0, @r4 = 0;
SELECT min(Doctor), min(Professor), min(Singer), min(Actor)
FROM (
    SELECT case 
    WHEN Occupation='Doctor' then (@r1:=@r1+1)
    WHEN Occupation='Professor' then (@r2:=@r2+1)
    WHEN Occupation='Singer' then (@r3:=@r3+1)
    WHEN Occupation='Actor' then (@r4:=@r4+1)
    end as rowNumber,
    case WHEN Occupation='Doctor' then name END AS Doctor,
    case WHEN Occupation='Professor' then name END AS Professor,
    case WHEN Occupation='Singer' then name END AS Singer,
    case WHEN Occupation='Actor' then name END AS Actor
    from OCCUPATIONS
    ORDER BY name
) temp
GROUP BY rowNumber