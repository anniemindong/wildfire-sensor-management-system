const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const app = express();
var passwordHash = require('password-hash');
var bodyParser = require('body-parser');
app.use(bodyParser.json()); 
app.use(bodyParser.urlencoded({ extended: true })); 
var log4js = require('log4js');


log4js.configure({
  appenders: { server: { type: 'file', filename: 'logs/server.log' } },
  categories: { default: { appenders: ['server'], level: 'ALL' } }
});
 
const logger = log4js.getLogger('server');
  
const db_config = {
    host     : 'localhost',
    user     : 'root',
    password : '123456',
    database : 'WSMS',
    multipleStatements: true
}

connection = mysql.createConnection(db_config);
  
connection.connect(err => {
    if(err) {
        return err;
    }
});

app.use(cors());

app.listen(4000, ()=>{
    logger.info(`WSMS servier listening on port 4000`)
});

app.get('/', (req, res) =>{
    res.send(`Connet to database`)
})

//Global variable
var user_id = "user_id";
var isAdmin = "false";

//helper functions
function err_msg(err_code){
    if(err_code === 1452){
        return '{"response" : "Fail to add sensor, please enter a valid sensor station id"}'
    } else if (err_code=== 1062){
        return '{"response" : "Fail to add sensor (station), id already existed, please re-enter"}'
    } else {
        return '{"response" : "Fail to add sensor (station), please try again"}'
    }
}

//logging transaction
function logTransaction(operation, sql) {
    var d = new Date,
            dformat = [d.getMonth()+1,
               d.getDate(),
               d.getFullYear()].join('-')+' '+
              [d.getHours(),
               d.getMinutes(),
               d.getSeconds()].join(':');
    
    const ADMIN_LOG_QUERY = `INSERT INTO admin_log VALUES(NULL, '${user_id}', '${operation}','${d}', "${sql}" )`
    
    const USER_LOG_QUERY = `INSERT INTO user_log VALUES(NULL, '${user_id}','${operation}','${d}',"${sql}" )`
    
    connection.beginTransaction(function(err) {
        if (err) { 
            
            logger.error(err)
            throw err; 
        }
        if(operation == "LOGIN"){
            console.log("Log In operation")
            console.log("User id is")
            console.log(user_id)
            console.log("is admin?")
            console.log(isAdmin)
            console.log("is it true??")
            console.log(isAdmin==="true")
        }
        if(operation == "LOGOUT"){
            console.log("Log out operation")
            console.log("User id is")
            console.log(user_id)
            console.log("is admin?")
            console.log(isAdmin)
            console.log("is it true??")
            console.log(isAdmin==="true")
        }
        if(isAdmin==="true"){
            console.log("I should enter here")
            connection.query(ADMIN_LOG_QUERY, function (error, results, fields) {
                if (error) {
                  logger.error(err)
                  return connection.rollback(function() {
                    throw error;
                  });
                }
                connection.commit(function(err) {
                    if (err) {
                        logger.error(err)
                        return connection.rollback(function() {
                        throw err;
                        });
                    }
                    logger.info('Admin log transaction is sccuess');
                    });
              });

        } else {
            console.log("I shouldn't enter here")
            connection.query(USER_LOG_QUERY, function (error, results, fields) {
                if (error) {
                    logger.error(err)
                return connection.rollback(function() {
                    throw error;
                });
                }
                connection.commit(function(err) {
                if (err) {
                    logger.error(err)
                    return connection.rollback(function() {
                    throw err;
                    });
                }
                logger.info('User log transaction is sccuess');
                });
            });
        }
      });
}

