SELECT 
roles.id AS role_id,
roles.role_title, 
roles.salary,
department.department_name
FROM roles
JOIN department 
ON roles.department_id = department.id;

SELECT 
a.id AS employee_id,
a.first_name,
a.last_name, 
c.role_title,
d.department_name,
c.salary,
b.first_name AS manager_firstname,
b.last_name AS manager_lastname
FROM employee a
LEFT JOIN employee b ON a.manager_id = b.id
INNER JOIN roles c ON a.role_id = c.id
INNER JOIN department d ON d.id = c.department_id;

SELECT 
b.first_name AS manager_firstname,
b.last_name AS manager_lastname,
a.id AS employee_id,
a.first_name,
a.last_name, 
c.role_title,
d.department_name,
c.salary
FROM employee a
LEFT JOIN employee b ON a.manager_id = b.id
INNER JOIN roles c ON a.role_id = c.id
INNER JOIN department d ON d.id = c.department_id
WHERE b.first_name = "John" AND b.last_name = "Doe";

SELECT 
concat(b.first_name, " ", b.last_name) AS manager_name
FROM employee a
LEFT JOIN employee b ON a.manager_id = b.id
INNER JOIN roles c ON a.role_id = c.id
INNER JOIN department d ON d.id = c.department_id
WHERE b.first_name IS NOT NULL AND b.last_name IS NOT NULL;

SELECT 
a.id AS employee_id,
a.first_name,
a.last_name, 
c.role_title,
d.department_name,
c.salary,
b.first_name AS manager_firstname,
b.last_name AS manager_lastname
FROM employee a
LEFT JOIN employee b ON a.manager_id = b.id
INNER JOIN roles c ON a.role_id = c.id
INNER JOIN department d ON d.id = c.department_id
WHERE d.department_name = "Sales";

INSERT INTO department (department_name)
VALUES ("Talent");

INSERT INTO roles (role_title, salary, department_id)
VALUES ("Talent Executive", 75000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Phill", "Bill", 4, 3);

UPDATE employee SET role_id = 1
WHERE employee.first_name = "Mike" AND employee.last_name = "Chan";

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Jennifer", "Sam", (SELECT id FROM (SELECT r.id FROM roles r WHERE r.role_title = "Sales Associate") sub), (SELECT id FROM (SELECT e.id FROM employee e WHERE e.first_name = "John" AND e.last_name = "Doe") sub));

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Anna", "Lu", (SELECT r.id FROM roles r WHERE r.role_title = "Sales Lead"), (SELECT e.id FROM employee e WHERE e.first_name = "Ashley" AND e.last_name = "Rodriguez"));

UPDATE employee SET manager_id = (SELECT a.id FROM (SELECT b.id FROM employee b WHERE b.first_name = "Jennifer" AND b.last_name = "Sam") a) WHERE first_name = "Tom" AND last_name = "Allen";


DELETE FROM department WHERE department_name = "Legal";