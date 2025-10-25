# Airbnb Database – Seed Data

##  Overview
This directory contains the SQL script used to populate the Airbnb database with sample data.

---

##  Files
- **seed.sql** – SQL script with `INSERT` statements for all tables.

---

##  How to Use
1. Make sure the database schema is already created (run `schema.sql` first).
2. Then execute the seed script in PostgreSQL:

   ```bash
   \i seed.sql
