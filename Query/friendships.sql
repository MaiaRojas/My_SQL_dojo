USE friendships;


INSERT INTO users (first_name, last_name) VALUES ('Amy', 'Giver'), ('Eli', 'Byers'), ('Marky', 'Mark'), ('Big', 'Bird'), ('La rana', 'René'), ('Foo', 'Bar');

INSERT INTO friendships (user_id, friend_id) VALUES (6, 7), (6, 9), (6, 11), (7, 6), (7, 8), (7, 10), (8, 7),(8, 10), (9, 8), (10, 6), (10,11), (11, 7), (11, 8);

SELECT * FROM users;

SELECT * FROM users
JOIN friendships ON  users.id = friendships.user_id
LEFT JOIN users AS users2 ON  users2.id = friendships.friend_id;

SELECT * FROM users;
SELECT * FROM friendships;

SELECT users.first_name as first_name, users.last_name as last_name, users2.first_name as friend_name FROM users 
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON  users2.id = friendships.friend_id
WHERE users.id = (SELECT id FROM users ORDER BY users.id ASC LIMIT 1);

-- SELECT * FROM users ORDER BY users.id ASC LIMIT 1;

SELECT COUNT(*) AS num_of_friendships FROM friendships;

SELECT user_id, users.first_name, users.last_name , COUNT(*) AS count_friends FROM friendships
JOIN users ON friendships.user_id = users.id
GROUP BY user_id
ORDER BY count_friends DESC
LIMIT 1;

SELECT users.first_name as user_name, users2.first_name as friend_name FROM users 
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON  users2.id = friendships.friend_id
WHERE users.id = (SELECT id FROM users ORDER BY users.id ASC LIMIT 2,1);


