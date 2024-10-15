-- 3. Find all actors whose last name contain the letters GEN. 
Select first_name, last_name, actor_id from actor
WHERE last_name LIKE '%GEN%';