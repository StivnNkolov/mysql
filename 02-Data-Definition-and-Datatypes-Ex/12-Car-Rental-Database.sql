CREATE SCHEMA `car_rental`;
USE `car_rental`;

DROP SCHEMA car_rental;

CREATE TABLE `categories`
(
    `id`           INT PRIMARY KEY AUTO_INCREMENT,
    `category`     VARCHAR(30) NOT NULL,
    `daily_rate`   DOUBLE DEFAULT 0,
    `weekly_rate`  DOUBLE DEFAULT 0,
    `monthly_rate` DOUBLE DEFAULT 0,
    `weekend_rate` DOUBLE DEFAULT 0
);

CREATE TABLE `cars`
(
    `id`            INT PRIMARY KEY AUTO_INCREMENT,
    `plate_number`  VARCHAR(10) NOT NULL UNIQUE ,
    `make`          DATE,
    `model`         VARCHAR(10) NOT NULL,
    `car_year`      YEAR        NOT NULL,
    `category_id`   INT         NOT NULL,
    `doors`         INT         NOT NULL,
    `picture`       BLOB,
    `car_condition` VARCHAR(30),
    `available`     BOOLEAN NOT NULL
);


CREATE TABLE `employees`
(
    `id`         INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name`  VARCHAR(30) NOT NULL,
    `title`      VARCHAR(30) NOT NULL,
    `notes`      TEXT
);

CREATE TABLE `customers`
(
    `id`                    INT PRIMARY KEY AUTO_INCREMENT,
    `driver_licence_number` VARCHAR(30) NOT NULL,
    `full_name`             VARCHAR(30) NOT NULL,
    `address`               VARCHAR(30) NOT NULL,
    `city`                  VARCHAR(10) NOT NULL,
    `zip_code`              INT         NOT NULL,
    `notes`                 TEXT
);

CREATE TABLE `rental_orders`
(
    `id`                INT PRIMARY KEY AUTO_INCREMENT,
    `employee_id`       INT         NOT NULL,
    `customer_id`       INT         NOT NULL,
    `car_id`            INT         NOT NULL,
    `car_condition`     VARCHAR(10) NOT NULL,
    `tank_level`        INT         NOT NULL,
    `kilometrage_start` DOUBLE      NOT NULL,
    `kilometrage_end`   DOUBLE      NOT NULL,
    `total_kilometrage` DOUBLE      NOT NULL,
    `start_date`        DATE,
    `end_date`          DATE,
    `total_days`        INT,
    `rate_applied`      DOUBLE,
    `tax_rate`          DOUBLE,
    `order_status`      CHAR,
    `notes`             TEXT
);

INSERT INTO `categories`(category)
VALUES ('CATEGORY TEST1'),
       ('CATEGORY TEST2'),
       ('CATEGORY TEST3');

INSERT INTO `cars`(plate_number, model, car_year, category_id, doors, available)
VALUES ('TESTPLATE1', 'TESTMODEL1', 2004, 1, 4, TRUE),
       ('TESTPLATE2', 'TESTMODEL2', 2004, 1, 4, TRUE),
       ('TESTPLATE3', 'TESTMODEL3', 2004, 1, 4, TRUE);

INSERT INTO `employees`(first_name, last_name, title)
VALUES ('FNAME1', 'FNAME1', 'TESTTITLE1'),
       ('FNAME2', 'FNAME2', 'TESTTITLE2'),
       ('FNAME3', 'FNAME3', 'TESTTITLE3');
INSERT INTO `customers`(driver_licence_number, full_name, address, city, zip_code)
VALUES ('TDLICENCE1', 'TNAME1', 'TADDRESS1', 'TCITY1', 3999),
       ('TDLICENCE2', 'TNAME2', 'TADDRESS2', 'TCITY2', 3999),
       ('TDLICENCE3', 'TNAME3', 'TADDRESS3', 'TCITY3', 3999);

INSERT INTO `rental_orders`(employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage)
VALUES (1, 2, 1, 'TCOND1', 40, 200.00, 2000, 40050),
       (1, 2, 1, 'TCOND2', 40, 200.00, 2000, 40050),
       (1, 2, 1, 'TCOND3', 40, 200.00, 2000, 40050);




