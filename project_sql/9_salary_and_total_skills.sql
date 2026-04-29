/*
Question: What is the relationship between number of required skills and salary?
- Count number of skills per job
- Compare with salary_year_avg
- Why? Shows whether Data Analyst jobs requiring more skills actually pay more
*/

WITH skills_count AS (
    SELECT
        skills_job_dim.job_id,
        COUNT (*) AS total_skills,
        salary_year_avg
    FROM skills_job_dim
    INNER JOIN job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
    WHERE
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL
    GROUP BY 
        skills_job_dim.job_id,
        salary_year_avg
)

SELECT
    total_skills,
    ROUND (AVG (salary_year_avg),2) AS avg_salary,
    COUNT (*) AS job_count
FROM skills_count
GROUP BY total_skills
ORDER BY avg_salary DESC;