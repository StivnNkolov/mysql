SELECT `title`
FROM `books`
WHERE `title` LIKE 'The%'
ORDER BY `id`;

SELECT `title`
FROM `books`
WHERE LEFT(`title`, 3) = 'The'
ORDER BY `id`;

SELECT `title`
FROM `books`
WHERE SUBSTR(`title`, 1, 3) = 'The'
ORDER BY `id`;

