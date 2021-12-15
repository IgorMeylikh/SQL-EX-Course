-- Ќайдите пары моделей PC, имеющих одинаковые скорость и RAM. 
-- ¬ результате кажда€ пара указываетс€ только один раз, т.е. (i,j), но не (j,i),
-- ѕор€док вывода: модель с большим номером, модель с меньшим номером, скорость и RAM. 
SELECT distinct pc1.model, pc2.model, pc1.speed, pc1.ram
FROM pc AS pc1, pc AS pc2
WHERE pc1.model>pc2.model AND pc1.speed=pc2.speed AND pc1.ram=pc2.ram
