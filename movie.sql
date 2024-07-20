CREATE DATABASE movie_info;
USE movie_info;
CREATE TABLE movie_info (movie_id INT ,title VARCHAR(100),director VARCHAR(50),year INT,budget BIGINT,blockbuster BOOLEAN);
INSERT INTO movie_info values(1, 'bajaranji', 'tarun',2016,500000000,true);
INSERT INTO movie_info values(2, 'KGF', 'prem',2018,600000000,true);
INSERT INTO movie_info values(3, 'KGF2', 'prem',2020,1000000000,true);
INSERT INTO movie_info values(4, 'vikranth_Rona', 'osama',2022,100000000,false);
INSERT INTO movie_info values(5, 'katera', 'venkatesh',2023,900000000,true);
TRUNCATE movie_info;


ALTER TABLE movie_info ADD genre VARCHAR(50);
ALTER TABLE movie_info ADD rating DECIMAL(3,1);
ALTER TABLE movie_info ADD country VARCHAR(50);
ALTER TABLE movie_info ADD language VARCHAR(50);
ALTER TABLE movie_info ADD runtime_minutes INT;


ALTER TABLE movie_info RENAME COLUMN director TO film_director;
ALTER TABLE movie_info RENAME COLUMN budget TO production_cost;
ALTER TABLE movie_info RENAME COLUMN blockbuster TO is_blockbuster;
ALTER TABLE movie_info RENAME COLUMN language TO film_language;

DESC movie_info;

INSERT INTO movie_info values(1, 'bajaranji', 'tarun',2016,500000000,true,'action',4.1,'Indai','kannada',150);
INSERT INTO movie_info values(2, 'KGF', 'prem',2018,1000000000,true,'action',5,'Indai','kannada',180);
INSERT INTO movie_info values(3, 'KGF2', 'prem',2022,2500000000,true,'action',5,'Indai','kannada',180);
INSERT INTO movie_info values(4, 'vikranth_Rona', 'Sudeep',2022,600000000,false,'drama',3.1,'Indai','kannada',150);
INSERT INTO movie_info values(5, 'katera', 'venkatesh',2023,500000000,true,'family',5,'Indai','kannada',170);
INSERT INTO movie_info values(6, 'bajarangi2', 'tarun',2021,500000000,true,'action',4,'Indai','kannada',140);
INSERT INTO movie_info values(7, 'salara', 'prashanth',2023,2000000000,true,'action',5,'Indai','Telugu',200);
INSERT INTO movie_info values(8, 'kalki', 'prabhas',2024,2500000000,true,'action',5,'Indai','Telugu',200);
INSERT INTO movie_info values(9, 'kanthara', 'rishabh',2023,500000000,true,'god',5,'Indai','kannada',160);
INSERT INTO movie_info values(10, 'bahubali', 'rajmouli',2016,5000000000,true,'action',5,'Indai','Telugu',200);

UPDATE movie_info SET genre = 'Action', rating = 5.0 WHERE movie_id IN (1, 2, 3);
UPDATE movie_info SET title = 'bahubali2', rating = 5.0 WHERE movie_id=10;
UPDATE movie_info SET genre = 'Action', rating = 5.0 WHERE movie_id IN (4,5,6);
UPDATE movie_info SET year= 2016, rating = 4.0 WHERE movie_id IN (2,5);
UPDATE movie_info SET genre = 'romantic', rating = 4.0 WHERE movie_id IN (8,9,7);

DELETE FROM movie_info WHERE movie_id = 7;
DELETE FROM movie_info WHERE movie_id = 10;
DELETE FROM movie_info WHERE movie_id = 8;

SELECT * FROM movie_info WHERE year > 2020 AND genre = 'action';
SELECT * FROM movie_info WHERE year > 2018 OR genre = 'action';
SELECT * FROM movie_info WHERE movie_id IN (1, 3, 5);
SELECT * FROM movie_info WHERE movie_id Not IN (1, 3, 5);