//dashboard
app.get('/dashboard', (req, res) => {
    const user_id = req.query["user_id"]
    const GET_TOTAL_ALARMS_QUERY = `SELECT COUNT(*) FROM notification;`
    const GET_TOTAL_SENSORS_QUERY = `SELECT COUNT(*) FROM sensor;`
    const GET_TOTAL_SENSOR_STATION_QUERY = `SELECT COUNT(*) FROM sensor_station;`
    // const GET_ALARMS_QUERY = `SELECT * FROM alarm_received AS A WHERE A.user_id = '${user_id}'  AND timestamp >= DATE(NOW()) - INTERVAL 1 WEEK + INTERVAL 0 SECOND;`
    const GET_ALARMS_QUERY = `SELECT * FROM alarm_received AS A WHERE A.user_id = '${user_id}';`
    const GET_LAST_WEEK_ALARMS_QUERY = `SELECT COUNT(*), DATE(timestamp) FROM alarm_received AS A WHERE A.user_id = '${user_id}' AND timestamp >= DATE(NOW()) - INTERVAL 1 WEEK + INTERVAL 0 SECOND GROUP BY DATE(timestamp) ORDER BY DATE(timestamp);`

    connection.query(GET_TOTAL_ALARMS_QUERY+GET_TOTAL_SENSORS_QUERY+GET_TOTAL_SENSOR_STATION_QUERY+GET_ALARMS_QUERY+GET_LAST_WEEK_ALARMS_QUERY, (err, results) => {
        if (err) {
            logger.error("Failed to process dashboard query")
            return res.send(err)
        } else {
            logger.info("Successfully processed dashboard query")
            total_alarms = results[0][0]["COUNT(*)"]
            total_sensors = results[1][0]["COUNT(*)"]
            total_sensor_station = results[2][0]["COUNT(*)"]
            alarm_info = results[3]
            last_week_alarms_count = results[4].map(result => result["COUNT(*)"])
            last_week_chart_label = results[4].map(result => result["DATE(timestamp)"].toLocaleDateString())

            const data = {
                "TOTAL ALARMS": total_alarms,
                "TOTAL SENSORS": total_sensors,
                "TOTAL SENSOR STATIONS": total_sensor_station,
                "ALARM INFO": alarm_info,
                "LAST WEEK ALARMS COUNT": last_week_alarms_count,
                "LAST WEEK CHART LABEL": last_week_chart_label
            }
            res.send(data)
        }
    })
})

//register 
app.get('/register', (req, res)=>{
    const email = req.query["email"]
    const password = req.query["pwd"]
    const admin = req.query["admin"]
    const hashedPassword = passwordHash.generate(password);
    const ADD_USER_QUERY = `INSERT INTO user(user_id, encrypted_password, permission) VALUES('${email}', '${hashedPassword}', '${admin}');`

    // const ADD_USER_QUERY = `INSERT INTO user(user_id, encrypted_password, permission) VALUES('${email}', '${password}', '${admin}');`


    connection.query(ADD_USER_QUERY, (err, results)=>{
        if (err) {
            logger.error("Failed to register new user")
            response = "User already exists."
        } else {
            logger.info("Successfully registered new user")
            response = "Successfully register."        
        }
        const data = {
            response : response
        }
        return res.send(data)       
    })

    
})

//login 
app.get(`/login`, (req, res)=>{
    const email = req.query["email"]
    user_id = email

    const password = req.query["pwd"]
    const admin = req.query["admin"]
    isAdmin = admin
    
    console.log("~~~~~~~~~~~hi I am here~~~~~~~")
    console.log(isAdmin)

    const VALID_USER_QUERY = `SELECT user_id, encrypted_password, permission FROM user WHERE user_id = '${email}';`
    connection.query(VALID_USER_QUERY, (err, results)=>{
        if(err){
            logger.error("Failed to login")
            return res.send(err)
        } else {
            logger.info("Successfully proccessed login query")
            if(results.length == 0){
                logger.debug("User not exists.")
                response = "User not exists. Register first!"
            }
            else {
                if(passwordHash.verify(password, results[0]["encrypted_password"])&& results[0]["permission"] == admin){
                // if(results[0]["permission"] == admin) {
                    logger.info("Successfully login")
                    response ="Successfully login."
                    logTransaction("LOGIN", "");
                }else {
                    logger.debug("Passward or permission is not right")
                    response = "Passward or permission is not right, Please re-enter"
                }
            }

            const data = {
                response : response
            }
            return res.send(data)
        }
    })
})

