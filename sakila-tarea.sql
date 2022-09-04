SELECT * FROM customer;
SELECT * FROM address;

-- #1
SELECT first_name, last_name, email, address FROM customer JOIN address ON address.address_id = customer.address_id
WHERE city_id = 312;

SELECT * FROM film;
SELECT * FROM film_text;
SELECT * FROM category;

-- #2
SELECT title, description_film, release_year, rental_rate, special_features, name_category FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name_category ="comedy";

-- #3
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM film_actor;

SELECT first_name, last_name, title, description_film, release_year FROM film_actor
JOIN film ON film.film_id = film_actor.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id ="5";

-- #4
SELECT * FROM customer JOIN address ON customer.address_id = address.address_id
WHERE store_id = 1 AND city_id IN(1,42,312,459);

-- #5
SELECT * FROM film JOIN film_actor ON film.film_id = film_actor.film_id
WHERE actor_id = 15 AND rating = "G" AND be 
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id ="5";

-- #6


-- #7
SELECT * FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
WHERE category.name ="drama" AND rental_rate = 2.99;

-- #8
SELECT * FROM film
JOIN film_category ON film.film_id = film_category.film_id JOIN category ON category.category_id = film_category.category_id 
JOIN film_actor ON film.film_id = film_actor.film_id JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE category.name = "action" AND actor.first_name = "Sandra" AND actor.last_name = "kilmer" ORDER BY film.film_id; 

