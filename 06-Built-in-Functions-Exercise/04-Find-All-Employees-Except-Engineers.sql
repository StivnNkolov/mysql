SELECT `first_name`, `last_name`
FROM `employees`
WHERE NOT LOCATE('engineer', `job_title`)
ORDER BY `employee_id`;