# Data Modeling Project

This project builds a full data pipeline from raw CSVs to final business-friendly marts using SQL.

## Layers

- **Staging**: Raw ingested data from CSVs
- **Dimension**: Categorical Information
- **Fact**: Sales Activities and Sales Cycle 
- **Mart**: Capability for Aggregation across Sales Activities and Sales Cycle 

## Source Files

- `accounts.csv`
- `activities.csv`
- `sales_cycles.csv`
- `users.csv`

## Folder Structure

- `models/` - Contains SQL transformation logic
- `docs/` - Data model documentation
