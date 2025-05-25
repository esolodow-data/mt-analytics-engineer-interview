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
-   activity_id : dim_activities
-   sales_cycle_id : dim_sales_cycles
-   user_id : dim_users

### `fact_sales_cycles`
Describes sales deal information associated with revenue.

- Primary Measures: monthly_recurring_revenue
- Foreign Keys:
-   sales_cycle_id : dim_sales_cycles
-   account_id : dim_accounts
-   owner_id: dim_users

## Marts

### `mart_sales_summary`
Aggregates monthly sales per state and product category.
