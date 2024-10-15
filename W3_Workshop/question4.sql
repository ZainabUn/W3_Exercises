-- 4. Find all actors whose last names contain the letters LI. This time, order the
-- rows by last name and first name, in that order.

SELECT last_name, first_name from actor
WHERE last_name LIKE '%li%'
ORDER BY last_name, first_name;

-- Create a second version of this query that adds a count of the total
-- number of movies each actor has been in.
Select actor_id, first_name,last_name, Count(film_id) from actor
JOIN film_actor using(actor_id)
Group BY actor_id ,last_name, first_name;

