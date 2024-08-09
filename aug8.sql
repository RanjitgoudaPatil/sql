create database aug8;
use aug8;

CREATE TABLE Users (User_ID INT PRIMARY KEY,User_Name VARCHAR(50),Email VARCHAR(50),contact VARCHAR(50),Address VARCHAR(50),
district VARCHAR(50),State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),Created_at DATETIME);

insert into Users values(1,'chethan','chethan@gmail.com',8548866698,'mamatha nilaya','chitradurga','karnataka',577501,'India',now());
insert into Users values(2, 'Sneha Kulkarni', 'sneha.kulkarni@example.com', '9845198451', 'Brigade Road', 'Bangalore', 'Karnataka', '560002', 'India',now());
insert into Users values(3, 'Rohan Shetty', 'rohan.shetty@example.com', '9845298452', '789 Indiranagar', 'Bangalore', 'Karnataka', '560038', 'India',now());
insert into Users values(4, 'Priya Naik', 'priya.naik@example.com', '9845398453', '101 Koramangala', 'Bangalore', 'Karnataka', '560095', 'India',now());
insert into Users values(5, 'Manoj Desai', 'manoj.desai@example.com', '9845498454', '202 Whitefield', 'Bangalore', 'Karnataka', '560066', 'India',now());
insert into Users values(6, 'Asha Patil', 'asha.patil@example.com', '9845598455', '303 Jayanagar', 'Bangalore', 'Karnataka', '560041', 'India',now());
insert into Users values(7, 'Vikas Gowda', 'vikas.gowda@example.com', '9845698456', '404 JP Nagar', 'Bangalore', 'Karnataka', '560078', 'India',now());
insert into Users values(8, 'Deepa Shenoy', 'deepa.shenoy@example.com', '9845798457', '505 Malleswaram', 'Bangalore', 'Karnataka', '560003', 'India',now());
insert into Users values(9, 'Anil Reddy', 'anil.reddy@example.com', '9845898458', '606 BTM Layout', 'Bangalore', 'Karnataka', '560076', 'India',now());
insert into Users values(10, 'Pooja Pai', 'pooja.pai@example.com', '9845998459', '707 Banashankari', 'Bangalore', 'Karnataka', '560085', 'India',now());
insert into Users values(11, 'Ravi Kiran', 'ravi.kiran@example.com', '9846098460', '808 Rajajinagar', 'Bangalore', 'Karnataka', '560010', 'India',now());
insert into Users values(12, 'Divya S', 'divya.s@example.com', '9846198461', '909 Yelahanka', 'Bangalore', 'Karnataka', '560064', 'India',now());
insert into Users values(13, 'Kiran Kumar', 'kiran.kumar@example.com', '9846298462', '1010 Hebbal', 'Bangalore', 'Karnataka', '560024', 'India',now());
insert into Users values(14, 'Rashmi Joshi', 'rashmi.joshi@example.com', '9846398463', '1111 Sarjapur Road', 'Bangalore', 'Karnataka', '560103', 'India',now());
insert into Users values(15, 'Mohan Babu', 'mohan.babu@example.com', '9846498464', '1212 Electronic City', 'Bangalore', 'Karnataka', '560100', 'India',now());
insert into Users values(16, 'Sunita Rao', 'sunita.rao@example.com', '9846598465', '1313 HSR Layout', 'Bangalore', 'Karnataka', '560102', 'India',now());
insert into Users values(17, 'Gopal Krishna', 'gopal.krishna@example.com', '9846698466', '1414 Bellandur', 'Bangalore', 'Karnataka', '560103', 'India',now());
insert into Users values(18, 'Anjali Patil', 'anjali.patil@example.com', '9846798467', '1515 Marathahalli', 'Bangalore', 'Karnataka', '560037', 'India',now());
insert into Users values(19, 'Suresh Bhat', 'suresh.bhat@example.com', '9846898468', '1616 KR Puram', 'Bangalore', 'Karnataka', '560036', 'India',now());
insert into Users values(20, 'Nisha Reddy', 'nisha.reddy@example.com', '9846998469', '1717 Hennur', 'Bangalore', 'Karnataka', '560043', 'India',now());

