SELECT `title`
FROM `books`
WHERE LEFT(`title`, 12) = 'Harry Potter'
ORDER BY `id`;