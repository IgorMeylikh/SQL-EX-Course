-- ������� �����, ��� � ������ ��� �������� �� ������� Ships, ������� �� ����� 10 ������.  
SELECT Ships.class, Ships.name, Classes.country
FROM Ships INNER JOIN Classes
ON Ships.class = Classes.class
WHERE Ships.class IN (SELECT Classes.class FROM Classes WHERE numGuns >= 10)



