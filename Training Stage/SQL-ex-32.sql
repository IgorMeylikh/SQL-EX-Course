-- Одной из характеристик корабля является половина куба калибра его главных орудий (mw). 
-- С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, у которой есть корабли в базе данных. 
SELECT country, CAST(AVG(POWER(bore, 3) /2) AS DECIMAL(6, 2)) AS weight FROM (
SELECT country, bore, name
FROM Classes 
JOIN Ships
ON Classes.class = ships.class
UNION
SELECT country, bore, ship
FROM Classes 
JOIN Outcomes
ON class = ship
WHERE ship NOT IN (SELECT name FROM ships)
) temp_table
GROUP BY country

