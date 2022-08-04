SELECT `country_name`, `country_code`, IF(`currency_code` != 'EUR', 'Not Euro', 'Euro') AS 'currency'
FROM `countries`
ORDER BY `country_name`;
