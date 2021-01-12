-- create spotify table
CREATE TABLE "spotify" (
	id INT,
	name VARCHAR NOT NULL PRIMARY KEY,
	album VARCHAR NOT NULL, 
	artists VARCHAR NOT NULL,
	explicit BOOLEAN, 
	valence DECIMAL,
	tempo DECIMAL,
	year DATE NOT NULL,
	release_date DATE NOT NULL,
	duration_sec DECIMAL,
	duration_min DECIMAL
);

-- if necessary
DROP TABLE spotify;


-- create billboard table
CREATE TABLE "billboard" (
	id INT,
	name VARCHAR NOT NULL PRIMARY KEY,
	artist VARCHAR NOT NULL,
	current_rank INT,
	peak_rank INT,
	weeks_on_chart INT
);

SELECT * FROM spotify;

-- if necessary
DROP TABLE billboard;

