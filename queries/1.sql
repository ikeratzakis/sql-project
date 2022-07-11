--Find the airplane numbers of planes built by "Airbus", which are used by "Lufthansa"

SELECT airplanes.number
FROM airlines 
INNER JOIN airlines_has_airplanes ON airlines.id = airlines_has_airplanes.airlines_id 
INNER JOIN airplanes ON airlines_has_airplanes.airplanes_id = airplanes.id
WHERE airlines.name = 'Lufthansa'
