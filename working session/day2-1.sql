--Display the total amount paid by 
--each customer in the payment table
SELECT customer_id, SUM(amount) FROM payment 
GROUP BY customer_id
ORDER BY customer_id 
-------------------------------------
--display customer lastname, firstname 
--whose customerid is 400 to 500
SELECT first_name,last_name FROM customer
WHERE customer_id BETWEEN 400 AND 500
---------------------------------------
--Display the film details of the language – English
SELECT * 
FROM film
WHERE language_id = (SELECT language_id
FROM language
WHERE language_id = 1);
-----------------------------------------
--Display address details of the country Australia

SELECT *
FROM address AS a
INNER JOIN city
ON a.city_id = city.city_id
INNER JOIN 
country ON city.country_id = country.country_id
WHERE country.country = 'Australia'
------




