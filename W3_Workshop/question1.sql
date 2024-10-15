-- 1. Display the first and last name of each actor in a single column in upper
-- case letters. Name the column in the results Actor Name.
-- + Create an additional query to sort Actor Name by the actor’s last name.

Select concat(first_name, ' ', last_name) As 'ActorName' from actor;
Select concat(first_name, ' ', last_name) As 'ActorName' from actor
ORDER BY last_name;