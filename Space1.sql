CREATE DATABASE SPACE;
USE SPACE;

CREATE TABLE Spaceships (
    SpaceshipId INT,
    SpaceName VARCHAR(50),
    Model VARCHAR(50),
    Manufacturer VARCHAR(50),
    LaunchDate LONG,
    Capacity INT,
    FuelType VARCHAR(30),
    SpaceStatus VARCHAR(20)
);

CREATE TABLE Missions (
    MissioNId INT,
    NissionName VARCHAR(50),
    Destination VARCHAR(50),
    SpaceshipId INT,
    LaunchDate LONG,
    DurationDays INT,
    MissionStatus VARCHAR(30),
    Objective TEXT
);

CREATE TABLE Astronauts (
    AstronautId INT,
    AstronautName VARCHAR(50),
    Nationality VARCHAR(50),
    MissionId INT,
    Age INT,
    ExperienceYears INT,
    AstronautRole VARCHAR(30),
    HealthStatus VARCHAR(30)
);

INSERT INTO Spaceships VALUES
(1, 'Orion-X', 'OX-300', 'NASA', 20220115, 6, 'Liquid Hydrogen', 'Active'),
(2, 'Starfire', 'SF-100', 'SpaceX', 20210620, 4, 'Methalox', 'Retired'),
(3, 'NovaGlide', 'NG-450', 'Blue Origin', 20230310, 5, 'Liquid Oxygen', 'Active'),
(4, 'Cosmic Ray', 'CR-22', 'Roscosmos', 20201111, 3, 'Kerosene', 'Active'),
(5, 'Valkyrie', 'VK-88', 'ESA', 20220922, 4, 'Methane', 'Maintenance'),
(6, 'SolAce', 'SA-101', 'ISRO', 20230530, 5, 'Liquid Hydrogen', 'Active'),
(7, 'Zenith', 'ZT-12', 'JAXA', 20210325, 2, 'Hydrazine', 'Retired'),
(8, 'Hyperion', 'HP-55', 'NASA', 20240101, 6, 'Liquid Oxygen', 'Active'),
(9, 'Astralis', 'AS-79', 'SpaceX', 20230810, 5, 'Methalox', 'Maintenance'),
(10, 'Nebula', 'NB-02', 'Blue Origin', 20221218, 4, 'Liquid Methane', 'Active'),
(11, 'Voyager-X', 'VX-70', 'NASA', 20200505, 3, 'Kerosene', 'Retired'),
(12, 'PulseCraft', 'PC-39', 'ESA', 20210709, 4, 'Methane', 'Active'),
(13, 'SkyTram', 'ST-19', 'Roscosmos', 20231011, 2, 'Kerosene', 'Active'),
(14, 'Ignis', 'IG-300', 'ISRO', 20220817, 6, 'Liquid Hydrogen', 'Active'),
(15, 'Orbitera', 'OB-22', 'JAXA', 20210121, 4, 'Hydrazine', 'Maintenance'),
(16, 'Thalassa', 'TH-11', 'NASA', 20240312, 5, 'Liquid Oxygen', 'Active'),
(17, 'Spectra', 'SP-100', 'SpaceX', 20230630, 5, 'Methalox', 'Retired'),
(18, 'Lumos', 'LM-45', 'ESA', 20200914, 3, 'Methane', 'Active'),
(19, 'Helios', 'HL-23', 'Blue Origin', 20221123, 6, 'Liquid Oxygen', 'Maintenance'),
(20, 'Astoria', 'AT-76', 'ISRO', 20210428, 5, 'Liquid Hydrogen', 'Active');
SELECT * FROM Spaceships;

