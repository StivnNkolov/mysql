SELECT `continent_code`, `currency_code`, COUNT(`currency_code`) AS `currency_count`
FROM `countries` AS c
GROUP BY `continent_code`, `currency_code`
HAVING `currency_count` =
       (SELECT COUNT(country_code) AS `count`
        FROM `countries` AS c1
        WHERE c1.`continent_code` = c.`continent_code`
        GROUP BY `currency_code`
        ORDER BY `count` DESC
        LIMIT 1)
AND `currency_count` > 1
ORDER BY `continent_code`, `currency_code`;