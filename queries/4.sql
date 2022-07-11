-- Check whether there was an 'Olympic Airways' flight on 2014-12-12, from 'Athens El. Venizelos' to 'London Gatwick'. Return a boolean result. 

SELECT EXISTS(
SELECT *
FROM airlines 
INNER JOIN routes ON airlines.id = routes.airlines_id 
INNER JOIN airports ON routes.source_id = airports.id 
INNER JOIN flights ON routes.id = flights.routes_id
WHERE routes.source_id in (SELECT id FROM airports WHERE airports.name = 'Athens El. Venizelos') 
AND routes.destination_id IN (SELECT id FROM airports WHERE airports.name = 'London Gatwick') 
AND flights.date='2014-12-12' 
AND airlines.name = 'Olympic Airways') AS result