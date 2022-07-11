/* Find the departure and destination city for flights between '2010-03-01' and '2014-07-17', and with more than 5 passengers.
This is a tricky one. We need to perform a join on the same table twice, to extract information from both ids and map them to city names. */

SELECT air1.city, air2.city
FROM routes 
INNER JOIN airports air1 ON routes.source_id = air1.id
INNER JOIN airports air2 ON routes.destination_id= air2.id
INNER JOIN flights ON routes.id = flights.routes_id
INNER JOIN flights_has_passengers ON flights.id = flights_has_passengers.flights_id
WHERE flights.date BETWEEN '2010-03-01' AND '2014-07-17'
GROUP BY flights.id
HAVING count(flights_has_passengers.passengers_id)>5