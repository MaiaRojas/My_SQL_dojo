USE sakila;

-- 1.

SELECT first_name, last_name, email, address.address FROM customer
JOIN address ON address.address_id = customer.address_id
WHERE address.city_id = 312;

-- 2. 
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name  AS genre  FROM film
JOIN film_category ON  film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Comedy';

-- 3. 
SELECT CONCAT(actor.first_name, ' ', actor.last_name) AS full_name, film.title, film.description, film.release_year  FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE actor.actor_id = 5;

-- 4.
SELECT customer.first_name, customer.last_name, customer.email, address.address FROM customer
JOIN address ON address.address_id = customer.address_id
JOIN store ON store.address_id = store.address_id
WHERE store.store_id = 1 AND (address.city_id = 1 OR address.city_id = 42 OR address.city_id = 312 OR address.city_id = 459);

-- 5.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE film.rating = 'G' AND film.special_features = 'Behind the scenes' AND actor.actor_id = 15;

-- 6.
SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name , ' ', actor.last_name) AS full_name FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE film.film_id = '369' ;

-- 7. 
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name  AS genre  FROM film
JOIN film_category ON  film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name = 'Drama' AND film.rental_rate = 2.99;


-- 8.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre, CONCAT(actor.first_name , ' ', actor.last_name) AS full_name FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
JOIN film_category ON  film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE actor.first_name = 'Sandra' AND actor.last_name = 'KILMER' ;
