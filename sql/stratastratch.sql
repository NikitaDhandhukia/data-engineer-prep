--Easy

--1) Salaries Differences

  --Calculates the difference between the highest salaries in the marketing and engineering departments. 
  --Output just the absolute difference in salaries.

select ABS(MAX(CASE
                   WHEN d.department = 'marketing' THEN e.salary
               END) - MAX(CASE
                              WHEN d.department = 'engineering' THEN e.salary
                          END)) AS salary_difference from db_employee e
join db_dept d
on e.department_id  = d.id
where d.department in ('marketing','engineering')
