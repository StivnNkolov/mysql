SELECT e.`employee_id`, e.`first_name`, p.`name` AS `project_name`
FROM `employees` AS e
         JOIN `employees_projects` AS e_p
              ON e.`employee_id` = e_p.`employee_id`
         JOIN `projects` AS p
              ON p.`project_id` = e_p.`project_id`
WHERE DATE (p.`start_date`)
    > '2002-08-13'
  AND p.`end_date` IS NULL
ORDER BY e.`first_name`, p.`name`
