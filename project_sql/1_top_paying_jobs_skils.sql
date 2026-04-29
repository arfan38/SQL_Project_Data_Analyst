/*
Question: What skills are required for the top-paying Data Analyst roles?
- Use the top 10 highest-paying Data Analyst from top_paying_jobs.sql
- Add the specific skills requires for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
    helping job-seekers understand which skills to develop that allign with top salaries
*/

WITH top_paying_jobs AS (
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
    LIMIT 10
)

SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
LEFT JOIN skills_job_dim
ON skills_job_dim.job_id = top_paying_jobs.job_id
LEFT JOIN skills_dim
ON skills_job_dim.skill_id = skills_dim.skill_id;


--Why using the LEFT JOIN is, I still need to see all the top 10 top paying jobs even required skills is absent.

/*
BONUS: 
- Aggregates multiple skills per job into a single comma-separated field using STRING_AGG,
- So each job appears in one row instead of multiple rows.


WITH top_paying_jobs AS (
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
    LIMIT 10
)

SELECT
    top_paying_jobs.*,
    STRING_AGG(skills_dim.skills, ', ') AS skills
FROM top_paying_jobs
LEFT JOIN skills_job_dim
    ON skills_job_dim.job_id = top_paying_jobs.job_id
LEFT JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY
    top_paying_jobs.job_id,
    top_paying_jobs.company_name,
    top_paying_jobs.job_title_short,
    top_paying_jobs.job_location,
    top_paying_jobs.job_title,
    top_paying_jobs.salary_year_avg
ORDER BY top_paying_jobs.salary_year_avg DESC;
*/