function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
  }

app.get(`/logout`, (req, res)=>{
    logTransaction("LOGOUT", "")
    sleep(500).then(() => {
        user_id = "user_id"
        isAdmin = "false"
    });
    return res.send(`{"response" : OK}`)
})

//search sensor
app.get('/sensor',(req, res)=>{
    const sensor_id = req.query["sensor_id"]
    const sensor_station_id = req.query["sensor_station_id"]

    const SEARCH_SENSOR_QUERY = `SELECT * FROM sensor WHERE sensor_id = '${sensor_id}';`
    const SEARCH_SENSOR_STATION_QUERY= `SELECT DISTINCT sensor_id FROM sensor WHERE sensor.sensor_station_id = '${sensor_station_id}';`
    const SRACH_SENSOR_STATION_INFO_QUERY = `SELECT * FROM sensor_station WHERE sensor_station_id = '${sensor_station_id}';`
    const SENSOR_READING_QUERY = `SELECT sensor_reading FROM sensor_data WHERE sensor_id = '${sensor_id}' ORDER BY timestamp DESC LIMIT 2;`
    const SENSOR_READING_FROM_LAST_WEEK_QUERY = `SELECT timestamp AS timestamp, sensor_reading FROM sensor_data WHERE timestamp >= DATE(NOW()) - INTERVAL 1 WEEK + INTERVAL 0 SECOND AND sensor_id='${sensor_id}';`
    const SENSOR_READING_FROM_TODAY_QUERY = `SELECT TIME(timestamp) AS timestamp, sensor_reading FROM sensor_data WHERE DATE(timestamp) = DATE(NOW()) AND sensor_id='${sensor_id}';`
    const PAGE_QUERY = SEARCH_SENSOR_QUERY+SEARCH_SENSOR_STATION_QUERY+SENSOR_READING_QUERY+SENSOR_READING_FROM_LAST_WEEK_QUERY+SENSOR_READING_FROM_TODAY_QUERY+SRACH_SENSOR_STATION_INFO_QUERY
        
    logTransaction("SEARCH", PAGE_QUERY)
    
    connection.query(PAGE_QUERY, (err, results)=>{
        if(err){
            logger.error("Failed to process search sensor query")
            logger.trace(err)
            return res.send(err)
        }else {
            logger.info("Successfully processed search sensor query")
            sensor_reading_now = parseFloat(results[2][0]["sensor_reading"])
            sensor_reading_before = parseFloat(results[2][1]["sensor_reading"])
            rate = ((sensor_reading_now - sensor_reading_before)/sensor_reading_before).toFixed(2)
            installation_time = results[0][0]["installation_time"].toLocaleDateString()
            status = results[0][0]["status"]
            sensor_longtitude = parseFloat(results[0][0]["longtitude"])
            sensor_latitude = parseFloat(results[0][0]["latitude"])
            sensor_station_sensors = results[1].map(result => result["sensor_id"])
            sensor_reading_week = results[3].map(result => result["sensor_reading"])
            sensor_reading_week_label = results[3].map(result => result["timestamp"])
            sensor_reading_today = results[4].map(result => result["sensor_reading"])
            sensor_reading_today_label = results[4].map(result => result["timestamp"])
            sensor_station_longtitude = parseFloat(results[5][0]["longtitude"])
            sensor_station_latitude = parseFloat(results[5][0]["latitude"])

            const data = {
                "sensor data": sensor_reading_now,
                "rate": rate*100,
                "installation_time": installation_time,
                "status": status,
                "sensor station data": sensor_station_sensors,
                "sensor reading last week": sensor_reading_week,
                "sensor reading last week label": sensor_reading_week_label,
                "sensor reading today": sensor_reading_today,
                "sensor reading today label": sensor_reading_today_label,
                "sensor location": sensor_longtitude+", "+sensor_latitude,
                "sensor station location": sensor_station_longtitude+","+sensor_station_latitude
            }
            return res.send(data)
        }
    })
})

