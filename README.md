# Data Analyst Job Market SQL Project

## Introduction

📊This project explores the **Data Analyst** job market using SQL by analyzing 📝 job postings, 💰 salary trends, 🛠️ required skills, and 🧩 hiring patterns.

The primary objective of this project was to answer an important career-focused question:

**What skills, job types, companies, and locations lead to better-paying Data Analyst opportunities?**

Using SQL queries on job posting datasets, I explored:

- Top-paying Data Analyst jobs
- Skills required for high-paying roles
- Most in-demand technical skills
- Skills associated with higher salaries
- Optimal skills to learn
- Company salary trends
- Salary distribution
- Remote vs non-remote skill demand
- Geographic salary differences
- Relationship between required skills and salary

This project demonstrates how SQL can be used to transform raw job posting data into meaningful career insights for aspiring data professionals.

---

# Dataset Credit & Acknowledgement

This project was inspired by and built using the dataset provided by **Luke Barousse** through his SQL course.

Special credit to his YouTube tutorial:

**Luke Barousse SQL Project Tutorial:**  
https://www.youtube.com/watch?v=7mz73uXD9DA

The dataset used in this project was sourced from his learning materials and was extremely helpful for practicing real-world SQL analysis.

---

# Important Dataset Limitations

Although this project provides valuable insights, there are important limitations to acknowledge:

### Geographic Bias
I am currently based in **Malaysia**, but this dataset primarily reflects job postings from the **United States market**, since the dataset was collected through Luke Barousse’s course content.

This means:

- Salary benchmarks may not reflect Malaysian salaries
- Hiring demand may differ significantly in Southeast Asia
- Remote work trends may vary depending on region

For example:

- SQL may still be highly demanded globally
- But salary expectations in Malaysia may be significantly lower than U.S. salaries shown in this project

---

### Data Recency Limitation

The dataset is also not fully up-to-date and reflects older job market conditions.

This means:

- Current hiring trends may have shifted
- New tools may now be more in demand
- Salary ranges may have changed due to inflation and market conditions
- AI-related tools may be more prominent in today's market than reflected here

Therefore, this project should be viewed as:

**A SQL learning project with useful market insights — not a real-time representation of today’s global job market.**

---

# Background

Breaking into data analytics can be difficult because job listings vary significantly in:

- Salary expectations
- Required technical skills
- Job locations
- Remote work availability
- Industry requirements

Rather than manually reviewing thousands of job listings, I used SQL to analyze structured job posting data to uncover trends and opportunities.

The dataset includes:

- Job titles
- Company names
- Salary information
- Locations
- Remote work indicators
- Required skills

---

# Tools Used

### SQL
Used to query and analyze job posting data.

### PostgreSQL
Used as the database management system for running SQL queries.

### Visual Studio Code
Used to write and organize SQL scripts.

### Git & GitHub
Used for version control and project documentation.

---

# Analysis

## 1. Top-Paying Data Analyst Jobs

The highest-paying remote Data Analyst role reached:

**$650,000**

Top companies included:

- Mantys
- Meta
- AT&T
- Pinterest
- UCLA Healthcare

### Key Insight:
Senior-level roles dominate high-paying positions.

---

# 2. Skills Required for Top-Paying Jobs

The most common skills found in top-paying jobs include:

- SQL
- Python
- R
- Tableau
- Excel

Advanced tools included:

- AWS
- Azure
- Snowflake
- Databricks
- PySpark

### Key Insight:
High-paying jobs often require both analytical and engineering-related skills.

---

# 3. Most In-Demand Skills

| Skill | Demand Count |
|--------|--------------|
| SQL | 92,628 |
| Excel | 67,031 |
| Python | 57,326 |
| Tableau | 46,554 |
| Power BI | 39,468 |

### Key Insight:
SQL remains the most essential skill in the job market.

---

# 4. Highest Paying Skills

Top salary-driving skills included:

- SVN
- Solidity
- Couchbase
- DataRobot
- Golang

### Key Insight:
Niche technical skills often command higher salaries.

---

# 5. Most Optimal Skills to Learn

Skills that balance both demand and salary:

- Python
- Tableau
- Power BI
- Snowflake
- AWS

### Key Insight:
These skills offer strong career ROI.

---

# 6. Highest Paying Companies

Top-paying employers included:

- Mantys
- Anthropic
- OpenAI
- Google
- Airbnb

