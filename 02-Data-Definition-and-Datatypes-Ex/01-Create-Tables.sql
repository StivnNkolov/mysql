USE Minions;

CREATE TABLE `minions`
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    age    INT         NOT NULL
);

CREATE TABLE `towns`
(
    town_id INT PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(30) NOT NULL
);