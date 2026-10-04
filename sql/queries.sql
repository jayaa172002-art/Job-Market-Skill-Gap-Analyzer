-- PROJECT: Job Market Skill Gap Analyzer - Jaya Mandal
--Database: job_market_db|  Tables: jobs, job_skills


--Select COUNT(*) AS total_jobs
FROM jobs;
 
--Query 2: Most demanded skills for Data Analyst in India
SELECT skill,COUNT(*)AS demand
FROM skills
GROUP BY skill
ORDER BY demand DESC
LIMIT 15;

--Query 3: Demand in %age
SELECT skill,COUNT(*) AS demand,
ROUND(COUNT(*) * 100.0/(SELECT COUNT(*) FROM skills),2) AS demand_percent
FROM skills
GROUP BY skill
ORDER BY demand DESC
LIMIT 15;

--Query 4: Salary by Skill
SELECT s.skill,
Round(AVG(j.base_salary)) AS avg_base_salary,
ROUND(AVG(j.max_salary)) AS avg_max_salary
FROM jobs j
JOIN skills s ON j.job_id = s.job_id
WHERE j.base_salary IS NOT NULL
GROUP BY s.skill
ORDER BY avg_base_salary DESC
LIMIT 15;

--Query 5: Location Wise Demand
SELECT location,COUNT(*) AS job_count
FROM jobs
GROUP BY location
ORDER BY job_count DESC
LIMIT 10;

--Query 6: Salary by skill (only for skills with 10+ jobs)
SELECT s.skill,
Round(AVG(j.base_salary)) AS avg_base_salary,
ROUND(AVG(j.max_salary)) AS avg_max_salary
FROM jobs j
JOIN skills s ON j.job_id = s.job_id
WHERE j.base_salary IS NOT NULL
GROUP BY s.skill
ORDER BY avg_base_salary DESC
LIMIT 15;

--Query 7: Skill Gap
SELECT * FROM(
Select skill, COUNT(*) AS market_count,
ROUND(COUNT(*) * 100.0/ (SELECT COUNT(*) FROM job_skills),2) AS demand_percent
FROM job_skills
GRPUP BY skills) AS market
WHERE skill IN('SQL, 'Power BI', 'Excel', 'Python', 'Tableau', 'Data Visualization');


