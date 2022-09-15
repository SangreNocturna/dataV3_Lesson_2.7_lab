-- 1. How many films are there for each of the categories in the category table. Use appropriate join to write this query
select * from sakila.film;
select distinct(count(title)) from sakila.film;

SELECT c.name, c.category_id, f.title as amount 
FROM sakila.film f
JOIN sakila.category c

limit 15;

-- STILL IN PROCESS, IT IS TOO LATE ALREADY