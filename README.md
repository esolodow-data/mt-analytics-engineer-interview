# Analytics Engineer Take-Home Assessment

## Overview
This assessment is designed to evaluate your skills in SQL, data modeling, and dbt. You'll be working with a B2B SaaS company's dataset to create a data model that answers specific business questions about the sales pipeline.

## Time Expectation
- We expect this assessment to take less than 2-3 hours.

## Notes
- You may use AI tools to assist with this assessment, but please disclose the tools used.
- You are not required to fully set up a working dbt project, just may model the data as if the project already exists.
- We are not assessing for particular insights from the data, we are assessing your ability to understand data, model data, and write SQL.

## The Dataset
You'll be working with these raw data tables:
1. `accounts` - Contains information about accounts.
2. `sales_cycles` - Contains information about sales cycles for accounts.
2. `activities` - Contains information about activities that occurred during the sales process.
3. `users` - Contains information about sales reps and other users.

## Tasks

1. Create a staging layer from the seeds.
2. Create a fact and dimension layer from the data.
3. Create a mart layer that could be used in a BI tool to build dashbaords and perform analysis. It would need to answer these types of questions:
   - What is the current MRR by stage?
   - What is the average sales cycle duration?
   - What is the monthly recurring revenue (MRR) over time?
   - What are the most common activities for closed accounts?
4. Document your models using dbt Docs.
5. Provide a readme briefly explaining your approach to this assessment.


## Submission
To submit your assessment, share your forked repo with @jmhollinger (if it is private) and send your recruiter and hiring manager a link to it.
