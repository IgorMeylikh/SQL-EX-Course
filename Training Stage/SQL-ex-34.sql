-- По Вашингтонскому международному договору от начала 1922 г. запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. 
-- Укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом спуска на воду). 
-- Вывести названия кораблей. 
SELECT name 
FROM Ships, Classes
WHERE Classes.type = 'bb' AND Ships.launched >= 1922 AND Ships.launched IS NOT NULL AND Classes.displacement > 35000 AND Ships.class = Classes.class
GROUP BY name