INSERT INTO Missions VALUES
(1, 'Lunar Dawn', 'Moon', 1, 20220210, 14, 'Completed', 'Research and mapping'),
(2, 'Red Horizon', 'Mars', 2, 20210705, 180, 'Completed', 'Colony setup'),
(3, 'Asteroid Miner', 'Belt-Alpha', 3, 20230412, 45, 'Ongoing', 'Resource extraction'),
(4, 'Solar Eye', 'Sun Orbit', 4, 20201201, 30, 'Completed', 'Solar study'),
(5, 'Venus Veil', 'Venus', 5, 20221015, 20, 'Completed', 'Atmospheric research'),
(6, 'Jupiter Probe', 'Jupiter', 6, 20230610, 365, 'Ongoing', 'Radiation survey'),
(7, 'Saturn Rings', 'Saturn', 7, 20210420, 400, 'Aborted', 'Ring particle analysis'),
(8, 'Comet Trail', 'Comet 67P', 8, 20240125, 90, 'Planned', 'Comet surface study'),
(9, 'IceCore', 'Europa', 9, 20230905, 120, 'Ongoing', 'Ice drilling and life scan'),
(10, 'Mercury Dash', 'Mercury', 10, 20221225, 40, 'Completed', 'Heat resistance test'),
(11, 'Nebula Watch', 'Nebula-47', 11, 20200612, 60, 'Completed', 'Gas cloud analysis'),
(12, 'Mars Cargo', 'Mars', 12, 20210801, 180, 'Completed', 'Colony resupply'),
(13, 'Titan Skies', 'Titan', 13, 20231118, 200, 'Ongoing', 'Atmosphere scanning'),
(14, 'Pluto Peak', 'Pluto', 14, 20220901, 500, 'Planned', 'Surface scan'),
(15, 'Solaris One', 'Sun Orbit', 15, 20210228, 100, 'Aborted', 'Solar flare monitoring'),
(16, 'Alpha Reach', 'Alpha Centauri', 16, 20240320, 1000, 'Planned', 'First interstellar'),
(17, 'Luna Lab', 'Moon', 17, 20230707, 14, 'Completed', 'On-site lunar lab testing'),
(18, 'Mars Lab', 'Mars', 18, 20201010, 180, 'Completed', 'Bio-dome test'),
(19, 'Astro Drift', 'Belt-Beta', 19, 20221130, 60, 'Ongoing', 'Mineral extraction'),
(20, 'Exo Reach', 'Exoplanet-X', 20, 20210501, 900, 'Planned', 'Long-range signal relay');

INSERT INTO Astronauts VALUES
(1, 'Alice Vega', 'USA', 101, 38, 10, 'Commander', 'Fit'),
(2, 'Leo Tanaka', 'Japan', 101, 41, 12, 'Engineer', 'Fit'),
(3, 'Kavya Patel', 'India', 102, 35, 8, 'Scientist', 'Fit'),
(4, 'Carlos Mendes', 'Brazil', 102, 36, 7, 'Pilot', 'Fit'),
(5, 'Sophie Dubois', 'France', 103, 39, 11, 'Commander', 'Fit'),
(6, 'Ivan Petrov', 'Russia', 104, 45, 15, 'Scientist', 'Injured'),
(7, 'Lin Wei', 'China', 105, 32, 6, 'Medical Officer', 'Fit'),
(8, 'Amina Yusuf', 'Nigeria', 106, 34, 7, 'Biologist', 'Fit'),
(9, 'Omar Farouk', 'Egypt', 107, 44, 13, 'Engineer', 'Fit'),
(10, 'Greta Berg', 'Germany', 108, 37, 10, 'Commander', 'Fit'),
(11, 'Tom Brooks', 'UK', 109, 40, 9, 'Pilot', 'Fit'),
(12, 'Maria Silva', 'Spain', 110, 33, 5, 'Engineer', 'Fit'),
(13, 'Ravi Nair', 'India', 111, 29, 4, 'Scientist', 'Fit'),
(14, 'Kenji Ito', 'Japan', 112, 42, 14, 'Commander', 'Fit'),
(15, 'Lara Novak', 'Croatia', 113, 36, 8, 'Medical Officer', 'Fit'),
(16, 'Paul Johnson', 'USA', 114, 39, 10, 'Biologist', 'Fit'),
(17, 'Nadia Karim', 'Pakistan', 115, 35, 7, 'Scientist', 'Injured'),
(18, 'Hiroshi Sato', 'Japan', 116, 43, 12, 'Engineer', 'Fit'),
(19, 'Elena Popov', 'Russia', 117, 46, 16, 'Commander', 'Fit'),
(20, 'Samir Khalid', 'UAE', 118, 30, 5, 'Pilot', 'Fit');

UPDATE Spaceships SET SpaceStatus = 'Retired' WHERE SpaceshipId = 1;
UPDATE Spaceships SET Capacity = 7 WHERE SpaceshipId = 2;
UPDATE Spaceships SET Manufacturer = 'ISRO' WHERE SpaceshipId = 3;
UPDATE Spaceships SET FuelType = 'Methane' WHERE SpaceshipId = 4;
UPDATE Spaceships SET SpaceName = 'Valkyrie-X' WHERE SpaceshipId = 5;
UPDATE Spaceships SET SpaceStatus = 'Inactive' WHERE SpaceshipId = 6;
UPDATE Spaceships SET Capacity = 3 WHERE SpaceshipId = 7;
UPDATE Spaceships SET Manufacturer = 'ESA' WHERE SpaceshipId = 8;
UPDATE Spaceships SET Launchdate = 20250101 WHERE SpaceshipId = 9;
UPDATE Spaceships SET FuelType = 'Kerosene' WHERE SpaceshipId = 10;

