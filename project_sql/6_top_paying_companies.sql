/*
Question: What industries offer the highest-paying Data Analyst roles?
- Analyze which industries or companies (proxy via company_dim) pay the most for Data Analyst roles
- Focus on roles with specified salaries
- Why? Helps identify which sectors are most lucrative for Data Analysts
*/

SELECT
    name,
    ROUND (AVG (salary_year_avg),2) AS company_avg_salary
FROM job_postings_fact
INNER JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY name
ORDER BY company_avg_salary DESC
LIMIT 30;