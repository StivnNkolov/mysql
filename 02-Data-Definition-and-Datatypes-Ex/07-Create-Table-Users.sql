CREATE TABLE users
(
    `id`              INT PRIMARY KEY AUTO_INCREMENT,
    `username`        VARCHAR(30) UNIQUE NOT NULL,
    `password`        VARCHAR(26)        NOT NULL,
    `profile_picture` BLOB,
    `last_login_time` DATETIME,
    `is_deleted`      BOOLEAN
);

INSERT INTO users(`username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`)
VALUES ('Test1', '1123qwer', NULL, NOW(), TRUE),
       ('Test2', '1123qwer', NULL, NOW(), TRUE),
       ('Test3', '1123qwer', NULL, NOW(), TRUE),
       ('Test4', '1123qwer', NULL, NOW(), TRUE),
       ('Test5', '1123qwer', NULL, NOW(), TRUE);