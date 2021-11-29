const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;


async function test(){
    const db = require('./core/postgresConnection');
    var sql_result = await db.query('select * from usuarios');
    console.log(sql_result);
}
test()


app.listen(PORT, console.log('Server running in port: '+PORT));