/*
Question: Which job schedule types (full-time, contract, etc.) pay the highest salaries?
- Group by job_schedule_type
- Compare average salary
- BONUS: if want to filter for Data Analyst just remove '--' and add AND
- Why? Shows which employment type is most financially rewarding
*/

SELECT
    job_schedule_type,
    ROUND (AVG (salary_year_avg),2) AS avg_salary,
    COUNT (job_id)
FROM job_postings_fact
WHERE
    salary_year_avg IS NOT NULL AND
    job_schedule_type IS NOT NULL
--    job_title_short = 'Data Analyst'
GROUP BY job_schedule_type
ORDER BY avg_salary
LIMIT 30