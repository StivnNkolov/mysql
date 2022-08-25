SELECT e.`employee_id`, e.`first_name`
FROM `employees_projects` AS e_p
         RIGHT JOIN `employees` AS e
                    ON e.`employee_id` = e_p.`employee_id`
WHERE e_p.`project_id` IS NULL
ORDER BY e.`employee_id` DESC
LIMIT 3;