select * from Users;

CREATE TABLE User_Profile (Profile_ID INT PRIMARY KEY,User_ID INT,Profile_picture VARCHAR(50),Website VARCHAR(100),district varchar(50),
State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),Created_at DATETIME ,FOREIGN KEY (User_ID) REFERENCES Users(User_ID));

INSERT INTO User_Profile values(101, 1,  'profile1.jpg', 'http://example.com/user1', 'Bangalore', 'Karnataka', 560001,  'India', now()); 
INSERT INTO User_Profile values(102, 2, 'profile2.jpg',  'http://example.com/user2', 'Mysore', 'Karnataka', '570001', 'India', now());
INSERT INTO User_Profile values(103, 3, 'profile3.jpg', 'http://example.com/user3', 'Hubli', 'Karnataka', '580020', 'India',now());
INSERT INTO User_Profile values(104, 4, 'profile4.jpg', 'http://example.com/user4', 'Dharwad', 'Karnataka', '580001', 'India', now());
INSERT INTO User_Profile values(105,5, 'profile5.jpg', 'http://example.com/user5','Bellary', 'Karnataka', '583101', 'India', now());
INSERT INTO User_Profile values(106,6, 'profile6.jpg', 'http://example.com/user6','Tumkur', 'Karnataka', '572101', 'India', now());
INSERT INTO User_Profile values(107,7, 'profile7.jpg', 'http://example.com/user7', 'Udupi', 'Karnataka', '576101', 'India', now());
INSERT INTO User_Profile values(108,8, 'profile8.jpg', 'http://example.com/user8', 'Chikmagalur', 'Karnataka', '577101', 'India', now());
INSERT INTO User_Profile values(109,9, 'profile9.jpg', 'http://example.com/user9', 'Raichur', 'Karnataka', '584101', 'India', now());
INSERT INTO User_Profile values(110,10, 'profile10.jpg', 'http://example.com/user10',  'Shimoga', 'Karnataka', '577201', 'India', now());
INSERT INTO User_Profile values(111,11, 'profile11.jpg', 'http://example.com/user11', 'Kolar', 'Karnataka', '563101', 'India', now());
INSERT INTO User_Profile values(112,12, 'profile12.jpg', 'http://example.com/user12', 'Bidar', 'Karnataka', '585401', 'India', now());
INSERT INTO User_Profile values(113,13, 'profile13.jpg', 'http://example.com/user13','Bagalkot', 'Karnataka', '587101', 'India', now());
INSERT INTO User_Profile values(114,14, 'profile14.jpg', 'http://example.com/user14', 'Gadag', 'Karnataka', '582101', 'India', now());
INSERT INTO User_Profile values(115,15, 'profile15.jpg', 'http://example.com/user15', 'Hassan', 'Karnataka', '573201', 'India', now());
INSERT INTO User_Profile values(116,16, 'profile16.jpg', 'http://example.com/user16', 'Kodagu', 'Karnataka', '571201', 'India', now());
INSERT INTO User_Profile values(117,17, 'profile17.jpg', 'http://example.com/user17', 'Mandya', 'Karnataka', '571401', 'India', now());
INSERT INTO User_Profile values(118,18, 'profile18.jpg', 'http://example.com/user18', 'Dakshina Kannada', 'Karnataka', '575001', 'India', now());
INSERT INTO User_Profile values(119,19, 'profile19.jpg', 'http://example.com/user19',  'Yadgir', 'Karnataka', '585202', 'India', now());
INSERT INTO User_Profile values(120,20, 'profile20.jpg', 'http://example.com/user20',  'Chitradurga', 'Karnataka', '577501', 'India', now());

select*from User_Profile;

CREATE TABLE Orders (Order_ID INT PRIMARY KEY,User_ID INT,ProductName VARCHAR(100),Quantity INT,Price INT,OrderDate DATETIME,
district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),Country VARCHAR(50),FOREIGN KEY (User_ID) REFERENCES Users(User_ID));

