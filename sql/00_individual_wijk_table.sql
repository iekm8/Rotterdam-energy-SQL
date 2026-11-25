-- CREATE TABLE QUERY
 CREATE TABLE wijk_2024 (
    wijk2024 VARCHAR(20) PRIMARY KEY,
    wijknaam2024 VARCHAR(255)
);

-- Deze was mijn eerste CREATE TABLE QUERY , vervolgens had ik mijn table name en kololmnamen veranderd met deze query:

-- ALTER TABLE tabelnaam RENAME COLUMN huidige_kolom TO nieuwe_kolom

-- Deze is mijn SELECT query:



SELECT COUNT(*) AS totaal_aantal_wijken
FROM wijk_2024;
