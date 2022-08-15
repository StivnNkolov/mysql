-SELECT `peak_name`, `river_name`, CONCAT(LOWER(`peak_name`), SUBSTR(LOWER(`river_name`), 2)) AS 'mix'
FROM peaks,
     rivers
WHERE LEFT(`river_name`, 1) = RIGHT(`peak_name`, 1)
ORDER BY `mix`;