const dbEnquiry = require('./db/index');
const inquirer = require('inquirer');
const title ="Employee Tracker";
const logo = require ('asciiart-logo');

const startQuestion = [{
    type:'list',
    name: 'options',
    message: 'What would you like to do?',
    choices: [
        "View All Departments",
        "View All Roles",
        "View All Employees",
        "View Employees By Manager",
        "View Employees By Department",
        "Add Department",
        "Add Role",
        "Add Employee",
        "Update Employee Role",
        "Update Employee Manager",
        "Delete Department", 
        "Delete Role",
        "Delete Employee",
        "Quit"
    ]
}];
function start() {
    inquirer.prompt(startQuestion)
    .then((response) => {
        dbEnquiry(response.options);
    });
}


function init() {
    console.log(logo({
        name: "Employee Tracker",
    }).render());
    start();
}
init();


exports.start = start;