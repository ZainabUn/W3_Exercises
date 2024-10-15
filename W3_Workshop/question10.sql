-- 10. How many copies of the film HUNCHBACK IMPOSSIBLE exist in the
-- system?

SELECT Title , Count(inventory_id) from inventory
Join film Using (film_id)
WHERE Title= 'HUNCHBACK IMPOSSIBLE';