SELECT c.`country_code`, m.`mountain_range`, p.`peak_name`, p.`elevation`
FROM `countries` AS c
         JOIN `mountains_countries` AS m_c
              ON m_c.`country_code` = c.`country_code`
         JOIN `mountains` AS m
              ON m_c.`mountain_id` = m.`id`
         JOIN `peaks` AS p
              ON m.`id` = p.`mountain_id`
WHERE c.`country_code` = 'BG'
  AND p.elevation > 2835
ORDER BY p.`elevation` DESC;