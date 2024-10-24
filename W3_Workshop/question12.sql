-- 12. Insert a record to represent Mary Smith renting the movie ACADEMY
-- DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to
-- capture the exact row you entered into the rental table.
-- (Note: Your rental date value will show the date and time you entered the
-- record, not 2021.)
Select film_id from film
WHERE title='ACADEMY DINOSAUR';
#film id=1
Select customer_id from customer
WHERE first_name='MARY' and last_name= 'SMITH';
#customer id=1

Select staff_id from staff
where first_name='MIKE' and last_name= 'Hillyer';
#staff_id=1
INSERT into inventory(inventory_id,film_id,store_id)
Values (4586,1,1);
INSERT into rental(inventory_id,customer_id, staff_id)
Values(4586,'1','1');

Select * from rental
WHERE customer_id=1 AND staff_id=1 AND inventory_id=4586;
