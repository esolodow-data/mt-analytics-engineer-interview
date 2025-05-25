SELECT 
    CAST(account_id AS VARCHAR) AS account_id, 
    CAST(account_name AS VARCHAR) AS account_name,
    CAST(industry AS VARCHAR) AS industry, 
    CAST(employee_count AS INTEGER) AS employee_count,
    CAST(country AS VARCHAR) AS country,
    CAST(source AS VARCHAR) AS account_source,
    CAST(created_at AS DATE) AS account_created_at,
    CAST(status AS VARCHAR) AS account_status
FROM raw.accounts 
