DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE department(
    id INT ,
    roles_id INT,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles(
    id INT ,
    title VARCHAR(25),
    salary DECIMAL,
    department_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id)
);


CREATE TABLE employees(
id INT,
first_name VARCHAR(25),
last_name VARCHAR(25),
roles_id INT,
manager_id INT,
PRIMARY KEY(id),
FOREIGN KEY(manager_id) REFERENCES employees (id)
);