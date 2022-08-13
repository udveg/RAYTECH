--Display the common first_name of Staff and customers
SELECT first_name FROM customer
WHERE first_name IN (SELECT first_name FROM staff);
--Display customerID’s having same first_name
SELECT c.customer_id FROM customers AS c
WHERE c.fisrt_name IN (SELECT a.first_name FROM customers AS a INNER JOIN
					   
					  )
SELECT * FROM customer
--Display the actors firstname,lastname of their film title ends with e.
SELECT first_name, last_name,title FROM
actor AS a INNER JOIN film_actor AS b 
ON a.actor_id=b.actor_id INNER JOIN film AS c
ON b.film_id = c.film_id 
WHERE title LIKE '%e' 
--create view for the question 3 
--and get the count of actors acted in each film
CREATE VIEW demo1 AS 
SELECT first_name, last_name,title  FROM
actor AS a INNER JOIN film_actor AS b 
ON a.actor_id=b.actor_id INNER JOIN film AS c
ON b.film_id = c.film_id 
WHERE title LIKE '%e'

SELECT count(DISTINCT demo1.first_name||' '|| demo1.last_name)
AS count FROM demo1 GROUP BY title