INSERT INTO Orders VALUES(201, 1, 'Smartphone', 1, 25000,now(), 'Bangalore', 'Karnataka', '560001', 'India');
INSERT INTO Orders VALUES(202, 2, 'Laptop', 1, 55000,now(), 'Mysore', 'Karnataka', '570001', 'India');
INSERT INTO Orders VALUES(203, 3, 'Headphones', 2, 5000,now(), 'Hubli', 'Karnataka', '580020', 'India');
INSERT INTO Orders VALUES(204, 4, 'Keyboard', 3, 1500, now(),'Dharwad', 'Karnataka', '580001', 'India');
INSERT INTO Orders VALUES(205, 5, 'Mouse', 5, 800,now(), 'Bellary', 'Karnataka', '583101', 'India');
INSERT INTO Orders VALUES(206, 6, 'Monitor', 2, 12000,now(), 'Tumkur', 'Karnataka', '572101', 'India');
INSERT INTO Orders VALUES(207, 7, 'Printer', 1, 7000, now(),'Udupi', 'Karnataka', '576101', 'India');
INSERT INTO Orders VALUES(208, 8, 'Tablet', 1, 20000,now(), 'Chikmagalur', 'Karnataka', '577101', 'India');
INSERT INTO Orders VALUES(209, 9, 'Smartwatch', 3, 8000,now(), 'Raichur', 'Karnataka', '584101', 'India');
INSERT INTO Orders VALUES(210, 10, 'Webcam', 2, 2000,now(), 'Shimoga', 'Karnataka', '577201', 'India');
INSERT INTO Orders VALUES(211, 11, 'Bluetooth Speaker', 1, 3500,now(), 'Kolar', 'Karnataka', '563101', 'India');
INSERT INTO Orders VALUES(212, 12, 'External Hard Drive', 1, 7500,now(), 'Bidar', 'Karnataka', '585401', 'India');
INSERT INTO Orders VALUES(214, 14, 'Air Purifier', 1, 10000,now(), 'Gadag', 'Karnataka', '582101', 'India');
INSERT INTO Orders VALUES(215, 15, 'Electric Kettle', 2, 2000,now(), 'Hassan', 'Karnataka', '573201', 'India');
INSERT INTO Orders VALUES(216, 16, 'Toaster', 1, 1500,now(), 'Kodagu', 'Karnataka', '571201', 'India');
INSERT INTO Orders VALUES(217, 17, 'Washing Machine', 1, 30000,now(), 'Mandya', 'Karnataka', '571401', 'India');
INSERT INTO Orders VALUES(218, 18, 'Refrigerator', 1, 25000,now(), 'Dakshina Kannada', 'Karnataka', '575001', 'India');
INSERT INTO Orders VALUES(219, 19, 'Microwave Oven', 1, 7000,now(), 'Yadgir', 'Karnataka', '585202', 'India');
INSERT INTO Orders VALUES(220, 20, 'Blender', 2, 1800,now(), 'Chitradurga', 'Karnataka', '577501', 'India');

select * from Orders;

CREATE TABLE Products (Product_ID INT PRIMARY KEY,Product_Name VARCHAR(100),Price INT,Stock INT,Category_ID INT,
district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),Created_At DATETIME,Updated_At DATETIME);

