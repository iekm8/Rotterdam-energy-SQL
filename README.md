# Rotterdam Energy Transition – PostgreSQL Database & Tableau Dashboard

A university data project (Applied Data Science & AI, Hogeschool Rotterdam, year 1) in which a team of four students built a relational database from open energy datasets for Rotterdam and used it to create a Tableau dashboard on local solar-energy production and energy consumption per district (wijk).

## What this project shows

- **Data modelling & normalisation** – splitting raw CSV data into separate tables for municipalities, districts, neighbourhoods and addresses, connected through primary and foreign keys.
- **Data cleaning in SQL** – fixing placeholder values (`.` → `0`), casting text columns to numeric types and adding primary-key / foreign-key constraints.
- **Joins & analysis** – combining location, energy-label, heating, energy-consumption and solar-energy data, then running aggregate queries (min / max / average, top-N, group counts).
- **Visualisation** – a Tableau dashboard connected directly to the PostgreSQL database.

## Data sources

Open data about Rotterdam, including:

- Energy labels of buildings
- Household energy consumption (gas m³ and electricity kWh) per neighbourhood
- Main heating installation type per neighbourhood
- Solar-energy installations (number and kWp) per neighbourhood
- EV charging points in Rotterdam
- Postcode → neighbourhood / district / municipality mapping

The raw datasets are not included in this repository.

## Repository structure

| File | Contents |
|---|---|
| `sql/00_individual_wijk_table.sql` | My individual starting assignment: the district (`wijk_2024`) table and a first query |
| `sql/01_create_tables.sql` | `CREATE TABLE` statements for the full database |
| `sql/02_data_cleaning.sql` | Cleaning and transformation queries (`UPDATE`, `ALTER TABLE`, PK/FK constraints) |
| `sql/03_analysis_queries.sql` | Joins between tables and analytical queries |
| `dashboard/energy_dashboard.twb` | Tableau workbook (needs a local PostgreSQL database to load the data) |

## Data model

```
gemeente ──< locaties_2024 >── wijk_2024
                 │    └─────< buurt
                 │
            evz_locaties ──── energieverbruik
                 │      ├──── hoofdverwarming
                 │      └──── zonnestroom
                 │
           energielabels (joined on postcode)
```

`locaties_2024` (one row per address, key `adres_id`) is the central table that links addresses to their neighbourhood, district and municipality codes.

## Dashboard

The dashboard focuses on sustainable energy per district:

1. Total energy consumption per district (kWh)
2. Comparison of solar-energy production per district
3. Number of solar panels per district on a map

Together they show which districts are ahead in the energy transition and where there is room for more solar panels.

## My contribution

- Built and loaded my individual database (district data), chose the primary keys and checked data quality (key consistency, duplicates, missing values, column naming).
- Worked as one of four team members on the shared database, data model and dashboard.

## Tools

PostgreSQL · SQL · Tableau

---

*Team project – Hogeschool Rotterdam, ADS&AI, 2025–2026.*
