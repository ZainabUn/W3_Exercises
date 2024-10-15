-- For last names that are shared by at least two actors, list those last names
-- and the number of actors who have that last name.

Select last_name, Count(last_name) As 'actor_count' from actor
GROUP BY last_name
HAVING actor_count >= 2;