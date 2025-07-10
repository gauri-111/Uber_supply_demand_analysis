CREATE DATABASE uber;

Use uber;

drop table uber_requests;

CREATE TABLE uber_requests (
    Request_id INT,
    Pickup_point VARCHAR(50),
    Driver_id INT NULL,
    Driver_Assigned VARCHAR(20),
    Status VARCHAR(30),
    Request_timestamp DATETIME,
    Hours TIME,
    Drop_timestamp DATETIME NULL,
    Duration INT NULL,
    Day_of_Week VARCHAR(15),
    Cateory VARCHAR(15) NULL
);
SET GLOBAL LOCAL_INFILE=ON ;
SHOW VARIABLES LIKE 'local_infile';


LOAD DATA LOCAL INFILE 'D:\\LAB\\Uber.csv'
INTO TABLE uber_requests
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

select * from uber_requests;

					

