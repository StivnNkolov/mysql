SELECT `name`
FROM `towns`
WHERE CHARACTER_LENGTH(`name`) IN (5, 6)
ORDER BY `name`;