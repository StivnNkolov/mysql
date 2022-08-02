CREATE SCHEMA Movies;
USE Movies;

CREATE TABLE `directors`
(
    id            INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(30) NOT NULL,
    notes         TEXT
);

CREATE TABLE `genres`
(
    `id`         INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `genre_name` VARCHAR(30) NOT NULL,
    `notes`      TEXT
);

CREATE TABLE `categories`
(
    `id`            INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `category_name` VARCHAR(30) NOT NULL,
    `notes`         TEXT
);


CREATE TABLE `movies`
(
    id             INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    title          VARCHAR(30) NOT NULL,
    director_id    INT UNSIGNED NOT NULL ,
    copyright_year YEAR NOT NULL ,
    length         TIME NOT NULL ,
    genre_id       INT UNSIGNED NOT NULL ,
    category_id    INT UNSIGNED NOT NULL ,
    rating         DOUBLE DEFAULT  0 NOT NULL ,
    notes          TEXT
);

ALTER TABLE movies
    ADD CONSTRAINT fk_director
        FOREIGN KEY movies (director_id)
            REFERENCES directors (id),
    ADD CONSTRAINT fk_genre
        FOREIGN KEY movies (genre_id)
            REFERENCES genres (id),
    ADD CONSTRAINT fk_category
        FOREIGN KEY movies (category_id)
            REFERENCES categories (id);

INSERT INTO directors(director_name, notes)
VALUES ('TEST DIRECTOR1', NULL),
       ('TEST DIRECTOR2', NULL),
       ('TEST DIRECTOR3', NULL),
       ('TEST DIRECTOR4', NULL),
       ('TEST DIRECTOR5', NULL);

INSERT INTO genres(genre_name, notes)
VALUES ('TEST genre1', NULL),
       ('TEST genre1', NULL),
       ('TEST genre1', NULL),
       ('TEST genre1', NULL),
       ('TEST genre1', NULL);

INSERT INTO categories(category_name, notes)
VALUES ('test category1', NULL),
       ('test category2', NULL),
       ('test category3', NULL),
       ('test category4', NULL),
       ('test category5', NULL);

INSERT INTO movies(title, director_id, copyright_year, length, genre_id, category_id, rating, notes)
VALUES
    ('test movie1', 1, 2004, '20:0:2', 1, 1, 4, NULL),
    ('test movie2', 1, 2004, '20:0:2', 1, 1, 4, NULL),
    ('test movie3', 1, 2004, '20:0:2', 1, 1, 4, NULL),
    ('test movie4', 1, 2004, '20:0:2', 1, 1, 4, NULL),
    ('test movie5', 1, 2004, '20:0:2', 1, 1, 4, NULL);



