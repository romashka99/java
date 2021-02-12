/*Запрос на добавление нового пользователя*/
INSERT INTO user_app values (user_sequence.nextval, ?, ?, ?, 0, ?);

/*Запрос на добавление пользователю(сотруднику) университета*/
INSERT INTO user_university values (user_university_sequence.nextval, ?, ?);

/*Запрос на удаление пользователя*/
DELETE FROM user_app WHERE user_app.id = ?;

/*Запрос на изменение пользователя*/
UPDATE user_app SET full_name = ?, login = ?, password = ?, id_usergroup = ? WHERE id = ?;

/*Запрос на изменение университета пользователя(сотрудника)*/
UPDATE user_university SET id_university = ? WHERE id_user = ?;

/*Запрос на логинивание пользователя в приложении*/
UPDATE user_app SET is_online = 1 WHERE id = ?;

/*Запрос на разлогинивание пользователей в приложении*/
UPDATE user_app SET is_online = 0;

/*Запрос на плучение всех пользователей*/
SELECT * FROM user_app;

/*Запрос на плучение сотрудников университета*/
SELECT user_app.id, user_app.full_name, user_app.login, user_app.password, user_app.is_online, user_app.id_usergroup 
FROM user_app RIGHT JOIN user_university ON user_app.id = user_university.id_user WHERE user_university.id_university = ?;

/*Запрос на плучение пользователя по id*/
SELECT * FROM user_app WHERE user_app.id = ?;

/*Запрос на плучение пользователя по логину и паролю*/
SELECT * FROM user_app WHERE user_app.login = ? and user_app.password = ?;

/*Запрос на плучение залогининного пользователя*/
SELECT * FROM user_app WHERE user_app.is_online = 1;

/*Запрос на добавление новой группы пользователя*/
INSERT INTO user_group values (user_group_sequence.nextval, ?);

/*Запрос на удаление группы пользователя*/
DELETE FROM user_group WHERE user_group.id = ?;

/*Запрос на изменение группы пользователя*/
UPDATE user_group SET title = ? WHERE id = ?;

/*Запрос на получение всех групп пользователей*/
SELECT * FROM user_group;

/*Запрос на получение группы пользователя по id*/
SELECT * FROM user_group WHERE user_group.id = ?;


/*Запрос на добавление нового университета*/
INSERT INTO university values (university_sequence.nextval, ?, ?, ?);

/*Запрос на удаление университета*/
DELETE FROM university WHERE university.id = ?;

/*Запрос на изменение университета*/
UPDATE university SET title = ?, article = ?, adress = ? WHERE id = ?;

/*Запрос на получение всех университетов*/
SELECT * FROM university;

/*Запрос на получение университета*/
SELECT * FROM university WHERE university.id = ?;

/*Запрос на получение университета для сотрудника*/
SELECT university.id, university.title, university.article, university.adress 
FROM user_university uu LEFT JOIN university ON uu.id_university = university.id 
WHERE uu.id_user = ?;

/*Запрос на добавление нового факультета*/
INSERT INTO faculty values (faculty_sequence.nextval, ?, ?, ?);

/*Запрос на удаление факультета*/
DELETE FROM faculty WHERE faculty.id = ?;

/*Запрос на изменение факультета*/
UPDATE faculty SET title = ?, article = ?, id_university = ? WHERE id = ?;

/*Запрос на получение всех факультетов*/
SELECT * FROM faculty;

/*Запрос на получение факультетов университета*/
SELECT * FROM faculty WHERE faculty.id_university = ?;

/*Запрос на получение факультета*/
SELECT * FROM faculty WHERE faculty.id = ?;

/*Запрос на добавление новой кафедры*/
INSERT INTO department values (department_sequence.nextval, ?, ?, ?);

/*Запрос на удаление кафедры*/
DELETE FROM department WHERE department.id = ?;

/*Запрос на изменение кафедры*/
UPDATE department SET title = ?, article = ?, id_faculty = ? WHERE id = ?;

/*Запрос на получение всех кафедр*/
SELECT * FROM department;

/*Запрос на получение кафедр университета*/
SELECT department.id, department.title, department.article, department.id_faculty 
FROM department LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*Запрос на получение кафедры*/
SELECT * FROM department WHERE department.id = ?;

/*Запрос на добавление нового уровня обучения*/
INSERT INTO education_level values (education_level_sequence.nextval, ?);

/*Запрос на удаление уровня обучения*/
DELETE FROM education_level WHERE education_level.id = ?;

/*Запрос на изменение уровня обучения*/
UPDATE education_level SET title = ? WHERE id = ?;

/*Запрос на получение всех уровней обучения*/
SELECT * FROM education_level;

/*Запрос на получение уровня обучения*/
SELECT * FROM education_level WHERE education_level.id = ?;

