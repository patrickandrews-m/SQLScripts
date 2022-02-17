CREATE DATABASE FlightsDB;

USE FlightsDB;

CREATE TABLE Airlines(
AirlinesID INT PRIMARY KEY,
AirlinesName VARCHAR(20) NOT NULL);

INSERT INTO Airlines VALUES(1001, 'INDIGO');
INSERT INTO Airlines VALUES(1002, 'Air India');
INSERT INTO Airlines VALUES(1003, 'SpiceJet');
INSERT INTO Airlines VALUES(1004, 'AirAsia');
INSERT INTO Airlines VALUES(1005, 'Aliiance Air');
INSERT INTO Airlines VALUES(1006, 'GoFirst');


CREATE TABLE Travel(
AirlinesID INT FOREIGN KEY REFERENCES Airlines(AirlinesID),
SourceCity VARCHAR(20) NOT NULL,
Destination VARCHAR(20) NOT NULL,
TravelDate DATETIME NOT NULL,
Price FLOAT NOT NULL,
TravelTime VARCHAR(10) NOT NULL);

INSERT INTO Travel VALUES(1001,'Mumbai','Delhi','2022-02-17',1190, '9:30 HRS');
INSERT INTO Travel VALUES(1001,'Mumbai','Delhi','2022-02-17',1190, '14:00 HRS');
INSERT INTO Travel VALUES(1001,'Mumbai','Delhi','2022-02-17',1190, '18:30 HRS');
INSERT INTO Travel VALUES(1002,'Mumbai','Delhi','2022-02-17',1255, '10:00 HRS');
INSERT INTO Travel VALUES(1002,'Mumbai','Delhi','2022-02-17',1255, '15:30 HRS');
INSERT INTO Travel VALUES(1002,'Mumbai','Delhi','2022-02-17',1255, '20:30 HRS');
INSERT INTO Travel VALUES(1003,'Mumbai','Delhi','2022-02-17',1835, '7:00 HRS');
INSERT INTO Travel VALUES(1003,'Mumbai','Delhi','2022-02-17',1835, '14:00 HRS');
INSERT INTO Travel VALUES(1004,'Mumbai','Delhi','2022-02-17',1500, '8:00 HRS');
INSERT INTO Travel VALUES(1004,'Mumbai','Delhi','2022-02-17',1500, '13:30 HRS');
INSERT INTO Travel VALUES(1005,'Mumbai','Delhi','2022-02-17',1980, '16:00 HRS');
INSERT INTO Travel VALUES(1006,'Mumbai','Delhi','2022-02-17',1250, '20:30 HRS');