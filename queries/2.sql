-- Find airline names that have a route from 'Athens' to 'Prague'

SELECT airlines.name
FROM airlines 
INNER JOIN routes ON airlines.id = routes.airlines_id 
INNER JOIN airports ON routes.source_id = airports.id
WHERE routes.source_id in (SELECT id FROM airports WHERE city = 'Athens') AND routes.destination_id IN (SELECT id FROM airports WHERE city = 'Prague')