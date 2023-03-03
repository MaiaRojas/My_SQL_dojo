USE bookstore;

INSERT INTO users (id, first_name, last_name, created_at, updated_at)
VALUES
(1, 'Jane', 'Austen', '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(2, 'Emily', 'Dicknson', '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(3, 'Fyodor', 'Dostoevsky', '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(4, 'William', 'Shakespare', '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(5, 'Lau', 'Tzu', '2023-02-07 14:30:00', '2023-02-08 14:30:00');

INSERT INTO books (id, title, num_of_pages, created_at, updated_at)
VALUES
(1, 'C Sharp', 100, '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(2, 'Java', 120, '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(3, 'Python', 130, '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(4, 'PHP', 110, '2023-02-07 14:30:00', '2023-02-08 14:30:00'),
(5, 'Ruby', 150, '2023-02-07 14:30:00', '2023-02-08 14:30:00');

UPDATE books SET title = 'C#' WHERE title = "C Sharp";

SELECT * FROM books;

UPDATE users SET first_name = 'Bill' WHERE id = 4;

SELECT * FROM users;

-- First user mark 

INSERT INTO favorites (id, users_id, books_id)
VALUES (1, 1 , 1), (2, 1, 2), (3, 3 , 1), (4, 3, 2),(5, 3 , 3), (6, 3, 4);

SELECT * FROM favorites;

INSERT INTO favorites (id, users_id, books_id)
VALUES (7, 2, 1), (8, 2, 2), (14, 2, 3), (9, 4, 1),(10, 4, 2), (11, 4, 3), (12, 4, 4), (13, 4, 5);

SELECT * FROM books
JOIN favorites ON books.id = favorites.books_id
JOIN users ON users.id = favorites.users_id
WHERE books.id = 3;

DELETE FROM favorites WHERE books_id = 3 AND users_id = 2;

SELECT users_id FROM favorites WHERE books_id = 3 ORDER BY users_id LIMIT 1;

SELECT * FROM favorites;

INSERT INTO favorites (users_id, books_id) VALUES (5, 2);

SELECT * FROM users
JOIN favorites ON users.id = favorites.users_id
JOIN books ON books.id = favorites.books_id
WHERE users.id = 3;


SELECT * FROM books
JOIN favorites ON  books.id = favorites.books_id
JOIN users ON users.id = favorites.users_id
WHERE books.id = 5;



