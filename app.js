const express = require ('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const mysql = require('mysql');

require('dotenv').config();


const app = express();
const port = process.env.PORT || 3001;

// Parsing Middleware
app.use(bodyParser.urlencoded({extended: false}));

//Parse Application/json
app.use(bodyParser.json());

//express
app.use(express.static('public'));

app.listen(port, () => console.log(`Listening on port ${port}`));