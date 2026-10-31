import pandas as pd
from sqlalchemy import create_engine

PASSWORD = "*"

engine = create_engine(f'postgresql://postgres:{PASSWORD}@localhost:5432/job_market_db')

print("Reading file...")
jobs = pd.read_csv("cleaned_data_analyst_jobs_india.csv")
print(f"Found {len(jobs)} jobs")

jobs.to_sql('jobs', engine, if_exists='replace', index=False)


print("Reading skills file...")
skills = pd.read_csv("job_skills_clean.csv")
print(f"Found {len(skills)} skills")
skills.to_sql('skills', engine, if_exists='replace', index=False)

print("SUCCESS! Jobs table loaded")



