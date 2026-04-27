/*
Question: What is the relationship between number of required skills and salary?
- Count number of skills per job
- Compare with salary_year_avg
- Why? Shows whether jobs requiring more skills actually pay more
*/

SELECT
    skills,
    COUNT (skills_job_dim.skill_id) AS total_skills,
    AVG (salary_year_avg) AS salary_avg
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY salary_avg DESC
LIMIT 10;

WITH skills_count AS (
    SELECT
        job_postings_fact.job_id,
        COUNT (skills_job_dim.skill_id) AS total_skill
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst'
    GROUP BY job_postings_fact.job_id
)

SELECT
    skills,
    AVG (salary_year_avg) AS avg_salary_location
    COUNT (DISTINCT total_skill) AS 



/*
WITH skill_count_per_job AS (
    SELECT
        job_postings_fact.job_id,
        job_postings_fact.salary_year_avg,
        COUNT(skills_job_dim.skill_id) AS skill_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim
        ON skills_job_dim.job_id = job_postings_fact.job_id
    WHERE
        job_postings_fact.job_title_short = 'Data Analyst'
        AND job_postings_fact.salary_year_avg IS NOT NULL
    GROUP BY
        job_postings_fact.job_id,
        job_postings_fact.salary_year_avg
)

SELECT
    skill_count,
    AVG(salary_year_avg) AS avg_salary,
    COUNT(*) AS job_count
FROM skill_count_per_job
GROUP BY skill_count
ORDER BY skill_count;
*/