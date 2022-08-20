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





