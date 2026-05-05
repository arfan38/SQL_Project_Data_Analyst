-- 🏢 1. Company & Hiring Behavior Analysis

/*
Question: Which companies have the highest number of job postings for Data Analyst roles?
- Group job_postings_fact by company_id
- Join with company_dim to get company names
- Why? Identifies companies actively hiring Data Analysts most frequently
*/

SELECT
    company_dim.name AS company_name,
    COUNT (job_postings_fact.job_id) AS total_job
FROM job_postings_fact
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY name
ORDER BY total_job DESC;