INSERT INTO Products (Product_ID, Product_Name, Price, Stock, Category_ID, district, State, Pin_Code,Created_At,Updated_At) VALUES
(1, 'Smartphone', 24999, 150, 1, 'Bangalore', 'Karnataka', '560001',now(),now()),
(2, 'Laptop', 54999, 75, 2, 'Mysore', 'Karnataka', '570001',now(),now()),
(3, 'Headphones', 4999, 200, 3, 'Hubli', 'Karnataka', '580020',now(),now()),
(4, 'Keyboard', 1499, 180, 4, 'Dharwad', 'Karnataka', '580001',now(),now()),
(5, 'Mouse', 799, 220, 4, 'Bellary', 'Karnataka', '583101',now(),now()),
(6, 'Monitor', 11999, 130, 2, 'Tumkur', 'Karnataka', '572101',now(),now()),
(7, 'Printer', 6999, 90, 5, 'Udupi', 'Karnataka', '576101',now(),now()),
(8, 'Tablet', 19999, 110, 1, 'Chikmagalur', 'Karnataka', '577101',now(),now()),
(9, 'Smartwatch', 7999, 160, 6, 'Raichur', 'Karnataka', '584101',now(),now()),
(10, 'Webcam', 1999, 210, 3, 'Shimoga', 'Karnataka', '577201',now(),now()),
(11, 'Bluetooth Speaker', 3499, 140, 7, 'Kolar', 'Karnataka', '563101',now(),now()),
(12, 'External Hard Drive', 7499, 85, 5, 'Bidar', 'Karnataka', '585401',now(),now()),
(13, 'Smart TV', 39999, 60, 2, 'Bagalkot', 'Karnataka', '587101',now(),now()),
(14, 'Air Purifier', 9999, 50, 8, 'Gadag', 'Karnataka', '582101',now(),now()),
(15, 'Electric Kettle', 1999, 175, 9, 'Hassan', 'Karnataka', '573201',now(),now()),
(16, 'Toaster', 1499, 190, 9, 'Kodagu', 'Karnataka', '571201',now(),now()),
(17, 'Washing Machine', 29999, 45, 10, 'Mandya', 'Karnataka', '571401',now(),now()),
(18, 'Refrigerator', 24999, 50, 10, 'Dakshina Kannada', 'Karnataka', '575001',now(),now()),
(19, 'Microwave Oven', 6999, 100, 11, 'Yadgir', 'Karnataka', '585202',now(),now()),
(20, 'Blender', 1799, 150, 9, 'Chitradurga', 'Karnataka', '577501',now(),now());

select * from Products;

CREATE TABLE Categories (Category_ID INT PRIMARY KEY,Category_Name VARCHAR(100),contact bigint,district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),
country varchar(50),Created_At DATETIME,Updated_At DATETIME);

INSERT INTO Categories (Category_ID, Category_Name, contact, district, State, Pin_Code, country,Created_At,Updated_At) VALUES
(1, 'Electronics', 9876543210, 'Bangalore', 'Karnataka', '560001', 'India',now(),now()),
(2, 'Computers', 9876543211, 'Mysore', 'Karnataka', '570001', 'India',now(),now()),
(3, 'Accessories', 9876543212, 'Hubli', 'Karnataka', '580020', 'India',now(),now()),
(4, 'Peripherals', 9876543213, 'Dharwad', 'Karnataka', '580001', 'India',now(),now()),
(5, 'Storage Devices', 9876543214, 'Bellary', 'Karnataka', '583101', 'India',now(),now()),
(6, 'Monitors', 9876543215, 'Tumkur', 'Karnataka', '572101', 'India',now(),now()),
(7, 'Audio Devices', 9876543216, 'Udupi', 'Karnataka', '576101', 'India',now(),now()),
(8, 'Home Appliances', 9876543217, 'Chikmagalur', 'Karnataka', '577101', 'India',now(),now()),
(9, 'Kitchen Appliances', 9876543218, 'Hassan', 'Karnataka', '573201', 'India',now(),now()),
(10, 'Large Appliances', 9876543219, 'Mandya', 'Karnataka', '571401', 'India',now(),now()),
(11, 'Microwave Ovens', 9876543220, 'Dakshina Kannada', 'Karnataka', '575001', 'India',now(),now()),
(12, 'Blenders', 9876543221, 'Yadgir', 'Karnataka', '585202', 'India',now(),now()),
(13, 'Televisions', 9876543222, 'Bagalkot', 'Karnataka', '587101', 'India',now(),now()),
(14, 'Purifiers', 9876543223, 'Gadag', 'Karnataka', '582101', 'India',now(),now()),
(15, 'Small Appliances', 9876543224, 'Kodagu', 'Karnataka', '571201', 'India',now(),now()),
(16, 'Home Comforts', 9876543225, 'Chitradurga', 'Karnataka', '577501', 'India',now(),now()),
(17, 'Cleaning Equipment', 9876543226, 'Shimoga', 'Karnataka', '577201', 'India',now(),now()),
(18, 'Entertainment Systems', 9876543227, 'Raichur', 'Karnataka', '584101', 'India',now(),now()),
(19, 'Fitness Gadgets', 9876543228, 'Kolar', 'Karnataka', '563101', 'India',now(),now()),
(20, 'Health Appliances', 9876543229, 'Bidar', 'Karnataka', '585401', 'India',now(),now());


