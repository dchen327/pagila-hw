/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT F.title, F.film_id, COUNT(*) AS actor_count
FROM film F
JOIN film_actor A ON F.film_id = A.film_id
GROUP BY F.film_id
ORDER BY actor_count, title ASC;
