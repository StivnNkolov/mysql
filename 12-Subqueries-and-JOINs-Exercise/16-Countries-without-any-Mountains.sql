SELECT COUNT(c.`country_name`) AS `country_count`
FROM `mountains_countries` AS m_c
         RIGHT JOIN `countries` AS c
                    ON c.country_code = m_c.country_code
WHERE m_c.mountain_id IS NULL;