CREATE TABLE OrderItems (Order_Item_ID INT PRIMARY KEY,Order_ID INT,Product_ID INT,Quantity INT,Price INT,contact bigint,district varchar(50),
State VARCHAR(50),Pin_Code VARCHAR(10),country varchar(50) , FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID));

INSERT INTO OrderItems VALUES(1, 201, 1, 1, 24999, 9876543210, 'Bangalore', 'Karnataka', '560001', 'India');
INSERT INTO OrderItems VALUES(2, 202, 2, 1, 54999, 9876543211, 'Mysore', 'Karnataka', '570001', 'India');
INSERT INTO OrderItems VALUES(3, 203, 3, 2, 9998, 9876543212, 'Hubli', 'Karnataka', '580020', 'India');
INSERT INTO OrderItems VALUES(4, 204, 4, 3, 4497, 9876543213, 'Dharwad', 'Karnataka', '580001', 'India');
INSERT INTO OrderItems VALUES(5, 205, 5, 5, 4000, 9876543214, 'Bellary', 'Karnataka', '583101', 'India');
INSERT INTO OrderItems VALUES(6, 206, 6, 2, 23998, 9876543215, 'Tumkur', 'Karnataka', '572101', 'India');
INSERT INTO OrderItems VALUES(7, 207, 7, 1, 6999, 9876543216, 'Udupi', 'Karnataka', '576101', 'India');
INSERT INTO OrderItems VALUES(8, 208, 8, 1, 19999, 9876543217, 'Chikmagalur', 'Karnataka', '577101', 'India');
INSERT INTO OrderItems VALUES(9, 209, 9, 3, 23997, 9876543218, 'Raichur', 'Karnataka', '584101', 'India');
INSERT INTO OrderItems VALUES(10, 210, 10, 2, 3998, 9876543219, 'Shimoga', 'Karnataka', '577201', 'India');
INSERT INTO OrderItems VALUES(11, 211, 11, 1, 3499, 9876543220, 'Kolar', 'Karnataka', '563101', 'India');
INSERT INTO OrderItems VALUES(12, 212, 12, 1, 7499, 9876543221, 'Bidar', 'Karnataka', '585401', 'India');
INSERT INTO OrderItems VALUES(13, 213, 13, 1, 39999, 9876543222, 'Bagalkot', 'Karnataka', '587101', 'India');
INSERT INTO OrderItems VALUES(14, 214, 14, 1, 9999, 9876543223, 'Gadag', 'Karnataka', '582101', 'India');
INSERT INTO OrderItems VALUES(15, 215, 15, 2, 3998, 9876543224, 'Hassan', 'Karnataka', '573201', 'India');
INSERT INTO OrderItems VALUES(16, 216, 16, 1, 1499, 9876543225, 'Kodagu', 'Karnataka', '571201', 'India');
INSERT INTO OrderItems VALUES(17, 217, 17, 1, 29999, 9876543226, 'Mandya', 'Karnataka', '571401', 'India');
INSERT INTO OrderItems VALUES(18, 218, 18, 1, 24999, 9876543227, 'Dakshina Kannada', 'Karnataka', '575001', 'India');
INSERT INTO OrderItems VALUES(19, 219, 19, 1, 6999, 9876543228, 'Yadgir', 'Karnataka', '585202', 'India');
INSERT INTO OrderItems VALUES(20, 220, 20, 2, 3598, 9876543229, 'Chitradurga', 'Karnataka', '577501', 'India');

select * from OrderItems;

