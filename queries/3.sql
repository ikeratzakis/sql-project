-- Find the number of passengers who traveled on 2012-02-19 using 'Aegean Airlines'

SELECT COUNT(*)
FROM flights INNER JOIN flights_has_passengers ON flights.id = flights_has_passengers.flights_id
WHERE date = '2012-02-19'