UPDATE Missions SET DurationDays = 21 WHERE MissioNId = 11;
UPDATE Missions SET MissionStatus = 'Aborted' WHERE MissioNId = 12;
UPDATE Missions SET NissionName = 'Asteroid Miner-X' WHERE MissioNId = 13;
UPDATE Missions SET Objective = 'New solar equipment testing' WHERE MissioNId = 14;
UPDATE Missions SET Destination = 'Moon' WHERE MissioNId = 15;
UPDATE Missions SET MissionStatus = 'Cancelled' WHERE MissioNId = 16;
UPDATE Missions SET LaunchDate = 20230101 WHERE MissioNId = 17;
UPDATE Missions SET Objective = 'Sample return mission' WHERE MissioNId = 18;
UPDATE Missions SET SpaceshipId = 5 WHERE MissioNId = 19;
UPDATE Missions SET NissionName = 'Mercury Rush' WHERE MissioNId = 20;

UPDATE Astronauts SET HealthStatus = 'Injured' WHERE id = 201;
UPDATE Astronauts SET Nationality = 'UK' WHERE id = 202;
UPDATE Astronauts SET ExperienceYears = 9 WHERE id = 203;
UPDATE Astronauts SET AstronautRole = 'Navigator' WHERE id = 204;
UPDATE Astronauts SET Age = 40 WHERE id = 205;
UPDATE Astronauts SET HealthStatus = 'Fit' WHERE id = 206;
UPDATE Astronauts SET MissioNId = 103 WHERE id = 207;
UPDATE Astronauts SET AstronautName = 'Amina Y. Yusuf' WHERE id = 208;
UPDATE Astronauts SET ExperienceYears = 10 WHERE id = 209;
UPDATE Astronauts SET Age = 38 WHERE id = 210;

DELETE FROM Spaceships WHERE SpaceStatus = 'Inactive';
DELETE FROM Spaceships WHERE Capacity > 5 AND FuelType = 'Liquid Hydrogen';
DELETE FROM Spaceships WHERE Manufacturer = 'ESA' OR FuelType = 'Hydrazine';
DELETE FROM Spaceships WHERE SpaceshipId IN (3, 7, 13);
DELETE FROM Spaceships WHERE SpaceshipId NOT IN (1, 2, 5, 6);
DELETE FROM Spaceships WHERE SpaceshipId BETWEEN 15 AND 18;
DELETE FROM Spaceships WHERE SpaceshipId NOT BETWEEN 10 AND 20;

DELETE FROM Missions WHERE MissionStatus = 'Cancelled';
DELETE FROM Missions WHERE DurationDays < 50 AND destination = 'Moon';
DELETE FROM Missions WHERE Objective = 'Sample return mission' OR MissioNId=18;
DELETE FROM Missions WHERE MissioNId IN (13, 15, 20);
DELETE FROM Missions WHERE MissioNId NOT IN (1, 2, 4);
DELETE FROM Missions WHERE MissioNId BETWEEN 5 AND 9;
DELETE FROM Missions WHERE MissioNId NOT BETWEEN 16 AND 20;

DELETE FROM Astronauts WHERE HealthStatus = 'Injured';
DELETE FROM Astronauts WHERE Age > 40 AND ExperienceYears < 10;
DELETE FROM Astronauts WHERE Nationality = 'India' OR Nationality = 'Russia';
DELETE FROM Astronauts WHERE AstronautId IN (202, 207, 214);
DELETE FROM Astronauts WHERE AstronautId NOT IN (201, 203, 205);
DELETE FROM Astronauts WHERE AstronautId BETWEEN 215 AND 220;
DELETE FROM Astronauts WHERE AstronautId NOT BETWEEN 200 AND 210;

SELECT * FROM Spaceships WHERE Manufacturer = 'NASA';
SELECT * FROM Missions WHERE MissionStatus = 'Completed';
SELECT * FROM Astronauts WHERE AstronautRole = 'Commander';

