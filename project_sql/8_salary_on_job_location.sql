/*
Question: How does job location affect Data Analyst salaries?
- Compare salaries across different job_location or job_country
- Focus on roles with specified salaries
- Why? Reveals geographical salary differences and market trends
*/

SELECT
    job_location,
    ROUND (AVG (salary_year_avg),2) AS avg_salary_location
FROM job_postings_fact
WHERE
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst'
GROUP BY
    job_location
ORDER BY avg_salary_location DESC
LIMIT 40;