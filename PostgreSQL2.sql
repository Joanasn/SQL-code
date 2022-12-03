/*
SQL queries on PostgreSQL - Topic: DVD rentals
Basic queries such as: select, where, order by, limit, group by, date, having
Tables: actor, address, category, city, country, customer, film, film_actor, film_category, city,
country, customer, film, film_actor, film_category, inventory, language, payment, rental, staff, store
I will be stating situations as a dvd rental company, from looking up customers, inventory, costs, etc. 
*/


-- From how many districts are our customers from?

SELECT address.district, COUNT(district)
FROM customer
INNER JOIN address 
ON customer.address_id = address.address_id
GROUP BY district
ORDER BY 1

-- Show how many cities are per country?

SELECT country.country, count(city.country_id)
FROM city
INNER JOIN country
ON city.country_id = country.country_id
GROUP BY country.country, city.country_id

-- The top 10 countries where our customers are from
SELECT country.country, count(city.country_id)
FROM city
INNER JOIN country
ON city.country_id = country.country_id
GROUP BY country.country, city.country_id
ORDER BY 2 DESC
LIMIT 10