/*Таблица групп пользователей*/
CREATE TABLE user_group
( 
    id number(10) NOT NULL,
    title nvarchar2(20) NOT NULL,
    CONSTRAINT usergroup_pk PRIMARY KEY (id)
);

CREATE SEQUENCE user_group_sequence;

/*Таблица пользователей*/
CREATE TABLE user_app
( 
    id number(10) NOT NULL,
    full_name nvarchar2(50) NOT NULL,
    login nvarchar2(20) NOT NULL,
    password nvarchar2(20) NOT NULL,
    is_online number(1) NOT NULL,
    id_usergroup number(10) NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (id),
    CONSTRAINT login_unique UNIQUE (login)
);

CREATE SEQUENCE user_sequence;

/*Отношение пользователей к группам пользователей*/
ALTER TABLE user_app
ADD CONSTRAINT fk_user_user_group
FOREIGN KEY (id_usergroup)
REFERENCES user_group(id) ON DELETE CASCADE;

/*Таблица университетов*/
CREATE TABLE university
( 
    id number(10) NOT NULL,
    title nvarchar2(200) NOT NULL,
    article nvarchar2(10) NOT NULL,
    adress nvarchar2(250),
    CONSTRAINT university_pk PRIMARY KEY (id)
);

CREATE SEQUENCE university_sequence;

/*Таблица отношения пользователей к университетам*/
CREATE TABLE user_university
( 
    id number(10) NOT NULL,
    id_user number(10) NOT NULL,
    id_university number(10) NOT NULL,
    CONSTRAINT user_university_pk PRIMARY KEY (id)
);

CREATE SEQUENCE user_university_sequence;

ALTER TABLE user_university
ADD CONSTRAINT fk_user_university_user
FOREIGN KEY (id_user)
REFERENCES user_app(id) ON DELETE CASCADE;

ALTER TABLE user_university
ADD CONSTRAINT fk_user_university_university
FOREIGN KEY (id_university)
REFERENCES university(id) ON DELETE CASCADE;

ALTER TABLE user_university
ADD CONSTRAINT user_unique UNIQUE (id_user);

/*Таблица факультетов*/
CREATE TABLE faculty
( 
    id number(10) NOT NULL,
    title nvarchar2(200) NOT NULL,
    article nvarchar2(10) NOT NULL,
    id_university number(10) NOT NULL,
    CONSTRAINT faculty_pk PRIMARY KEY (id)
);

CREATE SEQUENCE faculty_sequence;

/*Отношение факультета к университету */
ALTER TABLE faculty
ADD CONSTRAINT fk_faculty_university
FOREIGN KEY (id_university)
REFERENCES university(id) ON DELETE CASCADE;

/*Таблица кафедр*/
CREATE TABLE department
( 
    id number(10) NOT NULL,
    title nvarchar2(200) NOT NULL,
    article nvarchar2(10) NOT NULL,
    id_faculty number(10) NOT NULL,
    CONSTRAINT department_pk PRIMARY KEY (id)
);

CREATE SEQUENCE department_sequence;

/*Отношение кафедры к факультету */
ALTER TABLE department
ADD CONSTRAINT fk_department_faculty
FOREIGN KEY (id_faculty)
REFERENCES faculty(id) ON DELETE CASCADE;

/*Таблица форм обучения*/
CREATE TABLE education_form
( 
    id number(10) NOT NULL,
    title nvarchar2(30) NOT NULL,
    CONSTRAINT education_form_pk PRIMARY KEY (id)
);

CREATE SEQUENCE education_form_sequence;

/*Таблица уровней обучения*/
CREATE TABLE education_level
( 
    id number(10) NOT NULL,
    title nvarchar2(30) NOT NULL,
    CONSTRAINT education_level_pk PRIMARY KEY (id)
);

CREATE SEQUENCE education_level_sequence;

/*Таблица специальностей*/
CREATE TABLE specialty
( 
    id number(10) NOT NULL,
    code nvarchar2(10) NOT NULL,
    title nvarchar2(50) NOT NULL,
    period number(10) NOT NULL,
    id_level number(10) NOT NULL,
    CONSTRAINT specialty_pk PRIMARY KEY (id),
    CONSTRAINT code_unique UNIQUE (code)
);

