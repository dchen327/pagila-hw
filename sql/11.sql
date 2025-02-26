/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT F.film_id, F.title, COUNT(*)
FROM film F
JOIN inventory I ON F.film_id = I.film_id
GROUP BY F.film_id, F.title
HAVING F.title ILIKE 'h%'
ORDER BY F.title DESC;
