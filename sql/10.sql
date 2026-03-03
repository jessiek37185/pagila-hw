/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT film.title, film.film_id, COUNT(film_actor.film_id) AS "actor_count"
FROM film, film_actor
WHERE film.film_id = film_actor.film_id
GROUP BY film.film_id, film.title
ORDER BY actor_count ASC, film.title ASC; 
