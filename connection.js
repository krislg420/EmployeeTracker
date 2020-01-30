var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    //port: 8080,
    port: 3306,
    user: "root",
    password: "dbpassword",
    database: "employee_tracker"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
});

module.exports = connection