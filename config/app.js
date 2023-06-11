const mysql = require("mysql12")

const connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    database:'test',
});
connection.query(
    'Select * FROM `table` Where `name` = "page" AND `age` > 45',
    function(err, results, fields){
        console.log(results);
        console.log(fields);
    }
);