# Airbnb Database Schema

##  Overview
This directory contains the SQL schema for the Airbnb database project.

The goal is to define all tables, relationships, and constraints needed to manage users, properties, bookings, payments, reviews, and messages.

---

##  Files
- **schema.sql** – Contains the SQL `CREATE TABLE` statements, foreign keys, and indexes.

---

##  Tables Overview

| Table | Description |
|--------|--------------|
| User | Stores user information (guest, host, or admin). |
| Property | Stores details of listed properties. |
| Booking | Records user bookings for properties. |
| Payment | Tracks payment information linked to bookings. |
| Review | Stores reviews and ratings from guests. |
| Message | Stores communication between users. |

---

##  Features
- **UUIDs** used as primary keys for uniqueness.
- **Foreign key constraints** ensure referential integrity.
- **CHECK constraints** for valid ENUM-like values.
- **Timestamps** for creation and updates.
- **Indexes** on frequently queried fields for better performance.
