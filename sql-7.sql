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
SELECT s.first_name, s.last_name, count(p.amount)
FROM sakila.staff s
JOIN sakila.payment p
ON s.staff_id = p.staff_id
GROUP BY p.staff_id;