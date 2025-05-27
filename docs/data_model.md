# Data Model Documentation

## Dimensions

### `dim_accounts`
Describes account attributes including name, industry, employee counts, region, source, created date, and status.

### `dim_activities`
Describes activity information such as type and notes.

### `dim_sales_cycles`
Describes sales cycle plan type, stage, and probability. 

### `dim_users`
Describes user attributes such as email, role, team, start date, and status.

## Fact Tables

### `fact_sales_activities`
Describes sales activities associated with each sales cycle ID.

- Primary Measures: activity_duration
- Foreign Keys:
   activity_id --> dim_activities
   sales_cycle_id --> dim_sales_cycles
   user_id --> dim_users

### `fact_sales_cycles`
Describes sales deal information associated with revenue.

- Primary Measures: monthly_recurring_revenue
- Foreign Keys:
   sales_cycle_id --> dim_sales_cycles
   account_id --> dim_accounts
   owner_id --> dim_users

## Marts

### `mart_sales_cycles`
Row-level information for each sales cycle ID. 

Business Questions: What is the average or total monthly-recurring_revenue over available dimensions? 

- Dimension and Fact Tables Included:
    fact_sales_cycles
    dim_accounts
    dim_sales_cycles
    dim_users
- Key Measures: monthly_recurring_revenue
- Dimensional Fields:
    - fact_sales_cycle
        - sales_cycle_id
        - account_id
        - owner_id
        - deal_created_at
        - deal_closed_at
    - dim_accounts
        - account_name
        - industry
        - country
    - dim_sales_cycles
        - stage
        - probability
    - dim_users
        - role
        - team
        - user_status

### `mart_sales_activities`
Row-level information for each sales activity associated with a sales cycle ID. 

Business Questions: 
  - What is the average sales cycle duration over available dimensions?
  - What activities are associated with different account statuses? 

- Dimension and Fact Tables Included:
    fact_sales_activities
    dim_accounts
    dim_sales_cycles
    dim_users
    dim_activities
- Key Measures: activity_duration
- Dimensional Fields:
    - fact_sales_activities
        - activity_id
        - sales_cycle_id
        - user_id
        - activity_date
    - dim_accounts
        - account_name
        - industry
        - account_status
    - dim_sales_cycles
        - stage
        - plan_type
        - account_id
    - dim_users
        - role
        - team
    - dim_activities
        - activity_type
        - activity_notes

### `mart_cycle_activity`
Row-level information combining sales cycle ID information and aggregated activity information.

Business Questions: 
  - What is the typical order and count of activities for closed accounts?
  - What is the average activity duration across available dimensions?
  - How many touchpoints do we utilize in the sales cycle? 

- Dimension and Fact Tables Included:
    fact_sales_activities
    fact_sales_cycles
    dim_accounts
    dim_sales_cycles
    dim_sales_activities
- Key Measures: total_activities, avg_activity_duration, activity_list
- Dimensional Fields:
    - fact_sales_cycles
        - sales_cycle_id
        - account_id
        - owner_id
        - monthly_recurring_revenue
    - dim_accounts
        - account_name
    - dim_sales_cycles
        - activity_type



    
