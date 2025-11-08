# Airbnb Database Project

---

# Complex SQL Joins

This directory contains SQL scripts for Task 0 of the ALX Airbnb Database Module.

## Files

- `joins_queries.sql`: Contains SQL queries demonstrating INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md`: Overview of the join operations.

## Queries Overview

1. **INNER JOIN** – Retrieves all bookings with the corresponding users who made them.
2. **LEFT JOIN** – Lists all properties and their reviews, including properties without reviews.
3. **FULL OUTER JOIN (Simulated)** – Combines all users and all bookings, including unmatched records.


# SQL Subqueries

This directory contains SQL scripts for Task 1 of the ALX Airbnb Database Module.

## Files
- `subqueries.sql`: Demonstrates correlated and non-correlated subqueries.
- `README.md`: Explains the logic and structure behind the queries.

## Queries Overview
1. **Non-correlated Subquery**  
   Finds properties with an average rating greater than 4.0 using an independent subquery that groups and filters property ratings.

2. **Correlated Subquery**  
   Identifies users who have made more than three bookings. The subquery depends on the current user record from the outer query.
