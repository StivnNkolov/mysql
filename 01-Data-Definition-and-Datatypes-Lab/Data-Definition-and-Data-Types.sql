USE gamebar;

# Task 01
CREATE TABLE employees
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL
);

CREATE TABLE categories
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE products
(
    id          INT PRIMARY KEY NOT NULL,
    `name`      VARCHAR(50)     NOT NULL,
    category_id INT             NOT NULL
);

# Task 02
INSERT INTO employees (first_name, last_name)
VALUES ('Ivan', 'Ivanov'),
       ('Marin', 'Marinov'),
       ('Georgi', 'Tasev');

# Task 03
ALTER TABLE employees
    ADD middle_name VARCHAR(50) NOT NULL;

# Task 04
ALTER TABLE products
    ADD CONSTRAINT product_fk
        FOREIGN KEY products (`category_id`)
            REFERENCES categories (id);

# Task 05
ALTER TABLE employees
    CHANGE COLUMN middle_name middle_name VARCHAR(100);