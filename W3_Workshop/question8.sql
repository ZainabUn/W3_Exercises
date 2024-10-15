-- Use JOIN to display the total amount rung up by each staff member in
-- August of 2005, using tables staff and payment.

Select staff_id, Count(amount) AS 'amount rung up by each staff member in
-- August of 2005' from staff
Join payment Using (staff_id)
WHERE YEAR(payment_date)=2005 AND MONTH(payment_date)=08
Group by  staff_id;


-- Select staff_id, Count(amount) AS 'amount rung up by each staff member in
-- -- August of 2005' from staff
-- Join payment Using (staff_id)
-- WHERE payment_date > '07/31/2005' AND payment_date < '08/31/2005'
-- Group by  staff_id;
