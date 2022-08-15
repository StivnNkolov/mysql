SELECT `town_id`, `name`
FROM `towns`
WHERE NOT SUBSTR(`name`, 1, 1) IN ('R', 'B', 'D')
ORDER BY `name`;
