CREATE DATABASE AIRLINES;
USE AIRLINES; 

CREATE TABLE airlines_info (
    AirlineId INT,
    AirlineName VARCHAR(50),
    Country VARCHAR(50),
    FoundedYear INT,
    ActiveAircraft INT
);

CREATE TABLE country_info (
    CountryId INT,
    CountryName VARCHAR(50),
    Continent VARCHAR(50),
    Population BIGINT,
    Currency VARCHAR(30)
);

CREATE TABLE state_info (
    StateId INT,
    StateName VARCHAR(50),
    CountryName VARCHAR(50),
    Population BIGINT,
    Capital VARCHAR(50)
);

ALTER TABLE airlines_info ADD CeoName VARCHAR(50);
ALTER TABLE airlines_info ADD Headquarters VARCHAR(100);
ALTER TABLE airlines_info ADD Alliance VARCHAR(30);

ALTER TABLE country_info ADD OfficialLanguage VARCHAR(50);
ALTER TABLE country_info ADD IndependenceYear INT;
ALTER TABLE country_info ADD GDP BIGINT;

ALTER TABLE state_info ADD LanguageSpoken VARCHAR(50);
ALTER TABLE state_info ADD Area INT;
ALTER TABLE state_info ADD LiteracyRate INT;


ALTER TABLE airlines_info RENAME COLUMN Country TO BaseCountry;
ALTER TABLE airlines_info RENAME COLUMN FoundedYear TO EstablishedYear;
ALTER TABLE airlines_info RENAME COLUMN ActiveAircraft TO NumberOfAircraft;

ALTER TABLE country_info RENAME COLUMN Population TO TotalPopulation;
ALTER TABLE country_info RENAME COLUMN Currency TO NationalCurrency;
ALTER TABLE country_info RENAME COLUMN Continent TO WorldRegion;

ALTER TABLE state_info RENAME COLUMN Capital TO StateCapital;
ALTER TABLE state_info RENAME COLUMN Population TO CitizenCount;
ALTER TABLE state_info RENAME COLUMN CountryName TO StateCountry;


ALTER TABLE airlines_info MODIFY CeoName VARCHAR(30);
ALTER TABLE airlines_info MODIFY Alliance VARCHAR(50);
ALTER TABLE airlines_info MODIFY Headquarters TEXT;

ALTER TABLE country_info MODIFY OfficialLanguage TEXT;
ALTER TABLE country_info MODIFY GDP DOUBLE;
ALTER TABLE country_info MODIFY IndependenceYear BIGINT;

ALTER TABLE state_info MODIFY LanguageSpoken TEXT;
ALTER TABLE state_info MODIFY LiteracyRate FLOAT;
ALTER TABLE state_info MODIFY Area FLOAT;



INSERT INTO airlines_info (AirlineId, AirlineName, BaseCountry, EstablishedYear, NumberOfAircraft, CeoName, Headquarters, Alliance)
VALUES
(1, 'Air India', 'India', 1932, 120, 'Campbell Wilson', 'New Delhi', 'Star Alliance'),
(2, 'IndiGo', 'India', 2006, 300, 'Pieter Elbers', 'Gurgaon', 'None'),
(3, 'Emirates', 'UAE', 1985, 270, 'Tim Clark', 'Dubai', 'None'),
(4, 'Qatar Airways', 'Qatar', 1993, 230, 'Akbar Al Baker', 'Doha', 'Oneworld'),
(5, 'British Airways', 'UK', 1974, 280, 'Sean Doyle', 'London', 'Oneworld'),
(6, 'Lufthansa', 'Germany', 1953, 290, 'Carsten Spohr', 'Frankfurt', 'Star Alliance'),
(7, 'Air France', 'France', 1933, 240, 'Anne Rigail', 'Paris', 'SkyTeam'),
(8, 'Singapore Airlines', 'Singapore', 1947, 130, 'Goh Choon Phong', 'Singapore', 'Star Alliance'),
(9, 'Delta Air Lines', 'USA', 1924, 900, 'Ed Bastian', 'Atlanta', 'SkyTeam'),
(10, 'American Airlines', 'USA', 1930, 950, 'Robert Isom', 'Fort Worth', 'Oneworld'),
(11, 'United Airlines', 'USA', 1926, 800, 'Scott Kirby', 'Chicago', 'Star Alliance'),
(12, 'Turkish Airlines', 'Turkey', 1933, 370, 'Bilal Ekşi', 'Istanbul', 'Star Alliance'),
(13, 'AirAsia', 'Malaysia', 1993, 200, 'Tony Fernandes', 'Kuala Lumpur', 'None'),
(14, 'Thai Airways', 'Thailand', 1960, 80, 'Chai Eamsiri', 'Bangkok', 'Star Alliance'),
(15, 'ANA', 'Japan', 1952, 250, 'Shinya Katanozaka', 'Tokyo', 'Star Alliance'),
(16, 'JAL', 'Japan', 1951, 160, 'Yuji Akasaka', 'Tokyo', 'Oneworld'),
(17, 'Southwest Airlines', 'USA', 1967, 750, 'Bob Jordan', 'Dallas', 'None'),
(18, 'KLM', 'Netherlands', 1919, 200, 'Marjan Rintel', 'Amsterdam', 'SkyTeam'),
(19, 'Etihad Airways', 'UAE', 2003, 100, 'Antonoaldo Neves', 'Abu Dhabi', 'None'),
(20, 'Vistara', 'India', 2015, 60, 'Vinod Kannan', 'Gurgaon', 'None');

