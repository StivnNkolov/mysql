SELECT c.`country_name`, r.`river_name`
FROM `countries` AS c
         LEFT JOIN `countries_rivers` AS c_r
                   ON c.`country_code` = c_r.`country_code`
         LEFT JOIN `rivers` AS r
                   ON c_r.`river_id` = r.`id`
         JOIN `continents` AS con
              ON c.`continent_code` = con.`continent_code`
WHERE con.`continent_name` = 'Africa'
ORDER BY c.`country_name`
LIMIT 5;