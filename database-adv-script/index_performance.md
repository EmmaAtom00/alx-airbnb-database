# Index Performance Report – Airbnb Database Project

## Objective

To improve query performance by creating indexes on high-usage columns across the `users`, `bookings`, and `properties` tables.

---

## Indexed Columns

| Table      | Column       | Index Name                | Purpose                                  |
| ---------- | ------------ | ------------------------- | ---------------------------------------- |
| users      | email        | idx_users_email           | Speeds up user lookup by email           |
| users      | user_id      | idx_users_user_id         | Improves JOIN performance                |
| bookings   | user_id      | idx_bookings_user_id      | Speeds up queries for user bookings      |
| bookings   | property_id  | idx_bookings_property_id  | Optimizes joins with properties          |
| bookings   | booking_date | idx_bookings_booking_date | Improves filtering by booking date       |
| properties | city         | idx_properties_city       | Speeds up location-based searches        |
| properties | price        | idx_properties_price      | Speeds up filtering and sorting by price |

---

## Query Performance Before vs After Indexing

### Example Query

```sql
SELECT * FROM bookings WHERE user_id = 5;
```
