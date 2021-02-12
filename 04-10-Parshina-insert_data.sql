/*���������� ����� �������������*/
INSERT INTO user_group values (1, '�������������');
INSERT INTO user_group values (2, '���������');
INSERT INTO user_group values (3, '���������');

/*���������� �������������*/
INSERT INTO user_app values (1, '������� ���� ���������', 'admin', 'admin1', 0, 1);
INSERT INTO user_app values (2, '������� ���� ���������', 'moderator', 'moderator1', 0, 2);
INSERT INTO user_app values (3, '������� ���� ���������', 'developer1', 'developer1', 0, 3);
INSERT INTO user_app values (4, '������� ���� ���������', 'developer2', 'developer2', 0, 3);

/*���������� �������������*/
INSERT INTO university values (1, '��������� ��������������� ���������������� ����������� ��. �.�. ������', '�����', '390005, �. ������, ��. ��������, 59/1');
INSERT INTO university values (2, '��������� ��������������� �����������', '���', '�.������');

/*���������� �����������*/
INSERT INTO faculty values (1, '��������� �������������� �������', '���', 1);
INSERT INTO faculty values (2, '��������� �����������', '��', 1);
INSERT INTO faculty values (3, '��������� ������������ � ����������������', '���', 1);
INSERT INTO faculty values (4, '���������-������������� ���������', '���', 1);
INSERT INTO faculty values (5, '��������� ���������� � �������������� ���������� � ����������', '�����', 1);

/*���������� �������� ���������� ����������� � �����������*/
INSERT INTO user_university values (1, 3, 1);
INSERT INTO user_university values (2, 4, 2);

/*���������� ������*/
INSERT INTO department values (1, '������� ������������ �����������', '��', 2);
INSERT INTO department values (2, '������� ����������� ��������', '��', 2);
INSERT INTO department values (3, '������� ���������������� � ����� ������������', '���', 3);
INSERT INTO department values (4, '������� ���������������� ������', '��', 3);
INSERT INTO department values (5, '������� ���������� � �������������� ���������� � ����������', '��', 5);
INSERT INTO department values (6, '������� �������������-������������� � �������������� �������', '��', 5);
INSERT INTO department values (7, '������� ������ ������������������� �������������� �������������� �������', '����', 1);
INSERT INTO department values (8, '������� �������������� � ���������� ����������', '���', 1);
INSERT INTO department values (9, '������� ����������������, �������������� � �������������� ����������', '����', 4);
INSERT INTO department values (10, '������� ���������, ����������� � ����������� ������������', '����', 4);

/*���������� ���� ��������*/
INSERT INTO education_form values (1, '�����');
INSERT INTO education_form values (2, '������');
INSERT INTO education_form values (3, '����-�������');
INSERT INTO education_form values (4, '�������������');

/*���������� ������� ��������*/
INSERT INTO education_level values (1, '�����������');
INSERT INTO education_level values (2, '�����������');
INSERT INTO education_level values (3, '�����������');
INSERT INTO education_level values (4, '�����������');

/*���������� ��������������*/
INSERT INTO specialty values (1, '09.03.04', '����������� ���������', 4, 1);
INSERT INTO specialty values (2, '09.03.03', '���������� ����������', 4, 1);
INSERT INTO specialty values (3, '09.04.04', '����������� ���������', 2, 2);
INSERT INTO specialty values (4, '09.04.03', '���������� ����������', 2, 2);
INSERT INTO specialty values (5, '01.03.02', '����������� ���������� � �����������', 4, 1);
INSERT INTO specialty values (6, '27.03.04', '���������� � ����������� ��������', 4, 1);

/*���������� ������� �����*/
INSERT INTO group_edu values (1, '643', 1, 1, 8);
INSERT INTO group_edu values (2, '6413', 1, 1, 8);
INSERT INTO group_edu values (3, '�643', 1, 3, 8);
INSERT INTO group_edu values (4, '644', 1, 2, 8);
INSERT INTO group_edu values (5, '�644', 1, 4, 8);

/*���������� ���������*/
INSERT INTO student values (1, '�������', '����', '���������', '�', TO_DATE('09.05.1999','dd.mm.yyyy'), 1);
INSERT INTO student values (2, '������', '����', '��������', '�', TO_DATE('05.11.1998','dd.mm.yyyy'), 1);
INSERT INTO student values (3, '������', '�������', '��������', '�', TO_DATE('25.07.1997','dd.mm.yyyy'), 1);
INSERT INTO student values (4, '�������', '�������', '�����������', '�', TO_DATE('19.03.1996','dd.mm.yyyy'), 1);
INSERT INTO student values (5, '�������', '���������', '����������', '�', TO_DATE('23.09.1997','dd.mm.yyyy'), 1);
INSERT INTO student values (6, '���������', '�������', '�����������', '�', TO_DATE('08.01.1995','dd.mm.yyyy'), 1);

/*���������� ����� ��������*/
INSERT INTO decree_type values (1, '����������');
INSERT INTO decree_type values (2, '����������');
INSERT INTO decree_type values (3, '�������');

/*���������� ��������*/
INSERT INTO decree values (1, '���������� ��������� � ������ 643', SYSDATE, 0, 1, 1);
INSERT INTO decree values (2, '���������� ��������� �� ������ 643', SYSDATE, 0, 2, 1);
INSERT INTO decree values (3, '������� ��������� � ������ 6413', SYSDATE, 0, 3, 2);

/*���������� ��������� �� ��������*/
INSERT INTO student_decree values (student_decree_sequence.nextval, 1, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 2, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 3, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 4, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 5, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 6, 1);

INSERT INTO student_decree values (student_decree.nextval, ?, ?)











