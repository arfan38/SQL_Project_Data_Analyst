/*
Question: Which skills are most commonly required for remote vs non-remote Data Analyst jobs?
- Compare job_work_from_home = TRUE vs FALSE
- Identify differences in skill demand
- Why? Helps understand if remote roles require different skill sets
*/

SELECT
    skills,
    job_work_from_home,
    COUNT (*) AS total_skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills,
    job_work_from_home
ORDER BY total_skills DESC
LIMIT 30;