/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT inventory.film_id, film.title, COUNT(inventory.film_id) AS count
FROM inventory, film
WHERE inventory.film_id = film.film_id
AND film.title ILIKE 'h%'
GROUP BY film.title, inventory.film_id
ORDER BY film.title DESC;
