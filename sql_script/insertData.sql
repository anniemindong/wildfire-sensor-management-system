-- insert user table data 
insert into user (user_id, encrypted_password, permission) values ( 'admin@sjsu.edu', 'sha1$a3f20a14$1$b741163f72c28dad0328e850efd38df7ec42942b', 'true');
insert into user (user_id, encrypted_password, permission) values ( 'general_user@sjsu.edu', 'sha1$0822d2f0$1$83cd268faadf1aaa3730b43149d26a1e3ef787dd', 'false');

-- insert sensor station table data 
INSERT INTO `sensor_station` (`sensor_station_id`,`longtitude`,`latitude`) VALUES ('1',139.557,20.3905);
INSERT INTO `sensor_station` (`sensor_station_id`,`longtitude`,`latitude`) VALUES ('2',-173.595,67.0076);
INSERT INTO `sensor_station` (`sensor_station_id`,`longtitude`,`latitude`) VALUES ('3',-122.056,-25.0755);
INSERT INTO `sensor_station` (`sensor_station_id`,`longtitude`,`latitude`) VALUES ('4',49.1384,39.5467);
INSERT INTO `sensor_station` (`sensor_station_id`,`longtitude`,`latitude`) VALUES ('5',-67.1095,-22.3267);

-- insert sensor table data
INSERT INTO `sensor` (`sensor_id`,`installation_time`,`status`,`sensor_station_id`,`longtitude`,`latitude`) VALUES ("S1","2020-02-24 22:57:40","NORMAL","1","-151.32404","-61.36329");
INSERT INTO `sensor` (`sensor_id`,`installation_time`,`status`,`sensor_station_id`,`longtitude`,`latitude`) VALUES ("S2","2019-05-16 18:40:45","NORMAL","1","-24.49088","18.07892");
INSERT INTO `sensor` (`sensor_id`,`installation_time`,`status`,`sensor_station_id`,`longtitude`,`latitude`) VALUES ("S3","2019-01-17 06:14:25","NORMAL","1","103.09697","84.36629");
INSERT INTO `sensor` (`sensor_id`,`installation_time`,`status`,`sensor_station_id`,`longtitude`,`latitude`) VALUES ("S4","2019-08-08 11:01:30","NORMAL","1","17.69457","82.58966");
INSERT INTO `sensor` (`sensor_id`,`installation_time`,`status`,`sensor_station_id`,`longtitude`,`latitude`) VALUES ("S5","2019-01-02 12:50:09","BATTERY LOW","1","127.33973","4.58336");

-- insert sensor_data table data
-- 12/3
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-03 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-03 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-03 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-03 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-03 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-03 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 23:00:00', 'S1', '121.7557', '-10.6012');
-- 12/4
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-04 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-04 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-04 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-04 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-04 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-04 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (19.31,	'2019-12-04 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-04 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 14:00:00', 'S1', '121.7557', '-10.6012');

-- 12/2
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-02 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-02 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-02 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-02 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-02 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-02 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 23:00:00', 'S1', '121.7557', '-10.6012');

-- 12/1
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-01 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-01 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-01 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-01 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-01 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-01 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 23:00:00', 'S1', '121.7557', '-10.6012');

-- 11/30
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-30 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-30 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-30 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-30 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-30 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-30 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 23:00:00', 'S1', '121.7557', '-10.6012');

-- 11/29
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-29 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-29 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-29 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-29 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-29 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-29 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 23:00:00', 'S1', '121.7557', '-10.6012');

-- 11/28
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 0:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 1:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 2:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 3:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 4:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 5:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 6:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-28 7:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-28 8:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 9:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-28 10:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 11:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 12:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-28 13:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-28 14:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 15:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 16:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 17:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 18:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 19:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 20:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 21:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-28 22:00:00', 'S1', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 23:00:00', 'S1', '121.7557', '-10.6012');

