SELECT * FROM users;
SELECT * FROM faves;
SELECT * FROM follows;
SELECT * FROM tweets;

SELECT first_name, last_name FROM users WHERE id = 2 OR id = 3;

SELECT * FROM users WHERE first_name LIKE '%e';

SELECT * FROM users WHERE first_name LIKE 'K%';

SELECT * FROM users WHERE first_name NOT LIKE 'K%';

SELECT * FROM users ORDER BY birthday DESC;

SELECT * FROM users ORDER BY birthday ASC;

SELECT * FROM users WHERE first_name LIKE "%e" ORDER BY birthday DESC;

SELECT first_name FROM users ORDER BY first_name;

SELECT * FROM users LIMIT 3;

SELECT * FROM users LIMIT 3 OFFSET 2;

SELECT * FROM users LIMIT 2,3;

INSERT INTO users (id, first_name, last_name, handle, birthday, created_at, updated_at)
VALUES(6,'Karolina', 'Rojas', 'others', '1992-06-24', '2023-02-24 00:00:01', '2022-06-24 00:00:01');

UPDATE users SET first_name = 'Kobeee' WHERE id =1;

DELETE FROM users WHERE id = 6;




