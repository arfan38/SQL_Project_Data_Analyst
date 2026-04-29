/*
Question: What are the top-paying jobs for Data Analyst?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely,
- Focuses on job-postings with specified salaries (remove nulls),
- BONUS: Include compay name of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into
    employment opportunity for job-seekrs.
*/

SELECT
    job_postings_fact.job_id,
    company_dim.name AS company_name,
    job_postings_fact.job_title_short,
    job_postings_fact.job_location,
    job_postings_fact.job_title,
    job_postings_fact.salary_year_avg
FROM job_postings_fact
LEFT JOIN company_dim
    ON company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg > 0 AND
    job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;