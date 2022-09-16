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
SELECT c.first_name, c.last_name, count(r.rental_id)
FROM sakila.customer c
JOIN sakila.rental r
ON c.customer_id = r.customer_id
GROUP BY c.first_name
ORDER BY count(r.rental_id) DESC;

-- 5. Display the first and last names, as well as the address, of each staff member




 


