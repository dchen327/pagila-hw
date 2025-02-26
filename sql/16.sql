/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT F.title, SUM(P.amount) as profit
FROM payment P
JOIN rental R ON P.rental_id = R.rental_id
JOIN inventory I ON R.inventory_id = I.inventory_id
JOIN film F ON I.film_id = F.film_id
GROUP BY F.title
ORDER BY profit DESC;
