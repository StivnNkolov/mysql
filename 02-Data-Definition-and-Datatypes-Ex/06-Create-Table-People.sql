CREATE TABLE `people`
(
    `id`        INT PRIMARY KEY AUTO_INCREMENT,
    `name`      VARCHAR(200) NOT NULL,
    `picture`   BLOB,
    `height`    DOUBLE,
    `weight`    DOUBLE,
    `gender`    CHAR(1)      NOT NULL,
    `birthdate` DATE         NOT NULL,
    `biography` TEXT
);


INSERT INTO people(`name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES ('Test1', NULL, NULL, NULL, 'm', NOW(), NULL),
       ('Test2', NULL, NULL, NULL, 'm', NOW(), NULL),
       ('Test3', NULL, NULL, NULL, 'm', NOW(), NULL),
       ('Test4', NULL, NULL, NULL, 'm', NOW(), NULL),
       ('Test5', NULL, NULL, NULL, 'm', NOW(), NULL);