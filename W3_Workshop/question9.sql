-- List each film and the number of actors who are listed for that film. Use
-- tables film_actor and film. Use inner join

Select Title, Count(actor_id),film_id from film
INNER JOIN film_actor Using(film_id)
Group By film_id,Title;