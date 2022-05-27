const mysql = require('mysql');

const connection = mysql.createConnection({
host: 'localhost',
user: 'root',
database: 'company_db',
password: 'y2ky2k',
});
 
module.exports = connection;