SELECT * FROM Spaceships WHERE SpaceStatus = 'Active' AND Capacity >= 5;
SELECT * FROM Spaceships WHERE FuelType = 'Methane' OR FuelType = 'Methalox';
SELECT * FROM Spaceships WHERE SpaceshipId IN (1, 4, 7, 10);
SELECT * FROM Spaceships WHERE SpaceshipId NOT IN (2, 5, 8);
SELECT * FROM Spaceships WHERE SpaceshipId BETWEEN 5 AND 10;
SELECT * FROM Spaceships WHERE SpaceshipId NOT BETWEEN 11 AND 15;

SELECT * FROM Missions WHERE Destination = 'Mars' AND MissionStatus = 'Completed';
SELECT * FROM Missions WHERE DurationDays > 100 OR MissionStatus = 'Ongoing';
SELECT * FROM Missions WHERE MissioNId IN (1, 6, 15);
SELECT * FROM Missions WHERE MissioNId NOT IN (2, 8, 12);
SELECT * FROM Missions WHERE DurationDays BETWEEN 1 AND 10;
SELECT * FROM Missions WHERE DurationDays NOT BETWEEN 20 AND 60;

SELECT * FROM Astronauts WHERE Age > 35 AND ExperienceYears > 8;
SELECT * FROM Astronauts WHERE AstronautRole = 'Engineer' OR AstronautRole = 'Scientist';
SELECT * FROM Astronauts WHERE AstronautId IN (11, 14, 18);
SELECT * FROM Astronauts WHERE AstronautId NOT IN (10, 11, 12);
SELECT * FROM Astronauts WHERE AstronautId BETWEEN 10 AND 20;
SELECT * FROM Astronauts WHERE ExperienceYears NOT BETWEEN 5 AND 10;


UPDATE Spaceships SET SpaceStatus = 'Decommissioned' WHERE Capacity BETWEEN 2 AND 4;
UPDATE Spaceships SET FuelType = 'Hybrid' WHERE SpaceshipId IN (5, 9, 15);
UPDATE Spaceships SET Manufacturer = 'Global Space Org' WHERE SpaceshipId NOT IN (1, 2, 3);

UPDATE Missions SET MissionStatus = 'Delayed' WHERE DurationDays > 30 OR MissionStatus = 'Planned';
UPDATE Missions SET Destination = 'Deep Space' WHERE MissioNId IN (16, 20);
UPDATE Missions SET DurationDays = 10 WHERE MissioNId NOT BETWEEN 1 AND 10;

UPDATE Astronauts SET HealthStatus = 'Training' WHERE Age BETWEEN 28 AND 35;
UPDATE Astronauts SET AstronautRole = 'Mission Specialist' WHERE AstronautId IN (206, 209, 213);
UPDATE Astronauts SET Nationality = 'Alliance' WHERE AstronautId NOT IN (201, 204, 210);

SELECT count(*) AS count_space from Spaceships;
SELECT count(*) AS count_mission from Missions;
SELECT count(*) AS count_astronaut from Astronauts;

SELECT SUM(Capacity) AS sum_capacity FROM Spaceships;
SELECT SUM(DurationDays) AS sum_durationdays FROM Missions;
SELECT SUM(ExperienceYears) AS sum_experianceyears FROM Astronauts;

SELECT MAX(Age) as max_age from Astronauts;
SELECT SpaceName, max(Capacity) as max_capacity from Spaceships;

SELECT min(DurationDays) as min_durationdays from Missions;

select avg(ExperienceYears) as avg_expyears from Astronauts;



select max(Capacity) as max_cap from Spaceships
where FuelType = 'Liquid Hydrogen';

SELECT sum(DurationDays) as total_durdays from Missions
where MissionStatus = 'Completed';

SELECT max(ExperienceYears) as max_expyears from Astronauts
where AstronautRole = 'Commander';

SELECT min(Capacity) as min_fuel from Spaceships
where FuelType = 'Kerosene';

SELECT NissionName, max(SpaceshipId) as max_id from Missions
where MissionStatus = 'Completed';

SELECT sum(DurationDays) as total_days from Missions
where MissioNId <= 10;

SELECT sum(ExperienceYears) as total_years from Astronauts limit 10;






select * from Missions;

SELECT MissionStatus,count(DurationDays) from Missions group by MissionStatus;

SELECT sum(ExperienceYears), AstronautRole from Astronauts group by AstronautRole;


SELECT FuelType, min(Capacity) as min_cap from Spaceships
group by FuelType;



SELECT FuelType, min(Capacity) as min_capacity from Spaceships
group by FuelType HAVING min_capacity > 3;



