/*
Quation: What is the salary distribution for Data Analyst roles?
- Group salaries into ranges (e.g., 50k–70k, 70k–90k, etc.)
- Focus on roles with non-null salaries
- Why? Provides insight into typical salary ranges and market spread, not just the top end
*/

SELECT
    CASE
        WHEN salary_year_avg < 60000 THEN '<60k'
        WHEN salary_year_avg BETWEEN 60000 AND 80000 THEN '60-80k'
        WHEN salary_year_avg BETWEEN 80000 AND 100000 THEN '80-100k'
        WHEN salary_year_avg BETWEEN 100000 AND 120000 THEN '100-120k'
        ELSE '>12k'
    END AS salary_range,
    COUNT (*) AS job_count
FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY salary_range
ORDER BY job_count DESC;