CREATE SEQUENCE specialty_sequence;

/*Отношение специальности к уровню обучения */
ALTER TABLE specialty
ADD CONSTRAINT fk_specialty_education_level
FOREIGN KEY (id_level)
REFERENCES education_level(id) ON DELETE CASCADE;

/*Таблица учебных групп*/
CREATE TABLE group_edu
( 
    id number(10) NOT NULL,
    code nvarchar2(10) NOT NULL,
    id_form number(10) NOT NULL,
    id_specialty number(10) NOT NULL,
    id_department number(10) NOT NULL,
    CONSTRAINT group_pk PRIMARY KEY (id),
    CONSTRAINT code_group_unique UNIQUE (code),
    CONSTRAINT specialty_group_unique UNIQUE (id_specialty)
);

CREATE SEQUENCE group_sequence;

/*Отношение группы к форме обучения */
ALTER TABLE group_edu
ADD CONSTRAINT fk_group_education_form
FOREIGN KEY (id_form)
REFERENCES education_form(id) ON DELETE CASCADE;

/*Отношение группы к специальности */
ALTER TABLE group_edu
ADD CONSTRAINT fk_group_specialty
FOREIGN KEY (id_specialty)
REFERENCES specialty(id) ON DELETE CASCADE;

/*Отношение группы к кафедре */
ALTER TABLE group_edu
ADD CONSTRAINT fk_group_department
FOREIGN KEY (id_department)
REFERENCES department(id) ON DELETE CASCADE;

/*Таблица студентов*/
CREATE TABLE student
( 
    id number(10) NOT NULL,
    first_name nvarchar2(30) NOT NULL,
    second_name nvarchar2(30) NOT NULL,
    patronymic nvarchar2(30),
    sex nvarchar2(1),
    birth_date date NOT NULL,
    id_group number(10),
    CONSTRAINT student_pk PRIMARY KEY (id)
);

CREATE SEQUENCE student_sequence;

/*Отношение студента к группе*/
ALTER TABLE student
ADD CONSTRAINT fk_student_group
FOREIGN KEY (id_group)
REFERENCES group_edu(id) ON DELETE CASCADE;

/*Таблица типов приказов*/
CREATE TABLE decree_type
( 
    id number(10) NOT NULL,
    title nvarchar2(30) NOT NULL,
    CONSTRAINT decree_type_pk PRIMARY KEY (id)
);

CREATE SEQUENCE decree_type_sequence;

/*Таблица приказов*/
CREATE TABLE decree
( 
    id number(10) NOT NULL,
    title nvarchar2(50) NOT NULL,
    open_date date NOT NULL,
    is_signed number(1) NOT NULL,
    id_type number(10) NOT NULL,
    id_group number(10) NOT NULL,
    CONSTRAINT decree_pk PRIMARY KEY (id)
);

CREATE SEQUENCE decree_sequence;

/*Отношение приказа к типам приказов */
ALTER TABLE decree
ADD CONSTRAINT fk_decree_decree_type
FOREIGN KEY (id_type)
REFERENCES decree_type(id) ON DELETE CASCADE;

/*Отношение приказа к ученическим группам */
ALTER TABLE decree
ADD CONSTRAINT fk_decree_decree_group
FOREIGN KEY (id_group)
REFERENCES group_edu(id) ON DELETE CASCADE;

/*Таблица отношения студентов к приказам*/
CREATE TABLE student_decree
( 
    id number(10) NOT NULL,
    id_student number(10) NOT NULL,
    id_decree number(10) NOT NULL,
    CONSTRAINT student_decree_pk PRIMARY KEY (id)
);

CREATE SEQUENCE student_decree_sequence;

ALTER TABLE student_decree
ADD CONSTRAINT fk_student_decree_student
FOREIGN KEY (id_student)
REFERENCES student(id) ON DELETE CASCADE;

ALTER TABLE student_decree
ADD CONSTRAINT fk_student_decree_decree
FOREIGN KEY (id_decree)
REFERENCES decree(id) ON DELETE CASCADE;





