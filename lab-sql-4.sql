USE sakila;


-- 1. Get film ratings.
select *
from film;

SELECT DISTINCT rating AS ratings
FROM film;

-- 2. Get release years

SELECT DISTINCT release_year as release_year
FROM film;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title

SELECT *
FROM film
WHERE title LIKE '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.

SELECT *
FROM film
WHERE title LIKE '%APOLLO';

-- 6. Get all films with word DATE in the title.

SELECT *
FROM film
WHERE title regexp 'DATE';

-- 7. Get 10 films with the longest title.

SELECT title, length(title) as title_length
FROM film
ORDER BY length(title) desc
LIMIT 10;

-- 8. Get 10 the longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 9. How many films include Behind the Scenes content?

SELECT  film_id, title, special_features
FROM film
WHERE special_features regexp 'Behind the Scenes';

-- 10. List films ordered by release year and title in alphabetical order.

SELECT film_id, title, release_year
FROM film
ORDER BY title;