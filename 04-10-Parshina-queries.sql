/*������ �� ���������� ������ ������������*/
INSERT INTO user_app values (user_sequence.nextval, ?, ?, ?, 0, ?);

/*������ �� ���������� ������������(����������) ������������*/
INSERT INTO user_university values (user_university_sequence.nextval, ?, ?);

/*������ �� �������� ������������*/
DELETE FROM user_app WHERE user_app.id = ?;

/*������ �� ��������� ������������*/
UPDATE user_app SET full_name = ?, login = ?, password = ?, id_usergroup = ? WHERE id = ?;

/*������ �� ��������� ������������ ������������(����������)*/
UPDATE user_university SET id_university = ? WHERE id_user = ?;

/*������ �� ����������� ������������ � ����������*/
UPDATE user_app SET is_online = 1 WHERE id = ?;

/*������ �� �������������� ������������� � ����������*/
UPDATE user_app SET is_online = 0;

/*������ �� �������� ���� �������������*/
SELECT * FROM user_app;

/*������ �� �������� ����������� ������������*/
SELECT user_app.id, user_app.full_name, user_app.login, user_app.password, user_app.is_online, user_app.id_usergroup 
FROM user_app RIGHT JOIN user_university ON user_app.id = user_university.id_user WHERE user_university.id_university = ?;

/*������ �� �������� ������������ �� id*/
SELECT * FROM user_app WHERE user_app.id = ?;

/*������ �� �������� ������������ �� ������ � ������*/
SELECT * FROM user_app WHERE user_app.login = ? and user_app.password = ?;

/*������ �� �������� ������������� ������������*/
SELECT * FROM user_app WHERE user_app.is_online = 1;

/*������ �� ���������� ����� ������ ������������*/
INSERT INTO user_group values (user_group_sequence.nextval, ?);

/*������ �� �������� ������ ������������*/
DELETE FROM user_group WHERE user_group.id = ?;

/*������ �� ��������� ������ ������������*/
UPDATE user_group SET title = ? WHERE id = ?;

/*������ �� ��������� ���� ����� �������������*/
SELECT * FROM user_group;

/*������ �� ��������� ������ ������������ �� id*/
SELECT * FROM user_group WHERE user_group.id = ?;


/*������ �� ���������� ������ ������������*/
INSERT INTO university values (university_sequence.nextval, ?, ?, ?);

/*������ �� �������� ������������*/
DELETE FROM university WHERE university.id = ?;

/*������ �� ��������� ������������*/
UPDATE university SET title = ?, article = ?, adress = ? WHERE id = ?;

/*������ �� ��������� ���� �������������*/
SELECT * FROM university;

/*������ �� ��������� ������������*/
SELECT * FROM university WHERE university.id = ?;

/*������ �� ��������� ������������ ��� ����������*/
SELECT university.id, university.title, university.article, university.adress 
FROM user_university uu LEFT JOIN university ON uu.id_university = university.id 
WHERE uu.id_user = ?;

/*������ �� ���������� ������ ����������*/
INSERT INTO faculty values (faculty_sequence.nextval, ?, ?, ?);

/*������ �� �������� ����������*/
DELETE FROM faculty WHERE faculty.id = ?;

/*������ �� ��������� ����������*/
UPDATE faculty SET title = ?, article = ?, id_university = ? WHERE id = ?;

/*������ �� ��������� ���� �����������*/
SELECT * FROM faculty;

/*������ �� ��������� ����������� ������������*/
SELECT * FROM faculty WHERE faculty.id_university = ?;

/*������ �� ��������� ����������*/
SELECT * FROM faculty WHERE faculty.id = ?;

/*������ �� ���������� ����� �������*/
INSERT INTO department values (department_sequence.nextval, ?, ?, ?);

/*������ �� �������� �������*/
DELETE FROM department WHERE department.id = ?;

/*������ �� ��������� �������*/
UPDATE department SET title = ?, article = ?, id_faculty = ? WHERE id = ?;

/*������ �� ��������� ���� ������*/
SELECT * FROM department;

/*������ �� ��������� ������ ������������*/
SELECT department.id, department.title, department.article, department.id_faculty 
FROM department LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*������ �� ��������� �������*/
SELECT * FROM department WHERE department.id = ?;

/*������ �� ���������� ������ ������ ��������*/
INSERT INTO education_level values (education_level_sequence.nextval, ?);

/*������ �� �������� ������ ��������*/
DELETE FROM education_level WHERE education_level.id = ?;

/*������ �� ��������� ������ ��������*/
UPDATE education_level SET title = ? WHERE id = ?;

/*������ �� ��������� ���� ������� ��������*/
SELECT * FROM education_level;

/*������ �� ��������� ������ ��������*/
SELECT * FROM education_level WHERE education_level.id = ?;

