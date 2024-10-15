-- The music of Queen and Kris Kristofferson have seen an unlikely
-- resurgence. As an unintended consequence, films starting with the letters
-- K and Q have also soared in popularity. Use subqueries to display the titles
-- of movies starting with the letters K and Q whose language is English.

SELECT Title from film
WHERE language_id = '1' 
AND Title LIKE 'K%' OR Title Like 'Q%' ;

