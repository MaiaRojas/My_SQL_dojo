USE Users;

INSERT INTO users (id, first_name, last_name, email, created_at, updated_at)
VALUES(6,'Pia', 'Rojas', 'pia@gmail.com', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

INSERT INTO users (id, first_name, last_name, email, created_at, updated_at)
VALUES(1,'Mia', 'Rodas', 'mia@gmail.com', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

INSERT INTO users (id, first_name, last_name, email, created_at, updated_at)
VALUES(2,'Lia', 'Rolas', 'lia@gmail.com', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

SELECT * FROM users;

SELECT * FROM users WHERE email = 'pia@gmail.com';

SELECT * FROM users ORDER BY id DESC LIMIT 1;

UPDATE users SET last_name = 'Panqueques' WHERE id =2;

DELETE FROM users WHERE id = 2;

SELECT * FROM users ORDER BY first_name DESC;