-- S5
-- 12/3
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-03 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-03 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-03 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-03 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-03 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-03 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-03 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-03 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-03 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-03 23:00:00', 'S5', '121.7557', '-10.6012');
-- 12/4
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-04 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-04 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-04 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-04 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-04 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-04 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-04 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (19.31,	'2019-12-04 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-04 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-04 14:00:00', 'S5', '121.7557', '-10.6012');

-- 12/2
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-02 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-02 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-02 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-02 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-02 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-02 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-02 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-02 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-02 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-02 23:00:00', 'S5', '121.7557', '-10.6012');

-- 12/1
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-01 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-12-01 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-12-01 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-12-01 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-01 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-12-01 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-12-01 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-12-01 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-12-01 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-12-01 23:00:00', 'S5', '121.7557', '-10.6012');

-- 11/30
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-30 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-30 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-30 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-30 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-30 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-30 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-30 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-30 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-30 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-30 23:00:00', 'S5', '121.7557', '-10.6012');

-- 11/29
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-29 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-29 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-29 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-29 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-29 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-29 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-29 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-29 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-29 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-29 23:00:00', 'S5', '121.7557', '-10.6012');

-- 11/28
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 0:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 1:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 2:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 3:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 4:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 5:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 6:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-28 7:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (16.31,	'2019-11-28 8:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (15.31,	'2019-11-28 9:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (17.31,	'2019-11-28 10:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 11:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 12:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-28 13:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (18.31,	'2019-11-28 14:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 15:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (14.31,	'2019-11-28 16:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 17:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 18:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (13.31,	'2019-11-28 19:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 20:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 21:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (11.31,	'2019-11-28 22:00:00', 'S5', '121.7557', '-10.6012');
insert into sensor_data (sensor_reading, timestamp, sensor_id, longtitude, latitude) values (12.31,	'2019-11-28 23:00:00', 'S5', '121.7557', '-10.6012'); 

-- insert notification table data

INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n1','High temperature','2019-12-02 20:18:14','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n10','On fire','2019-11-30 11:49:14','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n11','Low battery','2019-11-27 01:37:27','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n12','Damaged','2019-12-02 09:37:44','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n13','Under maintenance','2019-11-29 23:37:41','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n14','Damaged','2019-12-01 14:14:49','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n15','Low battery','2019-12-04 01:39:37','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n16','Under maintenance','2019-11-28 14:17:49','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n17','Damaged','2019-11-30 04:01:24','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n18','Low battery','2019-11-30 04:28:30','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n19','Low battery','2019-11-27 23:28:37','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n2','On fire','2019-11-30 09:35:46','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n20','Damaged','2019-11-28 08:34:30','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n21','Under maintenance','2019-11-28 20:46:22','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n3','On fire','2019-12-02 19:19:23','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n4','High temperature','2019-11-28 16:47:12','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n5','On fire','2019-12-04 00:36:22','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n6','High temperature','2019-11-29 12:15:20','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n7','High temperature','2019-11-27 00:04:53','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n8','On fire','2019-11-28 19:58:55','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n9','High temperature','2019-11-27 02:33:37','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n22','Low battery','2019-12-03 01:39:37','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n23','Low battery','2019-12-03 00:04:53','3');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n24','Low battery','2019-12-03 00:04:53','2');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n25','Low battery','2019-12-04 16:47:12','1');
INSERT INTO `notification` (`notification_id`,`reason`,`timestamp`,`sensor_station_id`) VALUES ('n26','Low battery','2019-12-03 16:47:00','1');


-- insert receive table data
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n11','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n12','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n13','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n14','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n15','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n16','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n17','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n18','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n19','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n20','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n21','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n23','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n25','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n26','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n22','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n24','admin@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n1','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n10','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n2','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n3','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n4','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n5','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n6','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n7','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n8','general_user@sjsu.edu');
INSERT INTO `receive` (`notification_id`,`user_id`) VALUES ('n9','general_user@sjsu.edu');
 
 
  