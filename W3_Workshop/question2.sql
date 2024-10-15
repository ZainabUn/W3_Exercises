-- You need to find the ID number, first name, and last name of an actor,
-- where the only thing you know about him is his first name, Joe.

Select first_name, last_name,actor_id from actor
WHERE first_name LIKE '%Joe%';
Select film_id from film_actor
WHERE actor_id =9;
