CREATE TABLE `new_table`
SELECT *
FROM `employees`
WHERE `salary` > 30000
  AND `manager_id` != 42;

UPDATE `new_table`
SET `salary` = `salary` + 5000
WHERE `department_id` = 1;

SELECT `department_id`, AVG(`salary`) AS `avg_salary`
FROM `new_table`
GROUP BY `department_id`
ORDER BY `department_id`;
