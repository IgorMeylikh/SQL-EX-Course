-- � �������������, ��� ������ � ������ ����� �� ������ ������ ������ ����������� ������������ ����� ��� (��������� ������ � �������� �������� ������� code), 
-- ��������� �������� �������, � ������� ������� ������ �� ������ ���� ���������� �������� ����� ��������������� ���� ������.
�����: point, date, ��������� ������ ������ �� ���� (out), ��������� ������ ������ �� ���� (inc). ������������� �������� ������� ��������������� (NULL). 
SELECT point, [date], SUM(outs), SUM(incs) FROM (
SELECT point, [date], SUM(out) AS outs, null incs FROM Outcome GROUP BY point, [date] 
UNION
SELECT point, [date], null, SUM(inc) FROM Income GROUP BY point, [date]
) temp_table GROUP BY point, [date]