CREATE TABLE Reviews (Review_ID INT PRIMARY KEY,Product_ID INT,User_ID INT,Rating INT,contact bigint,district varchar(50),State VARCHAR(50),
Pin_Code VARCHAR(10),country varchar(50),FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
FOREIGN KEY (User_ID) REFERENCES Users(User_ID));

INSERT INTO Reviews (Review_ID, Product_ID, User_ID, Rating, contact, district, State, Pin_Code, country) VALUES
(1, 1, 1, 5, 9876543210, 'Bangalore', 'Karnataka', '560001', 'India'),
(2, 2, 2, 4, 9876543211, 'Mysore', 'Karnataka', '570001', 'India'),
(3, 3, 3, 3, 9876543212, 'Hubli', 'Karnataka', '580020', 'India'),
(4, 4, 4, 4, 9876543213, 'Dharwad', 'Karnataka', '580001', 'India'),
(5, 5, 5, 2, 9876543214, 'Bellary', 'Karnataka', '583101', 'India'),
(6, 6, 6, 5, 9876543215, 'Tumkur', 'Karnataka', '572101', 'India'),
(7, 7, 7, 4, 9876543216, 'Udupi', 'Karnataka', '576101', 'India'),
(8, 8, 8, 5, 9876543217, 'Chikmagalur', 'Karnataka', '577101', 'India'),
(9, 9, 9, 3, 9876543218, 'Raichur', 'Karnataka', '584101', 'India'),
(10, 10, 10, 4, 9876543219, 'Shimoga', 'Karnataka', '577201', 'India'),
(11, 11, 11, 5, 9876543220, 'Kolar', 'Karnataka', '563101', 'India'),
(12, 12, 12, 3, 9876543221, 'Bidar', 'Karnataka', '585401', 'India'),
(13, 13, 13, 4, 9876543222, 'Bagalkot', 'Karnataka', '587101', 'India'),
(14, 14, 14, 2, 9876543223, 'Gadag', 'Karnataka', '582101', 'India'),
(15, 15, 15, 4, 9876543224, 'Hassan', 'Karnataka', '573201', 'India'),
(16, 16, 16, 3, 9876543225, 'Kodagu', 'Karnataka', '571201', 'India'),
(17, 17, 17, 5, 9876543226, 'Mandya', 'Karnataka', '571401', 'India'),
(18, 18, 18, 4, 9876543227, 'Dakshina Kannada', 'Karnataka', '575001', 'India'),
(19, 19, 19, 3, 9876543228, 'Yadgir', 'Karnataka', '585202', 'India'),
(20, 20, 20, 5, 9876543229, 'Chitradurga', 'Karnataka', '577501', 'India');

select * from Reviews;


CREATE TABLE Suppliers (Supplier_ID INT PRIMARY KEY,Supplier_Name VARCHAR(100),Contact_Name VARCHAR(100),Address VARCHAR(255),Phone VARCHAR(15),
Email VARCHAR(100),district varchar(50),State VARCHAR(50),Pin_Code VARCHAR(10),country varchar(50));