/*������ �� ���������� ����� ����� ��������*/
INSERT INTO education_form values (education_form_sequence.nextval, ?);

/*������ �� �������� ����� ��������*/
DELETE FROM education_form WHERE education_form.id = ?;

/*������ �� ��������� ����� ��������*/
UPDATE education_form SET title = ? WHERE id = ?;

/*������ �� ��������� ���� ���� ��������*/
SELECT * FROM education_form;

/*������ �� ��������� ����� ��������*/
SELECT * FROM education_form WHERE education_form.id = ?;

/*������ �� ���������� ����� �������������*/
INSERT INTO specialty values (specialty_sequence.nextval, ?, ?, ?, ?);

/*������ �� �������� �������������*/
DELETE FROM specialty WHERE specialty.id = ?;

/*������ �� ��������� �������������*/
UPDATE specialty SET code = ?, title = ?, period = ?, id_level = ? WHERE id = ?;

/*������ �� ��������� ���� ��������������*/
SELECT * FROM specialty;

/*������ �� ��������� �������������*/
SELECT * FROM specialty WHERE specialty.id = ?;

/*������ �� ���������� ����� ������*/
INSERT INTO group_edu values (group_sequence.nextval, ?, ?, ?, ?);

/*������ �� �������� ������*/
DELETE FROM group_edu WHERE group_edu.id = ?;

/*������ �� ��������� ������*/
UPDATE group_edu SET code = ?, id_form = ?, id_specialty = ?, id_department = ? WHERE id = ?;

/*������ �� ��������� ���� ������*/
SELECT * FROM group_edu;

/*������ �� ��������� ����� ������������*/
SELECT group_edu.id, group_edu.code, group_edu.id_form, group_edu.id_specialty, group_edu.id_department 
FROM group_edu LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*������ �� ��������� ������*/
SELECT * FROM group_edu WHERE group_edu.id = ?;

/*������ �� ���������� ������ ���� �������*/
INSERT INTO decree_type values (decree_type_sequence.nextval, ?);

/*������ �� �������� ���� �������*/
DELETE FROM decree_type WHERE decree_type.id = ?;

/*������ �� ��������� ���� �������*/
UPDATE decree_type SET title = ? WHERE id = ?;

/*������ �� ��������� ���� ����� ��������*/
SELECT * FROM decree_type;

/*������ �� ��������� ���� �������*/
SELECT * FROM decree_type WHERE decree_type.id = ?;

/*������ �� ���������� �������*/
INSERT INTO decree values (decree_sequence.nextval, ?, ?, 0, ?, ?);

/*������ �� �������� �������*/
DELETE FROM decree WHERE decree.id = ?;

/*������ �� ��������� �������*/
UPDATE decree SET title = ? WHERE id = ?;

/*������ �� ���������� �������*/
UPDATE decree SET is_signed = 1 WHERE id = ?;

/*������ �� ��������� ���� ��������*/
SELECT * FROM decree;

/*������ �� ��������� �������� ������������*/
SELECT decree.id, decree_type.title, decree.open_date, decree.is_signed, decree.id_type, decree.id_group 
FROM decree LEFT JOIN decree_type ON decree.id_type = decree_type.id 
LEFT JOIN group_edu ON decree.id_group = group_edu.id 
LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*������ �� ��������� �������*/
SELECT * FROM decree WHERE decree.id = ?;

/*������ �� ���������� ������ ��������*/
INSERT INTO student values (student_sequence.nextval, ?, ?, ?, ?, TO_DATE(?, 'yyyy-mm-dd'), ?);

/*������ �� �������� ��������*/
DELETE FROM student WHERE student.id = ?;

/*������ �� �������� �������*/
UPDATE student SET first_name = ?, second_name = ?, patronymic = ?, sex = ?, birth_date = TO_DATE(?, 'yyyy-mm-dd') WHERE id = ?;

/*������ �� ��������� ���� ��������� ��������������� �� �������*/
SELECT * FROM student ORDER BY student.id_group;

/*������ �� ��������� ��������� ������������ ��������������� �� �������*/
SELECT student.id, student.first_name, student.second_name, student.patronymic, student.sex, student.birth_date, student.id_group 
FROM student LEFT JOIN group_edu ON student.id_group = group_edu.id 
LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?
ORDER BY student.id_group;

/*������ �� ��������� ��������*/
SELECT * FROM student WHERE student.id = ?;

/*������ �� ��������� ��������� �� �������*/
SELECT student.id, student.first_name, student.second_name, student.patronymic, student.sex, student.birth_date, student.id_group
FROM student RIGHT JOIN student_decree ON student.id = student_decree.id_student
WHERE student_decree.id_decree = ?;

/*������ �� ��������� id ���������� ��������*/
SELECT MAX(student.id) FROM student;































