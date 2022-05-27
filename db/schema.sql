DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE department(
    id INTEGER NOT NULL AUTO_INCREMENT,
    roles_id INT,
    department_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (id),
    CREATED_BY VARCHAR(40) DEFAULT '' NOT NULL
);

CREATE TABLE roles(
    id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(25),
    salary DECIMAL,
    department_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id),
    CREATED_BY VARCHAR(40) DEFAULT '' NOT NULL
);


CREATE TABLE employees (
id INTEGER NOT NULL AUTO_INCREMENT,
first_name VARCHAR(25),
last_name VARCHAR(25),
roles_id INT,
manager_id INT,
PRIMARY KEY(id),
FOREIGN KEY(manager_id) REFERENCES employees(id),
CREATED_BY VARCHAR(40) DEFAULT '' NOT NULL
);
