# Data Modeling Project

This project builds a full data pipeline from raw CSVs to final business-friendly marts using SQL. ChatGPT was used for assistance in organizing file structure and understanding appropriate syntax for each layer. The code is all original based on the raw files. The approach included a review of each CSV and documenting joins. Two fact tables were created for simplicity, with one mart layer combining the two fact tables to provide deeper aggregation across the multi-row activities list and each single-row sales cycle ID. 

## Layers

- **Staging**: Raw ingested data from CSVs
- **Dimension**: Categorical Information
- **Fact**: Sales Activities and Sales Cycle 
- **Mart**: Capability for Aggregation across Sales Activities and Sales Cycle, and a combined mart 

## Source Files

- `accounts.csv`
- `activities.csv`
- `sales_cycles.csv`
- `users.csv`

## Folder Structure

- `seeds/` - Contains raw CSV files
- `models/` - Contains SQL transformation logic
- `docs/` - Data model documentation
