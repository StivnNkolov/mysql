CREATE TABLE `passports`
(
    `passport_id`     INT AUTO_INCREMENT PRIMARY KEY,
    `passport_number` VARCHAR(8) UNIQUE
) AUTO_INCREMENT = 101;

INSERT INTO `passports`(`passport_number`)
VALUES ('N34FG21B'),
       ('K65LO4R7'),
       ('ZE657QP2');

CREATE TABLE `people`
(
    `person_id`   INT PRIMARY KEY AUTO_INCREMENT,
    `first_name`  VARCHAR(20),
    `salary`      DECIMAL(10, 2),
    `passport_id` INT UNIQUE,
    CONSTRAINT fk_people_passport
        FOREIGN KEY (`passport_id`)
            REFERENCES `passports` (`passport_id`)
);

INSERT INTO `people`(`first_name`, `salary`, `passport_id`)
VALUES ('Roberto', 43300, 102),
       ('Tom', 56100, 103),
       ('Yana', 60200, 101);