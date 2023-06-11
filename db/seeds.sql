INSERT INTO department(department_name)
VALUES("Engineering"), 
("Sales"), 
("Finance"), 
("Legal");

INSERT INTO role(role_title, salary, department_id)
VALUES("Engineer", 85000, 1), 
("Senior Engineer", 125000, 1),
("Sales", 60000, 2),
("Senior Sales", 100000, 2),
("Accountant", 120000, 3),
("Senior Accountant", 130000, 3), 
("Counsel", 180000, 4), 
("Chief Counsel", 300000, 4);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ('Timmy', 'Random', 1, 2), 
('Josh', 'Hill', 2, null), 
('Vega', 'Rodriguez', 3, 2), 
('Cody', 'Kowlwaski', 2, 2), 
('Phill', 'Rhodes', 4, null);