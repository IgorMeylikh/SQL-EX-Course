-- �� �������������� �������������� �������� �� ������ 1922 �. ����������� ������� �������� ������� �������������� ����� 35 ���.����. 
-- ������� �������, ���������� ���� ������� (��������� ������ ������� c ��������� ����� ������ �� ����). 
-- ������� �������� ��������. 
SELECT name 
FROM Ships, Classes
WHERE Classes.type = 'bb' AND Ships.launched >= 1922 AND Ships.launched IS NOT NULL AND Classes.displacement > 35000 AND Ships.class = Classes.class
GROUP BY name