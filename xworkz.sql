USE xworkz;

CREATE TABLE llr_info(id int, holder_name varchar(30), llr_id varchar(30) primary key, dob varchar(20),validity_months int,gender char, created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));
INSERT INTO llr_info values(1, 'Osama','LLRTN102002330456','23/09/2004',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(2,'Aswin','LLRTN102002330890','09/10/1998',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(3,'Mosina','LLRTN102002330768','30/07/2000',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(4,'Azees','LLRTN102002330400','03/03/2001',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(5,'Mujahid','LLRTN102002330231','2/04/2002',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(6,'Thameem','LLRTN102002330490','15/4/1997',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(7,'Sabrin','LLRTN102002330009','10/12/1997',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(8,'Sadhik','LLRTN102002330289','24/02/1990',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(9,'Assadiq','LLRTN102002330473','2/09/1999',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(10,'Hajira','LLRTN102002330333','21/03/2000',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(11,'Kalaiyasari','LLRTN102002330836','11/05/1997',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(12,'Hemalatha','LLRTN102002330256','29/01/1996',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(13,'Farhan','LLRTN102002330285','06/07/2002',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(14,'Babu','LLRTN102002330999','17/07/2002',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(15,'Guru','LLRTN102002330154','23/05/2001',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(16,'Aisha','LLRTN102002330630','20/04/2001',6,'F',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(17,'Irfan','LLRTN102002330080','22/09/1997',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(18,'Prabu','LLRTN102002330411','18/07/1999',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(19,'Vijay','LLRTN102002330161','09/06/2001',6,'M',now(),'Ajee',now(),'Ashif');
INSERT INTO llr_info values(20,'Rabiya','LLRTN102002330884','25/05/2002',6,'F',now(),'Ajee',now(),'Ashif');

INSERT INTO llr_info(id,llr_id,holder_name,gender) values(8,'LLRTN102002330289','Sadhik','M') 
ON DUPLICATE KEY UPDATE holder_name='Basha';
INSERT INTO llr_info(id,llr_id,holder_name,gender) values(19,'LLRTN102002330161','Vijay','M') 
ON DUPLICATE KEY UPDATE holder_name='Gunal';
REPLACE INTO llr_info(id,llr_id,holder_name) values(15,'LLRTN102002330154','Vikram');
SELECT * FROM llr_info;

CREATE TABLE llr_test_info(id int, holder_name varchar(40), gender char, llr_id varchar(25), test_date varchar(30), test_id varchar(25) primary key, created_at timestamp, created_by varchar(20), modified_at timestamp, modified_by varchar(20), foreign key(llr_id) REFERENCES llr_info(llr_id));
INSERT INTO llr_test_info VALUES(1, 'Osama', 'M','LLRTN102002330456', '02/08/2024', '01LLR10TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(2, 'Aswin', 'F','LLRTN102002330890', '02/08/2024', '01LLR11TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(3, 'Mosina', 'F','LLRTN102002330768', '02/08/2024', '01LLR12TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(4, 'Azees', 'M','LLRTN102002330400', '02/08/2024', '01LLR13TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(5, 'Mujahid', 'M','LLRTN102002330231', '03/08/2024', '01LLR14TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(6, 'Thameem', 'M','LLRTN102002330490', '03/08/2024', '01LLR15TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(7, 'Sabrin', 'F','LLRTN102002330009', '03/08/2024', '01LLR16TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(8, 'Sadhik', 'F','LLRTN102002330289', '04/08/2024', '01LLR17TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(9, 'Assadiq', 'M','LLRTN102002330473', '04/08/2024', '01LLR18TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(10, 'Hajira', 'F','LLRTN102002330333', '05/08/2024', '01LLR19TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(11, 'Kalaiyarasi', 'F','LLRTN102002330836', '05/08/2024', '01LLR20TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(12, 'Hemalatha', 'F','LLRTN102002330256', '05/08/2024', '01LLR21TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(13, 'Farhan', 'M','LLRTN102002330285', '05/08/2024', '01LLR22TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(14, 'Babu', 'M','LLRTN102002330999', '05/08/2024', '01LLR23TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(15, 'Guru', 'M','LLRTN102002330154', '05/08/2024', '01LLR24TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(16, 'Aisha', 'F','LLRTN102002330630', '06/08/2024', '01LLR25TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(17, 'Irfan', 'M','LLRTN102002330080', '06/08/2024', '01LLR26TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(18, 'Prabu', 'M','LLRTN102002330411', '06/08/2024', '01LLR27TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(19, 'Vijay', 'M','LLRTN102002330161', '06/08/2024', '01LLR28TNTEST', now(), 'Muhammed', now(), 'Haji');
INSERT INTO llr_test_info VALUES(20, 'Rabiya', 'F','LLRTN102002330884', '06/08/2024', '01LLR29TNTEST', now(), 'Muhammed', now(), 'Haji');

INSERT INTO llr_test_info(id,test_id,holder_name) values(15,'01LLR24TNTEST','Guru') ON DUPLICATE KEY UPDATE holder_name='Kavin';

INSERT INTO llr_test_info(id,test_id,holder_name) values(13,'01LLR22TNTEST','Farhan') ON DUPLICATE KEY UPDATE holder_name='FashanBasha';

SELECT * FROM llr_test_info;

REPLACE INTO llr_test_info(id,test_id,holder_name) values(7,'01LLR16TNTEST','Ammu');

CREATE TABLE driving_licence_info(id int not null, holder_name varchar(40), gender char, d_licence_id varchar(20) primary key, llr_id varchar(30), test_id varchar(30), foreign key (llr_id) REFERENCES llr_info(llr_id), foreign key (test_id) REFERENCES llr_test_info(test_id));
ALTER TABLE driving_licence_info ADD COLUMN created_at timestamp, ADD COLUMN created_by varchar(20), ADD COLUMN modified_at timestamp, ADD COLUMN modified_by varchar(20);

INSERT INTO driving_licence_info VALUES(1, 'Osama', 'M', 'TN29-010211', 'LLRTN102002330456', '01LLR10TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(2, 'Aswin', 'F', 'TN29-020212', 'LLRTN102002330890', '01LLR11TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(3, 'Mosina', 'F', 'TN29-030213', 'LLRTN102002330768', '01LLR12TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(4, 'Azees', 'M', 'TN29-040214', 'LLRTN102002330400', '01LLR13TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(5, 'Mujahid', 'M', 'TN29-050215', 'LLRTN102002330231', '01LLR14TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(6, 'Thameem', 'M', 'TN29-060216', 'LLRTN102002330490', '01LLR15TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(7, 'Sabrin', 'F', 'TN29-070217', 'LLRTN102002330009', '01LLR16TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(8, 'Sadhik', 'M', 'TN29-080218', 'LLRTN102002330289', '01LLR17TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(9, 'Assadiq', 'M', 'TN29-090219', 'LLRTN102002330473', '01LLR18TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(10, 'Hajira', 'F', 'TN29-100220', 'LLRTN102002330333', '01LLR19TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(11, 'Kalaiyarsi', 'F', 'TN29-110221', 'LLRTN102002330836', '01LLR20TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(12, 'Hemalatha', 'F', 'TN29-120222', 'LLRTN102002330256', '01LLR21TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(13, 'Farhan', 'M', 'TN29-130223', 'LLRTN102002330285', '01LLR22TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(14, 'Babu', 'M', 'TN29-140224', 'LLRTN102002330999', '01LLR23TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(15, 'Kavin', 'M', 'TN29-150225', 'LLRTN102002330154', '01LLR24TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(16, 'Aisha', 'F', 'TN29-160226', 'LLRTN102002330630', '01LLR25TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(17, 'Irfan', 'M', 'TN29-170227', 'LLRTN102002330080', '01LLR26TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(18, 'Prabu', 'M', 'TN29-180228', 'LLRTN102002330411', '01LLR27TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(19, 'Gunal', 'M', 'TN29-190229', 'LLRTN102002330161', '01LLR28TNTEST', NOW(), 'Johnson', now(), 'Jessy');
INSERT INTO driving_licence_info VALUES(20, 'Rabiya', 'F', 'TN29-200230', 'LLRTN102002330884', '01LLR29TNTEST', NOW(), 'Johnson', now(), 'Jessy');

INSERT INTO driving_licence_info(id,d_licence_id,holder_name) values(15,'TN29-150225','Kavin') ON DUPLICATE KEY UPDATE holder_name='Paramesh';

INSERT INTO driving_licence_info(id,d_licence_id,holder_name) values(16,'TN29-160226','Aisha') ON DUPLICATE KEY UPDATE holder_name='Nafeeza';

REPLACE INTO driving_licence_info(id,d_licence_id,holder_name) values(18,'TN29-180228','Jagan');

SELECT * FROM driving_licence_info;

CREATE TABLE driving_licence_test_info(id int not null, holder_name varchar(30), gender char, mobile_no bigint, d_licence_id varchar(20), result enum('pass', 'fail'), created_at timestamp, created_by varchar(20), modified_at timestamp, modified_by varchar(20), foreign key(d_licence_id) REFERENCES driving_licence_info (d_licence_id));

INSERT INTO driving_licence_test_info VALUES(1, 'Osama', 'M', 9952644231, 'TN29-010211', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(2, 'Aswin', 'f', 8122516362, 'TN29-020212', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(3, 'Mosina', 'f', 9952762513, 'TN29-030213', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(4, 'Azees', 'M', 9842666771, 'TN29-040214', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(5, 'Mujahid', 'M', 8107827484, 'TN29-050215', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(6, 'Thameem', 'M', 9629387645, 'TN29-060216', 'pass', now(), 'abhi', now(), 'Tailor Akka');
INSERT INTO driving_licence_test_info VALUES(7, 'Sabrin', 'M', 9600357831, 'TN29-070217', 'pass', now(), 'abhi', now(), 'Tailor Akka');