INSERT INTO country_info (CountryId, CountryName, WorldRegion, TotalPopulation, NationalCurrency, OfficialLanguage, IndependenceYear, GDP)
VALUES
(1, 'India', 'Asia', 1400000000, 'INR', 'Hindi', 1947, 3.73),
(2, 'USA', 'North America', 331000000, 'USD', 'English', 1776, 23.32),
(3, 'China', 'Asia', 1440000000, 'CNY', 'Mandarin', 1949, 17.73),
(4, 'UK', 'Europe', 67000000, 'GBP', 'English', 1707, 3.13),
(5, 'Germany', 'Europe', 83000000, 'EUR', 'German', 1871, 4.22),
(6, 'France', 'Europe', 65000000, 'EUR', 'French', 843, 2.94),
(7, 'Japan', 'Asia', 125000000, 'JPY', 'Japanese', 660, 4.94),
(8, 'South Korea', 'Asia', 52000000, 'KRW', 'Korean', 1948, 1.80),
(9, 'Canada', 'North America', 38000000, 'CAD', 'English/French', 1867, 2.20),
(10, 'Australia', 'Oceania', 25000000, 'AUD', 'English', 1901, 1.73),
(11, 'Russia', 'Europe/Asia', 145000000, 'RUB', 'Russian', 1991, 1.78),
(12, 'Brazil', 'South America', 213000000, 'BRL', 'Portuguese', 1822, 2.06),
(13, 'South Africa', 'Africa', 59000000, 'ZAR', 'English/Afrikaans', 1910, 0.42),
(14, 'Mexico', 'North America', 128000000, 'MXN', 'Spanish', 1821, 1.27),
(15, 'Italy', 'Europe', 60000000, 'EUR', 'Italian', 1861, 2.01),
(16, 'Spain', 'Europe', 47000000, 'EUR', 'Spanish', 1479, 1.60),
(17, 'Indonesia', 'Asia', 270000000, 'IDR', 'Indonesian', 1945, 1.20),
(18, 'Saudi Arabia', 'Asia', 35000000, 'SAR', 'Arabic', 1932, 0.85),
(19, 'Argentina', 'South America', 45000000, 'ARS', 'Spanish', 1816, 0.64),
(20, 'Nigeria', 'Africa', 206000000, 'NGN', 'English', 1960, 0.51);

