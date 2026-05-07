/*
Question: Which companies offer the widest salary range for Data Analyst roles?
- Calculate MAX(salary) - MIN(salary) per company
- Why? Identifies companies with high internal salary variation (junior vs senior roles)
*/

SELECT
    name,
    MAX(salary_year_avg) - MIN(salary_year_avg) AS salary_range
FROM job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    name
ORDER BY salary_range DESC
LIMIT 25;