/*Запрос на добавление новой формы обучения*/
INSERT INTO education_form values (education_form_sequence.nextval, ?);

/*Запрос на удаление формы обучения*/
DELETE FROM education_form WHERE education_form.id = ?;

/*Запрос на изменение формы обучения*/
UPDATE education_form SET title = ? WHERE id = ?;

/*Запрос на получение всех форм обучения*/
SELECT * FROM education_form;

/*Запрос на получение формы обучения*/
SELECT * FROM education_form WHERE education_form.id = ?;

/*Запрос на добавление новой специальности*/
INSERT INTO specialty values (specialty_sequence.nextval, ?, ?, ?, ?);

/*Запрос на удаление специальности*/
DELETE FROM specialty WHERE specialty.id = ?;

/*Запрос на изменение специальности*/
UPDATE specialty SET code = ?, title = ?, period = ?, id_level = ? WHERE id = ?;

/*Запрос на получение всех специальностей*/
SELECT * FROM specialty;

/*Запрос на получение специальности*/
SELECT * FROM specialty WHERE specialty.id = ?;

/*Запрос на добавление новой группы*/
INSERT INTO group_edu values (group_sequence.nextval, ?, ?, ?, ?);

/*Запрос на удаление группы*/
DELETE FROM group_edu WHERE group_edu.id = ?;

/*Запрос на изменение группы*/
UPDATE group_edu SET code = ?, id_form = ?, id_specialty = ?, id_department = ? WHERE id = ?;

/*Запрос на получение всех группы*/
SELECT * FROM group_edu;

/*Запрос на получение групп университета*/
SELECT group_edu.id, group_edu.code, group_edu.id_form, group_edu.id_specialty, group_edu.id_department 
FROM group_edu LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*Запрос на получение группы*/
SELECT * FROM group_edu WHERE group_edu.id = ?;

/*Запрос на добавление нового типа приказа*/
INSERT INTO decree_type values (decree_type_sequence.nextval, ?);

/*Запрос на удаление типа приказа*/
DELETE FROM decree_type WHERE decree_type.id = ?;

/*Запрос на изменение типа приказа*/
UPDATE decree_type SET title = ? WHERE id = ?;

/*Запрос на получение всех типов приказов*/
SELECT * FROM decree_type;

/*Запрос на получение типа приказа*/
SELECT * FROM decree_type WHERE decree_type.id = ?;

/*Запрос на добавления приказа*/
INSERT INTO decree values (decree_sequence.nextval, ?, ?, 0, ?, ?);

/*Запрос на удаление приказа*/
DELETE FROM decree WHERE decree.id = ?;

/*Запрос на изменение приказа*/
UPDATE decree SET title = ? WHERE id = ?;

/*Запрос на подписание приказа*/
UPDATE decree SET is_signed = 1 WHERE id = ?;

/*Запрос на получение всех приказов*/
SELECT * FROM decree;

/*Запрос на получение приказов университета*/
SELECT decree.id, decree_type.title, decree.open_date, decree.is_signed, decree.id_type, decree.id_group 
FROM decree LEFT JOIN decree_type ON decree.id_type = decree_type.id 
LEFT JOIN group_edu ON decree.id_group = group_edu.id 
LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?;

/*Запрос на получение приказа*/
SELECT * FROM decree WHERE decree.id = ?;

/*Запрос на добавление нового студента*/
INSERT INTO student values (student_sequence.nextval, ?, ?, ?, ?, TO_DATE(?, 'yyyy-mm-dd'), ?);

/*Запрос на удаление студента*/
DELETE FROM student WHERE student.id = ?;

/*Запрос на удаление приказа*/
UPDATE student SET first_name = ?, second_name = ?, patronymic = ?, sex = ?, birth_date = TO_DATE(?, 'yyyy-mm-dd') WHERE id = ?;

/*Запрос на получение всех студентов отсортированных по группам*/
SELECT * FROM student ORDER BY student.id_group;

/*Запрос на получение студентов университета отсортированных по группам*/
SELECT student.id, student.first_name, student.second_name, student.patronymic, student.sex, student.birth_date, student.id_group 
FROM student LEFT JOIN group_edu ON student.id_group = group_edu.id 
LEFT JOIN department ON group_edu.id_department = department.id 
LEFT JOIN faculty ON department.id_faculty = faculty.id 
WHERE faculty.id_university = ?
ORDER BY student.id_group;

/*Запрос на получение студента*/
SELECT * FROM student WHERE student.id = ?;

/*Запрос на получение студентов из приказа*/
SELECT student.id, student.first_name, student.second_name, student.patronymic, student.sex, student.birth_date, student.id_group
FROM student RIGHT JOIN student_decree ON student.id = student_decree.id_student
WHERE student_decree.id_decree = ?;

/*Запрос на получение id последнего студента*/
SELECT MAX(student.id) FROM student;































