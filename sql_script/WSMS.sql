drop database if exists wsms ;
create database wsms;
use wsms;

create table sensor_station
	 (sensor_station_id  varchar(20),
	  longtitude float(15),
	  latitude float(15),
	  primary key (sensor_station_id)
	 );
     
	
create table sensor
	 (sensor_id varchar(10) not null, 
	  installation_time TIMESTAMP, 
	  status  varchar(100), 
	  sensor_station_id varchar(10),
      longtitude float(15),
	  latitude float(15),
	  primary key (sensor_id),
	  foreign key (sensor_station_id) references sensor_station(sensor_station_id)
	  on delete cascade
	  on update cascade
	 );


create table sensor_data
	 (sensor_reading  varchar(20),
	  timestamp  TIMESTAMP,
	  sensor_id  varchar(20),
      longtitude float(15),
	  latitude float(15),
	  primary key (sensor_id, timestamp),
	  foreign key (sensor_id) references sensor (sensor_id) 
	  on delete cascade
	  on update cascade
	 );
	
create table notification
	(notification_id		varchar(20), 
         reason			varchar(100),
	 timestamp		TIMESTAMP,
	 sensor_station_id		varchar(20), 
	 primary key (notification_id),
	 foreign key (sensor_station_id) references sensor_station(sensor_station_id)
	 on delete cascade
	 on update cascade
	);
    
create table user
	 (user_id varchar(100) not null, 
	  encrypted_password varchar(100), 
      permission varchar(100),
	  primary key (user_id)
	 );

    
create table receive
	(
    notification_id		varchar(20), 
    user_id		varchar(100), 
    primary key (notification_id,user_id),
    foreign key(notification_id) references notification(notification_id),
    foreign key(user_id) references user(user_id)
    on delete cascade
	on update cascade
	);
    
create table admin_log
	(
    log_id     INT NOT NULL AUTO_INCREMENT,
    user_id		varchar(100), 
    operation varchar(200),
    timestamp varchar(200),
    sql_op  varchar(2000),
    primary key (log_id, user_id)
    );
    
create table user_log
	(
    log_id     INT NOT NULL AUTO_INCREMENT,
    user_id		varchar(100), 
    operation varchar(200),
    timestamp varchar(200),
    sql_op  varchar(2000),
    primary key (log_id, user_id)
    );
    
DELIMITER $$
DROP PROCEDURE IF EXISTS  InsertSensorData$$
CREATE PROCEDURE InsertSensorData(IN sensor_id VARCHAR(10),IN installation_time TIMESTAMP, IN status  VARCHAR(100),IN sensor_station_id VARCHAR(10), IN longtitude FLOAT(15), IN latitude FLOAT(15), OUT message VARCHAR(100))
BEGIN
	DECLARE l_cnt INT DEFAULT 0;
    SELECT COUNT(*)
    INTO l_cnt
    FROM sensor
    WHERE sensor.sensor_id = sensor_id;
    
    IF l_cnt = 0 THEN
		INSERT INTO sensor VALUES(sensor_id, installation_time, status, sensor_station_id, longtitude, latitude);
        SET message = "Insert sensor is success";
	ELSE
		UPDATE sensor SET sensor.installation_time = installation_time, sensor.status = status, sensor.sensor_station_id = sensor_station_id, sensor.longtitude = longtitude, sensor.latitude = latitude WHERE sensor.sensor_id = sensor_id;
        set message = "Update sensor is success";
    END IF;
 END$$
DELIMITER；

DELIMITER $$
DROP PROCEDURE IF EXISTS  InsertSensorStationData$$
CREATE PROCEDURE InsertSensorStationData(IN sensor_station_id VARCHAR(10), IN longtitude FLOAT(15), IN latitude FLOAT(15), OUT message VARCHAR(100))
 BEGIN
 DECLARE l_cnt INT DEFAULT 0;
    SELECT COUNT(*)
    INTO l_cnt
    FROM sensor_station
    WHERE sensor_station.sensor_station_id = sensor_station_id;
    IF l_cnt = 0 THEN
		INSERT INTO sensor_station VALUES(sensor_station_id, longtitude, latitude);
        SET message = "Insert sensor station is success";
	ELSE
		UPDATE sensor_station SET sensor_station.longtitude = longtitude, sensor_station.latitude = latitude WHERE sensor_station.sensor_station_id = sensor_station_id;
        SET message = "Update sensor station is success";
    END IF;
 END$$
DELIMITER ;

CREATE VIEW alarm_received AS
    SELECT N.notification_id, N.reason, N.timestamp, N.sensor_station_id, R.user_id,S.longtitude, S.latitude   FROM notification  as N JOIN receive as R ON N.notification_id = R.notification_id JOIN sensor_station AS S ON N.sensor_station_id = S.sensor_station_id;

    