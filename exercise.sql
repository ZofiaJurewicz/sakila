SELECT a.first_name, a.last_name
FROM film AS fl
        INNER JOIN film_actor fa ON fl.film_id = fa.film_id
        INNER JOIN actor a on a.actor_id = fa.actor_id
WHERE fl.title = 'ACADEMY DINOSAUR';

SELECT a.first_name, a.last_name, fl.title
FROM film AS fl
        LEFT JOIN film_actor fa ON fl.film_id = fa.film_id
        LEFT JOIN actor a on a.actor_id = fa.actor_id
WHERE fl.title = 'ACADEMY DINOSAUR'
ORDER BY fl.title;

SELECT fl.title
FROM film fl
INNER JOIN inventory i ON fl.film_id = i.film_id;

SELECT fl.title, i.inventory_id
FROM film fl
LEFT JOIN inventory i ON fl.film_id = i.film_id;

SELECT fl.title, i.inventory_id
FROM film fl
RIGHT JOIN inventory i ON fl.film_id = i.film_id;

SELECT fl.title, i.inventory_id
FROM film fl
FULL OUTER JOIN inventory i ON fl.film_id = i.film_id;

SELECT fl.title, cs.first_name, cs.last_name
FROM film fl
CROSS JOIN customer cs;

--- zwróć imie i nazwisko fanów komedii
SELECT DISTINCT c.first_name, c.last_name
FROM category ct
LEFT JOIN public.film_category fc on ct.category_id = fc.category_id
INNER JOIN public.film f on f.film_id = fc.film_id
INNER JOIN public.inventory i on f.film_id = i.film_id
INNER JOIN public.rental r on i.inventory_id = r.inventory_id
INNER JOIN public.customer c on c.customer_id = r.customer_id
WHERE ct.name = 'Drama';