//sensor management
app.post('/sensor', (req, res) => {
    const sensor_id = req.body['sensor_id']
    const latitude = req.body['latitude']
    const longtitude = req.body['longtitude']
    const status = req.body['status']
    const installation_time = req.body['installation_time']
    const sensor_station_id = req.body['sensor_station_id']

// app.get('/addsensor',(req,res)=>{
//     const sensor_id = req.query['sensor_id']
//     const latitude = req.query['latitude']
//     const longtitude = req.query['longtitude']
//     const status = req.query['status']
//     const installation_time = req.query['installation_time']
//     const sensor_station_id = req.query['sensor_station_id']
    let ADD_SENSOR_STORED_PROCEDURE = `CALL InsertSensorData('${sensor_id}','${installation_time}','${status}','${sensor_station_id}','${longtitude}','${latitude}', @message); select @message;`
    logTransaction("ADD_SENSOR", ADD_SENSOR_STORED_PROCEDURE)
    connection.query(ADD_SENSOR_STORED_PROCEDURE, (err, results) => {
        if (err) { 
            logger.error("Failed to add new sensor")     
            logger.trace(err)      
            res.send(err_msg(err['errno']))
        } else {
            msg = results[1][0]["@message"]
            logger.info("Successfully added new sensor") 
            res.send(`{"response" : "${msg}"}`)
        }
    })
})

app.delete('/sensor', (req, res) => {
    const sensor_id = req.body['sensor_id']

    const DELETE_SENSOR_QUERY = `DELETE FROM sensor WHERE sensor_id = '${sensor_id}';`
    logTransaction("DELETE_SENSOR", DELETE_SENSOR_QUERY)
    connection.query(DELETE_SENSOR_QUERY, (err, results) => {
        if (err) {
            logger.error("Failed to delete sensor") 
            logger.trace(err)  
            res.send('{"response" : "Delete failed"}')
        } else {
            logger.info("Successfully deleted sensor") 
            res.send('{"response" : "Delete Sucessful"}')
        }
    })
})

app.post('/sensor_station', (req, res) => {
    const sensor_station_id = req.body['sensor_station_id']
    const latitude = req.body['latitude']
    const longtitude = req.body['longtitude']

// app.get('/addstation',(req,res) =>{
//     const latitude = req.query['latitude']
//     const longtitude = req.query['longtitude']
//     const sensor_station_id = req.query['sensor_station_id']

    let ADD_SENSOR_STATION_STORED_PROCEDURE = `CALL InsertSensorStationData('${sensor_station_id}','${longtitude}','${latitude}', @message); select @message;`
    logTransaction("ADD_SENSOR_STATION", ADD_SENSOR_STATION_STORED_PROCEDURE)
    connection.query(ADD_SENSOR_STATION_STORED_PROCEDURE, (err, results) => {
        if (err) {
            logger.error("Failed to add new sensor station") 
            logger.trace(err)
            res.send(err_msg(err['errno']))
        } else {
            msg = results[1][0]["@message"]
            logger.info("Successfully added/updated new sensor station") 
            res.send(`{"response" : "${msg}"}`)
        }
    })
})

app.delete('/sensor_station', (req, res) => {
    const sensor_station_id = req.body['sensor_station_id']

    const DELETE_SENSOR_STATION_QUERY = `DELETE FROM sensor_station WHERE sensor_station_id = '${sensor_station_id}';`
    logTransaction("DELETE_SENSOR_STATION", DELETE_SENSOR_STATION_QUERY)
    connection.query(DELETE_SENSOR_STATION_QUERY, (err, results) => {
        if (err) {
            logger.error("Failed to delete sensor station") 
            logger.trace(err)
            res.send('{"response" : "Delete failed"}')
        } else {
            logger.info("Successfully deleted sensor station") 
            res.send('{"response" : "Delete Sucessful"}')
        }
    })
})