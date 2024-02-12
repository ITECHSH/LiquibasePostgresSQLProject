--liquibase formatted sql
--changeset admin:create-table1

CREATE TABLE example_db (
    employee_id SERIAL PRIMARY KEY,
    employee_name varchar (50) NOT NULL,
    employee_surname varchar (50) NOT NULL,
    employee_post varchar (50) NOT NULL,
    employee_seniority integer NOT NULL
);

--changeset admin:add-column
ALTER TABLE example_db
ADD employee_age integer;

--changeset admin:throw-data
INSERT INTO example_db
VALUES (1, 'Ilya', 'Shadrin', 'junior-developer', 1, 21);

--changeset admin:throw-data-multiple
INSERT INTO example_db (employee_id, employee_name, employee_surname, employee_post, employee_seniority, employee_age)
VALUES
    (2, 'Vasya', 'Pupkin', 'senior-developer', 10, 32),
    (3, 'Ivan', 'Ivanov', 'manager', 8, 41);
