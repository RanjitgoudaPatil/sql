CREATE DATABASE college;
USE college;

CREATE TABLE College (CollegeID INT PRIMARY KEY ,CollegeName VARCHAR(100) NOT NULL,City VARCHAR(50) NOT NULL,EstablishedYear INT CHECK (EstablishedYear BETWEEN 1900 AND 2024),Website VARCHAR(100) UNIQUE);

INSERT INTO College  VALUES(1,'SDM ', 'ujire', 1950, 'www.vtu.in');
INSERT INTO College  VALUES(2,'cambridge', 'banglore',1920, 'www.cambridge.in');
INSERT INTO College  VALUES(3,'MIT', 'manglore', 1930, 'www.mit.in');
INSERT INTO College  VALUES(4,'SIT', 'tumkuru',  1940, 'www.SIT.in');
INSERT INTO College  VALUES(5,'chethan', 'banglore', 1960, 'www.chethan.in');
INSERT INTO College  VALUES(6,'osama Institute of Technology', 'tamilnadu', 1991, 'www.osama.in');
INSERT INTO College  VALUES(7,'prem University', 'katmandu', 1946, 'www.katmandu.in');
INSERT INTO College  VALUES(8,'naga University', 'AP', 1901, 'www.naga.in');
INSERT INTO College  VALUES(9,'swastik University', 'sulya', 1954, 'www.swastik.in');
INSERT INTO College  VALUES(10,'University of karma', 'bittubandhalli', 1970, 'www.karma.in');

desc College;

SELECT * FROM College
WHERE EstablishedYear BETWEEN 1950 AND 2000;

SELECT * FROM College WHERE Website LIKE '%in%';

SELECT * FROM College ORDER BY EstablishedYear DESC;

SELECT UPPER(CollegeName) AS UpperCaseCollegeName,CONCAT(CollegeName, ', ', City) AS CollegeCity, LENGTH(Website) AS WebsiteLength FROM College;

CREATE INDEX idx_city ON College(City);

-- Fetching data to utilize the index
SELECT * FROM College WHERE City = 'banglore';


