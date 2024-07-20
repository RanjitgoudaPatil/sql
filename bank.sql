CREATE DATABASE bank_details;
USE bank_details

CREATE TABLE bank_details (bank_id int,account_holder VARCHAR(100),bank_name VARCHAR(50),branch_code INT,balance BIGINT,is_active BOOLEAN);

ALTER TABLE bank_details ADD COLUMN account_type VARCHAR(50);
ALTER TABLE bank_details ADD COLUMN employees bigint;
ALTER TABLE bank_details ADD COLUMN no_of_users bigint;
ALTER TABLE bank_details ADD COLUMN transaction_limit BIGINT;
ALTER TABLE bank_details ADD COLUMN no_of_branches BIGINT;

ALTER TABLE bank_details RENAME COLUMN account_holder TO holder_name;
ALTER TABLE bank_details RENAME COLUMN bank_name TO bank;
ALTER TABLE bank_details RENAME COLUMN branch_code TO branch;



INSERT INTO bank_details VALUES(1001, 'ranjit', 'SBI', 12345, 25000, TRUE, 'Savings', 10000, 200000, 100000, 5000);
INSERT INTO bank_details VALUES(1002, 'osama', 'CANARA Bank', 54321, 15000, TRUE, 'Checking', 20000,1000000 , 50000, 10000);
INSERT INTO bank_details VALUES(1003, 'nagaprasanna', 'ICICI', 98765, 5000, FALSE, 'Savings', 10000, 2000000, 20000, 0);
INSERT INTO bank_details VALUES(1004, 'prem', 'BARODA', 24680, 35000, TRUE, 'Checking', 20000, 1000000, 70000, 20000);
INSERT INTO bank_details VALUES(1005, 'tarun', 'HDFC', 13579, 100000, TRUE, 'Savings', 10000, 3000000, 150000, 30000);
INSERT INTO bank_details VALUES(1006, 'preethesh', 'SYNDICATE', 86420, 7500, TRUE, 'Checking', 20000, 4000000, 25000, 5000);
INSERT INTO bank_details VALUES(1007, 'swastik', 'INDAIN BANK', 97531, 45000, TRUE, 'Savings', 10000, 5000000, 80000, 10000);
INSERT INTO bank_details VALUES(1008, 'swamy', 'RBI', 75309, 3000, FALSE, 'Checking', 20000, 6000000, 10000, 0);
INSERT INTO bank_details VALUES(1009, 'harish', 'INDAIN OOC BANK', 80246, 85000, TRUE, 'Savings', 10000, 3500000, 120000, 25000);
INSERT INTO bank_details VALUES(1010, 'praksh', 'AXIS', 45678, 20000, TRUE, 'Checking', 20000, 2000000, 40000, 5000);

DESC bank_details;

UPDATE bank_details SET balance = 7000 WHERE bank_id = 1003;
UPDATE bank_details SET holder_name ='prashanth' WHERE bank_id = 1004;
UPDATE bank_details SET balance = 10000 WHERE bank_id = 1010;
UPDATE bank_details SET balance = 5000 WHERE bank_id = 1008;
UPDATE bank_details SET balance = 15000 WHERE bank_id = 1009;

DELETE FROM bank_details WHERE bank_id = 1008;
DELETE FROM bank_details WHERE bank_id = 1007;
DELETE FROM bank_details WHERE bank_id = 1006;

SELECT * FROM bank_details WHERE balance=10000 AND active = TRUE;
SELECT * FROM bank_details WHERE  bank='SBI' OR active = true;
SELECT * FROM bank_details WHERE bank_id IN (1001,1003,1005);
SELECT * FROM bank_details WHERE bank_id Not IN (1001,1003,1005);