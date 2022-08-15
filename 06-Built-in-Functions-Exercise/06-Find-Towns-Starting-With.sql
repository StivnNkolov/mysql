SELECT `town_id`, `name`
FROM `towns`
WHERE SUBSTR(`name`, 1, 1) IN ('M', 'K', 'B', 'E')
ORDER BY `name`;