/*
Question: Which companies combine remote work + high salary + benefits most often?
- Filter job_work_from_home = TRUE
- Check salary + job_health_insurance
- BONUS: if want to filter for Data Analyst just remove '--' and add AND
- Why? Finds “best overall job packages”
*/

SELECT
    name,
    ROUND (AVG (salary_year_avg),2) AS avg_salary,
    COUNT (job_id) AS total_job
FROM job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_work_from_home = TRUE AND
    job_health_insurance = TRUE AND
    salary_year_avg IS NOT NULL
--    job_title_short = 'Data Analyst'
GROUP BY name
ORDER BY avg_salary DESC
LIMIT 50;