-- For each airline with exactly 4 airplanes, find its name and id, and the number of routes.

SELECT DISTINCT airlines.name, airlines.id
FROM airlines
INNER JOIN airlines_has_airplanes ON airlines.id = airlines_has_airplanes.airlines_id
INNER JOIN routes ON airlines.id = routes.airlines_id
GROUP BY routes.id
HAVING COUNT(airlines_has_airplanes.airlines_id) = 4