Job Market Skill Gap Analyzer | Career Intelligence
> **Level:** Beginner -> Intermediate | **Tools:** Python • SQL • Power BI | **Output** Skill-gap Dashboard
### The Business Question
**If I'm a non-tech graduate targeting Data Analyst roles, which skills should I prioritize based on actual job posting?**

This project answers this by analyzing real Data Analyst job postings in India and comparing market demand with current skill level.

---

### What I did (Project Workflow)
**1. Data Collection:**
- Collected 100+ Data Analyst job postings from legitimate job boards / company career pages
- Captured: job title, experience, location, salary (if available), and full description

**2. Skills Dictionary:**
- Created a structured skills dictionary: SQL, Excel, Power BI, Python, Tableau, Statistics, etc.

**3. How I Built It:**
- **Python (load.py):** Cleaned descriptions, normalized skill names, removed duplicates and extracted skill mentions
- **SQL (queries.sql):** Calculated skill frequency, demand %, location/experience breakdowns and skill combinations (e.g., SQL + Power BI)
- **Power BI:** Compared market demand with learner's self-assessed/current skill level to show the gap

### What the Dashboard shows
- Top skills by % of job postings
- Market demand vs current skill level
- Skill-gap table with gap size
- Experience / location filters
- "What should I learn next?" recommendation panel

### Key Questions Answered
- Which skills appear most often?
- Which skills are rising in importance across roles?
- What combination of skills appears together most often? (e.g., SQL + Power BI is most demanded combos)
- Location-wise demand: Bangalore, Hyderabad, Pune lead

### Repository Structure
```
/data -> cleaned_data_analyst_jobs_india.csv, jobs_skills_clean.csv
/python -> load.py(cleaning & skill extraction)
/sql -> queries.sql(skill frequency, demand %, combos)
/powerbi -> Data_Analyst_Job_Market_India_Overview.pbix(Interactive Dashboard)
```



### Final Portfolio Deliverable
**Problem -> Data Collection -> Cleaning -> Analysis -> Dashboard -> Learning Recommendation**
> Decision path: messy data -> cleaning -> analysis -> insight -> recommendation

### Tech Stack
Python, Pandas, SQL, Power BI, GitHub





  
