-- Find the names and usrnames of passengers who have flown with the same airplane

SELECT name, surname
FROM passengers 
INNER JOIN flights_has_passengers ON passengers.id = flights_has_passengers.passengers_id
INNER JOIN flights ON flights.id = flights_has_passengers.flights_id
INNER JOIN airplanes ON flights.airplanes_id = airplanes.id
GROUP BY passengers.id
HAVING count(airplanes.id) = 1