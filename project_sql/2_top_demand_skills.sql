/*
Questions: What are the most in-demand skills for Data Analyst?
- Join job postings to inner join table similar to top_paying_jobs_skils.sql
- Identify the top 5 in-demand skills for Data Analyst
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job_market,
    providing insights into the most valuable skills for job seekers.
*/

SELECT
    COUNT (skills_job_dim.job_id) AS skills_count,
    skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY skills
ORDER BY skills_count DESC
LIMIT 5;