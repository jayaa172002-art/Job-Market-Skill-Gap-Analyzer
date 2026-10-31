# Job-Market-Skill-Gap-Analyzer
# 01 — Job Market Skill Gap Analyzer | Career Intelligence

> **Business Question:** If I'm a non-tech graduate targeting Data Analyst roles in India, which skills should I prioritize based on actual job posting
### 🔍 The Problem
As a non-tech graduate, every roadmap says "Learn SQL, Python, Excel, Power BI, Tableau..." — but which one first? I didn't want assumptions, I wanted proof from the market.

### 📂 How I Built It — End to End

**1. Data Collection (100+ → 1105 jobs)**
Scraped 1105 Data Analyst job postings from Naukri / LinkedIn / company career pages. Captured: Job Title, Experience (min_exp), Location (primary_city), Salary if available, and full Job Description.

**2. Skills Dictionary**
Created a structured dictionary: `SQL, Excel, Power BI, Python, Tableau, Statistics, Data Visualization.'

**3. Python — Cleaning & Skill Extraction**
- Removed duplicate postings
- Cleaned descriptions6
- Extracted skill mentions using keyword matching


**4. SQL — Market Demand Analysis**
- Calculated skill frequency and demand %.
- Location breakdown: Bangalore 31% of jobs, Hyderabad, Mumbai, Pune
- Experience breakdown: 0-2 years vs 2-5 years demand
- Combination analysis: SQL + Power BI appears together 18% times

**5. Power BI — Skill-Gap Dashboard (My Current Level vs Market)**
I self-assessed my 6 skills and compared with market demand.

**Dashboard Page 1 — Job Market Overview**
- Slicers: Experience, Location
- Visuals: Jobs by Location, Top Skills by % of job postings

**Dashboard Page 2 — Skill Gap Analysis**
- **Slicer:** Gap Status (Gap High | Medium | Low)
- **KPIs:** Total Skills: 6 | Gaps to Learn: 2 | Match Rate: 67%
  - **Skill Gap Breakdown Table:**
    - Gap High: TABLEAU (6.15% demand)
    - Gap Medium: PYTHON (13.57% demand) — I need to learn this next
    - Gap Low: SQL, POWER BI, EXCEL, DATA VISUALIZATION — I'm good here
- **Top Skills by Job Count:** SQL 262 (23.71%), Python 150 (13.57%), Power BI 130
- **Recommendation Panel:** Learn PYTHON → then TABLEAU. This will move my Match Rate from 67% to 90% in 30 days.
### 💡 Key Insights

**Which skills appear most often?**
SQL 23.71% is #1, followed by Excel, Power BI, Python 13.57%.

**What combination appears together most often?**
SQL + Excel + Power BI is the most common combo in entry-level roles. SQL + Python for higher experience roles.

**What should I learn next?**
Based on gap size and demand %, PYTHON is my immediate priority (13.57% demand but Medium gap), then TABLEAU (6.15% demand, High gap).

### 🛠️ Tech Stack
Python (pandas), SQL (for queries), Power BI (DAX, Slicers, KPI Cards), Excel for quick checks.

