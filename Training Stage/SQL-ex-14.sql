-- Ќайдите класс, им€ и страну дл€ кораблей из таблицы Ships, имеющих не менее 10 орудий.  
SELECT Ships.class, Ships.name, Classes.country
FROM Ships INNER JOIN Classes
ON Ships.class = Classes.class
WHERE Ships.class IN (SELECT Classes.class FROM Classes WHERE numGuns >= 10)



