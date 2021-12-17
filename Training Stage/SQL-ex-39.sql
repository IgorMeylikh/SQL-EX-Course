-- Ќайдите корабли, `сохранившиес€ дл€ будущих сражений`; т.е. выведенные из стро€ в одной битве (damaged), 
-- они участвовали в другой, произошедшей позже. 
WITH b_s AS
(SELECT o.ship, b.name, b.date, o.result
FROM outcomes o
LEFT JOIN battles b ON o.battle = b.name )
SELECT DISTINCT a.ship FROM b_s a
WHERE UPPER(a.ship) IN
(SELECT UPPER(ship) FROM b_s b
WHERE b.date < a.date AND b.result = 'damaged')
