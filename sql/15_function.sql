/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(language_input TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
SELECT C.name AS name, COUNT(F.film_id) AS count
FROM category C
JOIN film_category FC ON C.category_id = FC.category_id
JOIN film F ON FC.film_id = F.film_id
JOIN language L ON F.language_id = L.language_id
WHERE L.name = language_input
GROUP BY C.name;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