INSERT INTO Suppliers (Supplier_ID, Supplier_Name, Contact_Name, Address, Phone, Email, district, State, Pin_Code, country) VALUES
(1, 'Tech Supply Co.', 'Rajesh Kumar', '123 Tech Park, 5th Floor', '9876543210', 'rajesh@techsupply.com', 'Bangalore', 'Karnataka', '560001', 'India'),
(2, 'Gadget World Ltd.', 'Sita Rao', '456 Gadget Lane, Apt 203', '9876543211', 'sita@gadgetworld.com', 'Mysore', 'Karnataka', '570001', 'India'),
(3, 'Innovative Electronics', 'Arun Patel', '789 Innovation Street, Suite 101', '9876543212', 'arun@innovativeelectronics.com', 'Hubli', 'Karnataka', '580020', 'India'),
(4, 'Digital Essentials', 'Ravi Sharma', '101 Digital Plaza, 4th Floor', '9876543213', 'ravi@digitessentials.com', 'Dharwad', 'Karnataka', '580001', 'India'),
(5, 'Home Appliances Pvt. Ltd.', 'Preeti Agarwal', '202 Appliance Building, 2nd Floor', '9876543214', 'preeti@homeappliances.com', 'Bellary', 'Karnataka', '583101', 'India'),
(6, 'SuperTech Solutions', 'Vikram Singh', '303 SuperTech Road, Block C', '9876543215', 'vikram@supertechsolutions.com', 'Tumkur', 'Karnataka', '572101', 'India'),
(7, 'NextGen Products', 'Anita Kumar', '404 NextGen Avenue, 1st Floor', '9876543216', 'anita@nextgenproducts.com', 'Udupi', 'Karnataka', '576101', 'India'),
(8, 'ElectroMax Corp.', 'Sandeep Reddy', '505 ElectroMax Tower, 3rd Floor', '9876543217', 'sandeep@electromax.com', 'Chikmagalur', 'Karnataka', '577101', 'India'),
(9, 'Gizmo Masters', 'Neha Desai', '606 Gizmo Park, Suite 204', '9876543218', 'neha@gizommasters.com', 'Raichur', 'Karnataka', '584101', 'India'),
(10, 'SmartTech Solutions', 'Kiran Rao', '707 SmartTech Building, 6th Floor', '9876543219', 'kiran@smarttechsolutions.com', 'Shimoga', 'Karnataka', '577201', 'India'),
(11, 'Prime Electronics', 'Arvind Nair', '808 Prime Street, Floor 2', '9876543220', 'arvind@primeelectronics.com', 'Kolar', 'Karnataka', '563101', 'India'),
(12, 'Home Gear', 'Pooja Mehta', '909 Home Gear Complex, 7th Floor', '9876543221', 'pooja@homegear.com', 'Bidar', 'Karnataka', '585401', 'India'),
(13, 'Tech Innovators', 'Suresh Babu', '1010 Tech Avenue, Block B', '9876543222', 'suresh@techinnovators.com', 'Bagalkot', 'Karnataka', '587101', 'India'),
(14, 'Digital Dynamics', 'Ritika Jain', '1111 Digital Plaza, Suite 110', '9876543223', 'ritika@digitaldynamics.com', 'Gadag', 'Karnataka', '582101', 'India'),
(15, 'ElectroEdge Solutions', 'Sunil Chandra', '1212 ElectroEdge Park, 5th Floor', '9876543224', 'sunil@electroedge.com', 'Hassan', 'Karnataka', '573201', 'India'),
(16, 'Advanced Electronics', 'Meena Iyer', '1313 Advanced Tower, 8th Floor', '9876543225', 'meena@advancedelectronics.com', 'Kodagu', 'Karnataka', '571201', 'India'),
(17, 'FutureTech Supply', 'Harish Kumar', '1414 FutureTech Street, Floor 3', '9876543226', 'harish@futuretechsupply.com', 'Mandya', 'Karnataka', '571401', 'India'),
(18, 'TechSavvy', 'Shilpa Reddy', '1515 TechSavvy Lane, Suite 303', '9876543227', 'shilpa@techsavvy.com', 'Dakshina Kannada', 'Karnataka', '575001', 'India'),
(19, 'Innovative Gadgets', 'Vinay Kumar', '1616 Gadget Plaza, 4th Floor', '9876543228', 'vinay@innovativegadgets.com', 'Yadgir', 'Karnataka', '585202', 'India'),
(20, 'HomeTech Solutions', 'Aarti Verma', '1717 HomeTech Complex, 9th Floor', '9876543229', 'aarti@hometechsolutions.com', 'Chitradurga', 'Karnataka', '577501', 'India');

select * from Suppliers;

UPDATE Users SET State = CASE
WHEN district = 'Anytown' THEN 'UpdatedState1'
    WHEN district = 'Othertown' THEN 'UpdatedState2'
    ELSE State
END;


SELECT * FROM Users ORDER BY Created_At DESC LIMIT 5 OFFSET 10;


SELECT User_ID, COUNT(Order_ID) AS TotalOrders, SUM(Quantity) AS TotalQuantity FROM Orders GROUP BY User_ID HAVING SUM(Quantity) > 2;

SELECT * FROM Products ORDER BY Price DESC;