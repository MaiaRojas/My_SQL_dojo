USE Dojo_ninjas;

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(1, 'scl-01', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(2, 'lim-01', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(3, 'mex-01', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

SELECT * FROM dojos;

DELETE FROM dojos WHERE id = 1;
DELETE FROM dojos WHERE id = 2;
DELETE FROM dojos WHERE id = 3;

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(1, 'scl-02', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(2, 'lim-02', '2023-02-24 00:00:02', '2022-06-24 00:00:02');

INSERT INTO dojos (id, name, created_at, updated_at)
VALUES(3, 'mex-02', '2023-02-24 00:00:03', '2022-06-24 00:00:03');

-- Create Ninjas For first dojo

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(1, 'SHihiro', 'Tao', '17', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '1');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(2, 'Kai', 'Tao', '18', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '1');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(3, 'Nikko', 'Tao', '19', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '1');

-- Create Ninjas for second Dojo

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(4, 'Tae', 'Park', '17', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '2');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(5, 'Jin', 'Park', '18', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '2');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(6, 'Jungkook', 'Park', '19', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '2');

-- Create Ninjas for third Dojo

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(7, 'Jennie', 'Kim', '17', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '3');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(8, 'Lisa', 'Kim', '18', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '3');

INSERT INTO ninjas (id, first_name, last_name, age, created_at, updated_at, dojos_id)
VALUES(9, 'Jisso', 'Kim', '19', '2023-02-26 00:00:03', '2022-06-28 00:00:03', '3');

-- QUERIES

SELECT * FROM ninjas WHERE dojos_id = 1;

SELECT * FROM ninjas WHERE dojos_id = 3;

SELECT MAX(id) FROM ninjas JOIN dojos ON ninjas.dojos_id = dojos.id;







