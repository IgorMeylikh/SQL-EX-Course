-- ��� ������� �������������, �������� ������ � ������� Laptop, ������� ������� ������ ������ ����������� �� ��-���������.
-- �������: maker, ������� ������ ������. 
SELECT prod.maker, AVG(l.screen) AS screen
FROM Product AS prod JOIN Laptop AS l ON prod.model = l.model
GROUP BY prod.maker


