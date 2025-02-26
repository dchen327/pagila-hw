/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT C.country, SUM(P.amount) AS profit
FROM payment P
JOIN rental R ON P.rental_id = R.rental_id
JOIN customer CU ON R.customer_id = CU.customer_id
JOIN address A ON CU.address_id = A.address_id
JOIN city CI ON A.city_id = CI.city_id
JOIN country C ON CI.country_id = C.country_id
GROUP BY C.country
ORDER BY C.country ASC;
