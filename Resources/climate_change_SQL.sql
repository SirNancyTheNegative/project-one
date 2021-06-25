--create tables for Greenhouse
CREATE TABLE greenhouse_gas(
	country_or_area VARCHAR NOT NULL,
	year INT NOT NULL,
	value NUMERIC NOT NULL,
	category VARCHAR NOT NULL
	);
	
--create table for Env Temp Change
CREATE TABLE env_temp_change (
	area VARCHAR NOT NULL,
	year INT NOT NULL,
	temp_change NUMERIC NOT NULL
	);
	
--narrow down years in common
SELECT area, year, temp_Change
INTO env_change
FROM env_temp_change
WHERE (year BETWEEN '1990' AND '2014');

--change greenhouse_gas country_or_area to area
ALTER TABLE greenhouse_gas
RENAME COLUMN country_or_area TO area;

--change greenhouse_gas value to co2
ALTER TABLE greenhouse_gas
RENAME COLUMN value TO CO2;

--inner join of env_change & greenhouse_gas
SELECT env_change.area,
	env_change.year,
	env_change.temp_change,
	greenhouse_gas.co2
INTO climate_change
FROM env_change
INNER JOIN greenhouse_gas
ON env_change.year = greenhouse_gas.year AND env_change.area = greenhouse_gas.area;


