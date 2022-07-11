-- Find the average age of 'Berlin' visitors

SELECT AVG(year(curdate()) - year_of_birth) AS AGE
FROM passengers 
INNER JOIN flights_has_passengers ON passengers.id = flights_has_passengers.passengers_id 
INNER JOIN flights ON flights_has_passengers.flights_id = flights.id
INNER JOIN routes ON flights.routes_id = routes.id
INNER JOIN airports ON routes.destination_id = airports.id
WHERE routes.destination_id IN (SELECT id FROM airports WHERE city = 'Berlin')