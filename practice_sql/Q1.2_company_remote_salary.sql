/*
Question: Which companies post remote jobs for 'Data Analyst' with the highest salaries?
- Average the salary_year_avg based on company
- Filter job_work_from_home = TRUE
- Group by company_id and salary
- Why? Identifies top remote-friendly employers in the data market
*/

SELECT
    name,
    ROUND (AVG (salary_year_avg),2) AS company_avg_salary,
    COUNT (job_id) AS job_count
FROM
    job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_work_from_home = TRUE AND
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    name
ORDER BY company_avg_salary DESC
LIMIT 25;

