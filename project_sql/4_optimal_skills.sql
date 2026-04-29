/*
Question: What are the most optimal skills to learn (high-demand and a high-paying skills)?
- Identify skills in high demand and associated with high average salaries for Data Analayst roles
- Concentrate on remote positions with specified salaries
- Why? Target skill that offer job security (high-demand) and financial benefits (high salsries),
    offering strategic inisghts for career development ini data analysis
*/

SELECT
    skills,
    COUNT (job_postings_fact.job_id) AS skills_count,
    ROUND (AVG (salary_year_avg),2) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
GROUP BY skills
HAVING COUNT(skills_job_dim.job_id) > 10
ORDER BY
    avg_salary DESC,
    skills_count DESC
LIMIT 25;