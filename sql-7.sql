-- 1. How many films are there for each of the categories in the category table. Use appropriate join to write this query
select * from sakila.film;
select * from sakila.film_category;
select distinct(count(title)) from sakila.film;

SELECT c.name, count(f.film_id) as amount
FROM sakila.category c
JOIN sakila.film_category f
ON c.category_id = f.category_id
GROUP BY c.name;
-- ORDER BY

-- 2. Display the total amount rung up by each staff member in August of 2005
SELECT s.staff_id, s.first_name, s.last_name, count(p.amount)
FROM sakila.staff s
JOIN sakila.payment p
ON s.staff_id = p.staff_id
GROUP BY p.staff_id;

-- 3. Which actor has appeared in the most films?
SELECT a.first_name, a.last_name, count(film_id)
FROM sakila.actor a
JOIN sakila.film_actor f
ON a.actor_id = f.actor_id
GROUP BY a.first_name;

-- 4. Most active customer (the customer that has rented the most number of films)
SELECT c.first_name, c.last_name, count(r.rental_id) as total_rental
FROM sakila.customer c
JOIN sakila.rental r
ON c.customer_id = r.customer_id
GROUP BY c.first_name
ORDER BY count(r.rental_id) DESC;

-- 5. Display the first and last names, as well as the address, of each staff member
SELECT s.first_name, s.last_name, a.address_id, a.address, c.city
FROM sakila.staff s
JOIN sakila.address a
ON s.address_id = a.address_id
JOIN sakila.city c 
ON a.city_id = c.city_id
;

-- 6. List each film and the number of actors who are listed for that film
SELECT f.film_id, f.title, count(fa.actor_id)
FROM sakila.film f
JOIN sakila.film_actor fa
ON f.film_id= fa.film_id
GROUP BY f.film_id
ORDER BY count(fa.actor_id) DESC
;


-- 7. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name
SELECT c.last_name, c.first_name, count(p.amount) as total_paid
FROM sakila.payment p
JOIN sakila.customer c
ON p.customer_id = c.customer_id
GROUP BY c.first_name
ORDER BY c.last_name ASC;