### Key Insight:
Tech and AI companies offer premium compensation.

---

# 7. Salary Distribution

Most jobs fall within:

- $60K–$80K
- $80K–$100K
- $100K–$120K

### Key Insight:
Mid-level salaries dominate the market.

---

# 8. Remote vs Non-Remote Skills

Remote and non-remote jobs both heavily require:

- SQL
- Excel
- Python

### Key Insight:
Core analytical skills remain universal.

---

# 9. Salary by Location

Higher salaries were found in:

- Belarus
- New Jersey
- Germany
- California

### Key Insight:
Location still plays a major role in compensation.

---

# 10. Skills vs Salary Relationship

Jobs requiring more technical skills generally offered higher salaries.

Example:

- 1 required skill → ~$84K
- 21 required skills → ~$160K

### Key Insight:
Broader technical skillsets often increase earning potential.

---

# What I Learned

This project helped me strengthen both my SQL knowledge and analytical thinking by working with real-world job market data.

- **Joins**  
  I improved my understanding of `INNER JOIN` and `LEFT JOIN` by combining multiple tables such as `job_postings_fact`, `company_dim`, `skills_job_dim`, and `skills_dim`. This allowed me to connect job postings with company names and required skills for deeper analysis.

- **CTEs (Common Table Expressions)**  
  I used CTEs to simplify complex queries by breaking them into smaller, more readable steps. For example, I created temporary result sets to identify top-paying jobs first before analyzing the skills required for those roles.

- **Aggregations**  
  I practiced aggregate functions such as `COUNT()`, `AVG()`, and `ROUND()` to summarize large datasets. These were useful for identifying the most in-demand skills, calculating average salaries, and analyzing salary distributions.

- **Filtering**  
  I became more comfortable using `WHERE`, `HAVING`, and conditional filters to narrow down datasets. This included filtering for Data Analyst roles, remote jobs, and records with non-null salary values.

- **Data Cleaning**  
  I learned the importance of handling incomplete data by removing null salary values and ensuring cleaner datasets for more accurate analysis.

- **Business Analysis**  
  Beyond writing SQL queries, I learned how to turn raw data into actionable insights. I analyzed salary trends, skill demand, remote work patterns, and location-based salary differences to better understand the data analyst job market.

---

# Conclusion

## Insights

From the analysis, several key insights emerged:

1. **💰 Top-Paying Data Analyst Jobs**  
   Remote data analyst roles offer significant earning potential, with salaries reaching as high as **$650,000**. However, these high-paying roles are often limited and highly competitive.

2. **🛠️ Skills Required for High-Paying Jobs**  
   Many top-paying roles consistently required skills such as **SQL, Python, Tableau, Excel, and cloud platforms**, showing that employers value both technical and business intelligence capabilities.

3. **📈 Most In-Demand Skills**  
   **SQL** appeared as the most frequently requested skill across job postings, followed by Excel, Python, Tableau, and Power BI—making these core skills highly important for aspiring analysts.

4. **⚙️ Skills Associated with Higher Salaries**  
   Specialized tools such as **SVN, Solidity, Couchbase, Terraform, and DataRobot** were linked to higher average salaries, suggesting niche technical expertise can command premium pay.

5. **💼 Optimal Skills for Career Growth**  
   Skills like **Python, Tableau, Power BI, Snowflake, AWS, and Azure** offered a strong combination of high demand and competitive salaries, making them valuable skills for long-term career growth.

6. **🌍 Location Impacts Salary**  
   Salary levels varied significantly depending on job location, with certain cities and countries offering much higher compensation than others.

7. **💪 More Skills Can Lead to Higher Salaries**  
   Jobs requiring a broader technical skillset often showed higher salary averages, indicating that versatility can improve earning potential.

---

## Closing Thoughts

This project strengthened my SQL skills while helping me better understand trends in the data analyst job market.

Although this dataset was sourced from **Luke Barousse’s SQL course** and primarily reflects the **U.S. job market**, it was still extremely valuable for practicing real-world SQL analysis. Since I’m based in **Malaysia**, I understand that local salary trends and job demand may differ. Additionally, the dataset is not fully up to date, so the findings should be viewed as historical market insights rather than current market conditions.

Overall, this project served as both:

- A practical SQL portfolio project  
- A real-world job market analysis exercise  
- A stepping stone toward improving my data analytics skills