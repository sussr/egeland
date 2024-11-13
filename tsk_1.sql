-- Таблица пользователей
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    last_name VARCHAR(255),
    user_role_id INT,
    gender VARCHAR(50),
    coins INT,
    city_id FLOAT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY users(id, last_name, user_role_id, gender, coins, city_id, created_at, updated_at)
FROM 'D:\Files\users.csv' DELIMITER ',' CSV HEADER;

-- Таблица ролей
CREATE TABLE user_roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
COPY user_roles(id, name)
FROM 'D:\Files\user_roles.csv' DELIMITER ',' CSV HEADER;


-- Таблица предметов
CREATE TABLE subjects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    project VARCHAR(255),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY subjects(id, name, project, created_at, updated_at)
FROM 'D:\Files\subjects.csv' DELIMITER ',' CSV HEADER;


-- Таблица уроков
CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    topic VARCHAR(255),
    date DATE,
    course_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY lessons(id, topic, date, course_id, created_at, updated_at)
FROM 'D:\Files\lessons.csv' DELIMITER ',' CSV HEADER;


-- Таблица дз по занятиям
CREATE TABLE homework_lessons (
    id SERIAL PRIMARY KEY,
    homework_id INT,
    lesson_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY homework_lessons(id, homework_id, lesson_id, created_at, updated_at)
FROM 'D:\Files\homework_lessons.csv' DELIMITER ',' CSV HEADER;


-- Таблица сданных дз
CREATE TABLE homework_done (
    id SERIAL PRIMARY KEY,
    user_id INT,
    homework_id INT,
    mark FLOAT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY homework_done(id, user_id, homework_id, mark, created_at, updated_at)
FROM 'D:\Files\homework_done.csv' DELIMITER ',' CSV HEADER;


-- Таблица всех дз
CREATE TABLE homework (
    id SERIAL PRIMARY KEY,
    deadline DATE,
    homework_type_id FLOAT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY homework(id, deadline, homework_type_id, created_at, updated_at)
FROM 'D:\Files\homework.csv' DELIMITER ',' CSV HEADER;


-- Таблица курсов
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    cost NUMERIC,
    referral_is_open BOOLEAN,
    subject_id INT,
    lessons_in_month INT,
    course_type_id INT,
    starts_at DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY courses(id, name, cost, referral_is_open, subject_id, lessons_in_month, course_type_id, starts_at, created_at, updated_at)
FROM 'D:\Files\courses.csv' DELIMITER ',' CSV HEADER;


-- Таблица типов курсов
CREATE TABLE course_types (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
COPY course_types(id, name)
FROM 'D:\Files\course_types.csv' DELIMITER ',' CSV HEADER;


-- Таблица городов
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    region_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
COPY cities(id, name, region_id, created_at, updated_at)
FROM 'D:\Files\cities.csv' DELIMITER ',' CSV HEADER;