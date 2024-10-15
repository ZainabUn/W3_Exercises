-- 6. The actor HARPO WlLLlAMS was accidentally entered in the actor table as
-- GROUCHO WILLIAMS. Write one query to fix the record, plus another to
-- verify the change.

Select first_name, last_name, actor_id from actor
WHERE last_name LIKE 'WILLIAMS' AND first_name = 'GROUCHO';

UPDATE actor
SET first_name = 'HARPO'
WHERE actor_id =172;

Select first_name, last_name, actor_id from actor
WHERE last_name LIKE 'WILLIAMS';