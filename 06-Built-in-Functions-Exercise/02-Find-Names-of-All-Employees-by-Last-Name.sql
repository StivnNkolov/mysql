SELECT `first_name`, `last_name`
FROM `employees`
WHERE LOCATE('ei', `last_name`)
ORDER BY `employee_id`;
