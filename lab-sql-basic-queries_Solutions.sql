SHOW Tables

Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor ; 
SELECT * FROM film;
SELECT * FROM customer;

Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2. List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table

SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS staff_count FROM staff;
SELECT
  COUNT(*) AS total_films,
  SUM(CASE WHEN rental_duration > rental_rate THEN 1 ELSE 0 END) AS rented_films
FROM film;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

Retrieve the 10 longest films:
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = 'SCARLETT';

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';








