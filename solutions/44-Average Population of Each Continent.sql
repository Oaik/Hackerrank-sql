SELECT Country.Continent, floor(AVG(City.Population)) FROM COUNTRY
JOIN CITY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY Continent