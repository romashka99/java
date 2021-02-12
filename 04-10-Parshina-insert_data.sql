/*Добавление групп пользователей*/
INSERT INTO user_group values (1, 'администратор');
INSERT INTO user_group values (2, 'модератор');
INSERT INTO user_group values (3, 'сотрудник');

/*Добавление пользователей*/
INSERT INTO user_app values (1, 'Паршина Анна Романовна', 'admin', 'admin1', 0, 1);
INSERT INTO user_app values (2, 'Паршина Анна Романовна', 'moderator', 'moderator1', 0, 2);
INSERT INTO user_app values (3, 'Паршина Анна Романовна', 'developer1', 'developer1', 0, 3);
INSERT INTO user_app values (4, 'Паршина Анна Романовна', 'developer2', 'developer2', 0, 3);

/*Добавление университетов*/
INSERT INTO university values (1, 'Рязанский государственный радиотехнический университет им. В.Ф. Уткина', 'РГРТУ', '390005, г. Рязань, ул. Гагарина, 59/1');
INSERT INTO university values (2, 'Рязанский государственный университет', 'РГУ', 'г.Рязань');

/*Добавление факультетов*/
INSERT INTO faculty values (1, 'Факультет вычислительной техники', 'ФВТ', 1);
INSERT INTO faculty values (2, 'Факультет электроники', 'ФЭ', 1);
INSERT INTO faculty values (3, 'Факультет радиотехники и телекоммуникаций', 'РТФ', 1);
INSERT INTO faculty values (4, 'Инженерно-экономический факультет', 'ИЭФ', 1);
INSERT INTO faculty values (5, 'Факультет автоматики и информационных технологий в управлении', 'ФАИТУ', 1);

/*Добавление записаей соединящих сотрудников и унивеситеты*/
INSERT INTO user_university values (1, 3, 1);
INSERT INTO user_university values (2, 4, 2);

/*Добавление кафедр*/
INSERT INTO department values (1, 'Кафедра промышленной электроники', 'ПЭ', 2);
INSERT INTO department values (2, 'Кафедра электронных приборов', 'ЭП', 2);
INSERT INTO department values (3, 'Кафедра телекоммуникаций и основ радиотехники', 'ТОР', 3);
INSERT INTO department values (4, 'Кафедра радиотехнических систем', 'РС', 3);
INSERT INTO department values (5, 'Кафедра автоматики и информационных технологий в управлении', 'ЭП', 5);
INSERT INTO department values (6, 'Кафедра информационно-измерительной и биомедицинской техники', 'ЭП', 5);
INSERT INTO department values (7, 'Кафедра систем автоматизированного проектирования вычислительных средств', 'САПВ', 1);
INSERT INTO department values (8, 'Кафедра вычислительной и прикладной математики', 'ВПМ', 1);
INSERT INTO department values (9, 'Кафедра государственного, муниципального и корпоративного управления', 'ГМКУ', 4);
INSERT INTO department values (10, 'Кафедра экономики, менеджмента и организации производства', 'ЭМОП', 4);

/*Добавление форм обучения*/
INSERT INTO education_form values (1, 'Очная');
INSERT INTO education_form values (2, 'Заочна');
INSERT INTO education_form values (3, 'Очно-заочная');
INSERT INTO education_form values (4, 'Дистанционная');

/*Добавление уровней обучения*/
INSERT INTO education_level values (1, 'Бакалавриат');
INSERT INTO education_level values (2, 'Магитратура');
INSERT INTO education_level values (3, 'Аспирантура');
INSERT INTO education_level values (4, 'Специалитет');

/*Добавление специальностей*/
INSERT INTO specialty values (1, '09.03.04', 'Программная инженерия', 4, 1);
INSERT INTO specialty values (2, '09.03.03', 'Прикладная математика', 4, 1);
INSERT INTO specialty values (3, '09.04.04', 'Программная инженерия', 2, 2);
INSERT INTO specialty values (4, '09.04.03', 'Прикладная математика', 2, 2);
INSERT INTO specialty values (5, '01.03.02', 'Программная математика и информатика', 4, 1);
INSERT INTO specialty values (6, '27.03.04', 'Управление в технических системах', 4, 1);

/*Добавление учебных групп*/
INSERT INTO group_edu values (1, '643', 1, 1, 8);
INSERT INTO group_edu values (2, '6413', 1, 1, 8);
INSERT INTO group_edu values (3, 'М643', 1, 3, 8);
INSERT INTO group_edu values (4, '644', 1, 2, 8);
INSERT INTO group_edu values (5, 'М644', 1, 4, 8);

/*Добавление студентов*/
INSERT INTO student values (1, 'Паршина', 'Анна', 'Романовна', 'Ж', TO_DATE('09.05.1999','dd.mm.yyyy'), 1);
INSERT INTO student values (2, 'Иванов', 'Иван', 'Иванович', 'М', TO_DATE('05.11.1998','dd.mm.yyyy'), 1);
INSERT INTO student values (3, 'Пертов', 'Николай', 'Петрович', 'М', TO_DATE('25.07.1997','dd.mm.yyyy'), 1);
INSERT INTO student values (4, 'Сидоров', 'Дмитрий', 'Анатольевич', 'М', TO_DATE('19.03.1996','dd.mm.yyyy'), 1);
INSERT INTO student values (5, 'Петрова', 'Анастасия', 'Дмитриевна', 'Ж', TO_DATE('23.09.1997','dd.mm.yyyy'), 1);
INSERT INTO student values (6, 'Григорьев', 'Василий', 'Геннадьевич', 'М', TO_DATE('08.01.1995','dd.mm.yyyy'), 1);

/*Добавление типов приказов*/
INSERT INTO decree_type values (1, 'Зачисление');
INSERT INTO decree_type values (2, 'Отчисление');
INSERT INTO decree_type values (3, 'Перевод');

/*Добавление приказов*/
INSERT INTO decree values (1, 'Зачисление студентов в группу 643', SYSDATE, 0, 1, 1);
INSERT INTO decree values (2, 'Отчисление студентов из группы 643', SYSDATE, 0, 2, 1);
INSERT INTO decree values (3, 'Перевод студентов в группу 6413', SYSDATE, 0, 3, 2);

/*Добавление студентов по приказам*/
INSERT INTO student_decree values (student_decree_sequence.nextval, 1, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 2, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 3, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 4, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 5, 1);
INSERT INTO student_decree values (student_decree_sequence.nextval, 6, 1);

INSERT INTO student_decree values (student_decree.nextval, ?, ?)