INSERT INTO state_info (StateId, StateName, StateCountry, CitizenCount, StateCapital, LanguageSpoken, Area, LiteracyRate)
VALUES
(1, 'Karnataka', 'India', 61000000, 'Bengaluru', 'Kannada', 191791, 75.6),
(2, 'Maharashtra', 'India', 112000000, 'Mumbai', 'Marathi', 307713, 82.3),
(3, 'California', 'USA', 39500000, 'Sacramento', 'English', 423967, 76.9),
(4, 'Texas', 'USA', 29000000, 'Austin', 'English', 695662, 82.4),
(5, 'Bavaria', 'Germany', 13000000, 'Munich', 'German', 70542, 99.1),
(6, 'Quebec', 'Canada', 8500000, 'Quebec City', 'French', 1542056, 88.5),
(7, 'New South Wales', 'Australia', 8100000, 'Sydney', 'English', 809444, 90.2),
(8, 'Île-de-France', 'France', 12200000, 'Paris', 'French', 12012, 98.0),
(9, 'Tokyo', 'Japan', 14000000, 'Tokyo', 'Japanese', 2191, 99.0),
(10, 'São Paulo', 'Brazil', 46000000, 'São Paulo', 'Portuguese', 248222, 95.4),
(11, 'Gujarat', 'India', 63000000, 'Gandhinagar', 'Gujarati', 196024, 79.3),
(12, 'Punjab', 'India', 30000000, 'Chandigarh', 'Punjabi', 50362, 76.7),
(13, 'Hessen', 'Germany', 6200000, 'Wiesbaden', 'German', 21115, 98.5),
(14, 'Victoria', 'Australia', 6600000, 'Melbourne', 'English', 237629, 91.3),
(15, 'Banten', 'Indonesia', 12000000, 'Serang', 'Indonesian', 9662, 85.0),
(16, 'Uttar Pradesh', 'India', 220000000, 'Lucknow', 'Hindi', 243286, 70.0),
(17, 'Riyadh', 'Saudi Arabia', 8000000, 'Riyadh', 'Arabic', 404240, 94.0),
(18, 'Lombardy', 'Italy', 10000000, 'Milan', 'Italian', 23863, 98.9),
(19, 'Catalonia', 'Spain', 7600000, 'Barcelona', 'Catalan', 32114, 97.5),
(20, 'Lagos', 'Nigeria', 14000000, 'Ikeja', 'English', 3577, 89.7);



UPDATE airlines_info SET CeoName = 'Anne Das' WHERE AirlineId = 1;
UPDATE airlines_info SET Headquarters = 'New DelhiHQ' WHERE AirlineId = 2;
UPDATE airlines_info SET Alliance = 'Super50' WHERE AirlineId = 3;
UPDATE airlines_info SET NumberOfAircraft = 50 WHERE AirlineId = 4;
UPDATE airlines_info SET BaseCountry = 'United Kingdom of America' WHERE AirlineId = 5;
UPDATE airlines_info SET EstablishedYear = 1990 WHERE AirlineId = 6;
UPDATE airlines_info SET CeoName = 'Francies' WHERE AirlineId = 7;
UPDATE airlines_info SET Headquarters = 'Singapore Main headquatrters' WHERE AirlineId = 8;
UPDATE airlines_info SET Alliance = 'WorldFlyers' WHERE AirlineId = 9;
UPDATE airlines_info SET NumberOfAircraft = 110 WHERE AirlineId = 10;

UPDATE country_info SET NationalCurrency = 'NewINR' WHERE CountryId = 1;
UPDATE country_info SET WorldRegion = 'Americas region' WHERE CountryId = 2;
UPDATE country_info SET TotalPopulation = 145670 WHERE CountryId = 3;
UPDATE country_info SET GDP = 3.75 WHERE CountryId = 4;
UPDATE country_info SET OfficialLanguage = 'Deutsch Eng' WHERE CountryId = 5;
UPDATE country_info SET IndependenceYear = 1845 WHERE CountryId = 6;
UPDATE country_info SET NationalCurrency = 'JPYUpdated' WHERE CountryId = 7;
UPDATE country_info SET WorldRegion = 'Asia Pacific Ocean' WHERE CountryId = 8;
UPDATE country_info SET GDP = 2.56 WHERE CountryId = 9;
UPDATE country_info SET TotalPopulation = 2559080 WHERE CountryId = 10;

UPDATE state_info SET LanguageSpoken = 'Hale Kannada' WHERE StateId = 1;
UPDATE state_info SET StateCapital = 'Puna' WHERE StateId = 2;
UPDATE state_info SET LiteracyRate = 80.50 WHERE StateId = 3;
UPDATE state_info SET CitizenCount = 8960000 WHERE StateId = 4;
UPDATE state_info SET Area = 72540 WHERE StateId = 5;
UPDATE state_info SET LanguageSpoken = 'French Eng' WHERE StateId = 6;
UPDATE state_info SET StateCapital = 'SydneyMetro' WHERE StateId = 7;
UPDATE state_info SET LiteracyRate = 99.15 WHERE StateId = 8;
UPDATE state_info SET Area = 163000 WHERE StateId = 9;
UPDATE state_info SET CitizenCount = 4789620 WHERE StateId = 10;



