-- Create tables for raw data to be loaded into

CREATE TABLE film_data (
id INT PRIMARY KEY,
Title TEXT,
Domestic_Sales Money
International_Sales Money
Total_Sales Money
);


CREATE TABLE actor_data (
index INT PRIMARY KEY,
imdbID TEXT,
imdbVotes TEXT,
Director character varying,
Actors character varying
);


-- Joins tables
select actor_data.id,
	actor_data.imdbID,
	actor_data.imdbVotes,
	actor_data.Director,
	actor_data.Actors
from actor_data  
join film_data 
on actor_data.id = film_data.id;

