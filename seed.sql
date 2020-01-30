DROP DATABASE IF EXISTS EmployeeTracker_db;

CREATE DATABASE EmployeeTracker_db;

USE EmployeeTracker_db;

CREATE TABLE department(
id INTEGER auto_increment NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE role(
id INTEGER auto_increment NOT NULL,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INTEGER NOT NULL,
constraint fk_department_id FOREIGN KEY (department_id) references department(id),
PRIMARY KEY(id)
);


CREATE TABLE employee(
id INTEGER auto_increment NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INTEGER NOT NULL,
constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
manager_id INTEGER ,
constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
PRIMARY KEY(id)
);

select * from employee;
select * from role;
select * from department;

INSERT into department (name)
VALUES ("Sales");
INSERT into department (name)
VALUES ("Engineering");
INSERT into department (name)
VALUES ("Finance");
INSERT into department (name)
VALUES ("Legal");
INSERT into department (name)
VALUES ("Manager");

select * from department;

INSERT into role (title, salary, department_id)
VALUES ("Sales Lead", 50000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Salesperson", 40000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Lead Engineer", 63000, 2);
INSERT into role (title, salary, department_id)
VALUES ("Accountant", 55000, 3);
INSERT into role (title, salary, department_id)
VALUES ("Legal", 60000, 4);
INSERT into role (title, salary, department_id)
VALUES ("Manager", 85000, 5);

select * from role;

INSERT into employee (first_name, last_name, role_id)
values ("Dwight", "Schrute", 3); 
INSERT into employee (first_name, last_name, role_id)
values ("Michael", "Scott", 4);
INSERT into employee (first_name, last_name, role_id)
values ("Jim", "Harper", 5);
INSERT into employee (first_name, last_name, role_id)
values ("Pamela", "Beesly", 6);
INSERT into employee (first_name, last_name, role_id)
values ("Robert", "California", 7);
INSERT into employee (first_name, last_name, role_id)
values ("Andy", "Bernard", 8);

select * from employee;