DELETE FROM airlines_info WHERE AirlineId = 20;
DELETE FROM airlines_info WHERE EstablishedYear > 2000 AND NumberOfAircraft < 150;
DELETE FROM airlines_info WHERE BaseCountry = 'USA' OR BaseCountry = 'India';
DELETE FROM airlines_info WHERE AirlineId IN (13, 14, 15);
DELETE FROM airlines_info WHERE AirlineId NOT IN (1, 2, 3);
DELETE FROM airlines_info WHERE EstablishedYear BETWEEN 1930 AND 1950;
DELETE FROM airlines_info WHERE NumberOfAircraft NOT BETWEEN 200 AND 800;

DELETE FROM country_info WHERE CountryName = 'Argentina';
DELETE FROM country_info WHERE GDP < 1.0 AND TotalPopulation > 50000000;
DELETE FROM country_info WHERE WorldRegion = 'Asia' OR WorldRegion = 'Africa';
DELETE FROM country_info WHERE CountryId IN (11, 12, 13);
DELETE FROM country_info WHERE CountryId NOT IN (1, 2, 3);
DELETE FROM country_info WHERE IndependenceYear BETWEEN 1800 AND 1950;
DELETE FROM country_info WHERE GDP NOT BETWEEN 2.0 AND 5.0;

DELETE FROM state_info WHERE StateName = 'Lagos';
DELETE FROM state_info WHERE LiteracyRate < 80 AND CitizenCount > 50000000;
DELETE FROM state_info WHERE StateCountry = 'India' OR StateCountry = 'USA';
DELETE FROM state_info WHERE StateId IN (11, 12, 13);
DELETE FROM state_info WHERE StateId NOT IN (1, 2, 3);
DELETE FROM state_info WHERE Area BETWEEN 10000 AND 800000;
DELETE FROM state_info WHERE LiteracyRate NOT BETWEEN 85.0 AND 99.0;



SELECT * FROM airlines_info WHERE BaseCountry = 'India';
SELECT * FROM country_info WHERE WorldRegion = 'Asia';
SELECT * FROM state_info WHERE CitizenCount > 50000000;

SELECT * FROM airlines_info WHERE NumberOfAircraft > 200 AND EstablishedYear < 2000;
SELECT * FROM airlines_info WHERE BaseCountry = 'USA' OR BaseCountry = 'UK';
SELECT * FROM airlines_info WHERE AirlineId IN (5, 7, 10);
SELECT * FROM airlines_info WHERE AirlineId NOT IN (1, 2, 3);
SELECT * FROM airlines_info WHERE EstablishedYear BETWEEN 1950 AND 2000;
SELECT * FROM airlines_info WHERE NumberOfAircraft NOT BETWEEN 300 AND 800;

SELECT * FROM country_info WHERE GDP > 2.0 AND TotalPopulation < 1500000000;
SELECT * FROM country_info WHERE WorldRegion = 'Europe' OR WorldRegion = 'Asia';
SELECT * FROM country_info WHERE CountryId IN (1, 2, 3, 4);
SELECT * FROM country_info WHERE CountryId NOT IN (11, 12, 13);
SELECT * FROM country_info WHERE IndependenceYear BETWEEN 1700 AND 1950;
SELECT * FROM country_info WHERE GDP NOT BETWEEN 1.0 AND 3.0;

SELECT * FROM state_info WHERE Area > 20000 AND LiteracyRate > 85;
SELECT * FROM state_info WHERE StateCountry = 'India' OR StateCountry = 'USA';
SELECT * FROM state_info WHERE StateId IN (1, 3, 5, 7);
SELECT * FROM state_info WHERE StateId NOT IN (2, 4, 6, 8);
SELECT * FROM state_info WHERE LiteracyRate BETWEEN 80.0 AND 95.0;
SELECT * FROM state_info WHERE CitizenCount NOT BETWEEN 10000000 AND 50000000;





