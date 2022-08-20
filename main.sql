-- POSTGRES NOTES
-- By: Anderson Marín

/l -- List all database
/c -- Connect with a specific database
/dt -- Describe tables
/! clc -- Clean screen


-- DATATYPES
CHAR(size)  -- Fixed length string
CHARACTER(size)  -- Fixed length string
VARCHAR(size) -- Variable length string
TEXT  -- Variable length string
BIT(size) -- Fixed length bit
VARBIT(size) -- Fixed length bit
SMALLINT -- 2 byte signed integer
INT, INTEGER -- 4 byte signed integer
BIGINT -- 8 byte signed integer
SAMLLSERIAL -- Autoincrementing 2 byte signed integer
SERIAL -- Autoincrementing 4 byte signed integer
BIGSERIAL -- Autoincrementing 8 byte signed integer
NUMERIC(m, d) -- (m) total of digits, (d) total of decimals
MONEY -- Currency value
BOOL, BOOLEAN -- True or false
DATE -- Dates


-- CONSTRAINS
PRIMARY KEY
FOREIGN KEY
UNIQUE -- Must be an unique value
NOT NULL -- It can't be null
REFERENCES -- Create a relation with another table


-- DATABASES
CREATE DATABASE prueba; -- Create a new database
DROP DATABASE prueba; -- Delete a database


-- TABLES
CREATE TABLE table1  -- Create a new table
(
  -- Table attributes
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(255) UNIQUE,
  ciudad INTEGER,
  FOREIGN KEY (ciudad) REFERENCES ciudades (id)
);

DROP TABLE table1;  -- Delete a table

-- Insert data (arrows)
INSERT INTO table1 (nombre, ciudad) VALUES ('Anderson', 'Bogotá');  
INSERT INTO table1 (nombre) VALUES ('Martina');
INSERT INTO table1 (ciudad) VALUES ('Buenos Aires'); 
INSERT INTO table1 (nombre, ciudad) VALUES ('Pablo', 'Medellín'), ('Carolina', 'Pasto');


-- SELECT DATA
SELECT * FROM table1; -- Select all from the table
SELECT nombre FROM table1;  -- Select a specific column


-- ORGANIZING DATA
SELECT * FROM table1 ORDER BY nombre; -- Organize ascending
SELECT * FROM table1 ORDER BY nombre DESC; -- Organize descending
SELECT * FROM table1 ORDER BY nombre, ciudad; -- Organize first by nombre and then by ciudad


-- FILTER DATA
SELECT * FROM table1 WHERE nombre='Anderson';
SELECT nombre, ciudad FROM table1 WHERE nombre='Anderson';
SELECT nombre, ciudad FROM table1 WHERE nombre='Anderson' ORDER BY nombre;
SELECT nombre FROM table1 WHERE nombre='Anderson' AND nombre='Martina';
SELECT nombre FROM table1 WHERE nombre='Anderson' OR nombre='Martina';
SELECT nombre FROM table1 WHERE nombre LIKE 'An%';  -- Looking for nombre wich starts with An (Case-sensitive)
SELECT nombre FROM table1 WHERE nombre LIKE '%son';  -- Looking for nombre wich ends with son (Case-sensitive)
SELECT nombre FROM table1 WHERE nombre LIKE '%a%';  -- Looking for nombre wich contains a letter a (Case-sensitive)
SELECT nombre FROM table1 WHERE nombre ILIKE '%SoN';  -- Looking for nombre wich ends with son (Non Case-sensitive)
SELECT DISTINCT nombre from table1; -- Bring just one time every data from nombre
SELECT (nombre || ' ' || ciudad) as 'Nombre y apellido' FROM table1;  -- Concat nombre and ciudad: 'nombre ciudad', and it's shown like a new column, but it doesn't affect the original data
SELECT CONCAT(nombre, ' ', ciudad) as 'Nombre y apellido' FROM table1;  -- Concat nombre and ciudad: 'nombre ciudad', and it's shown like a new column, but it doesn't affect the original data










