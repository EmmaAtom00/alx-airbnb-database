# Database Normalization – Airbnb Database

## Objective
To apply normalization principles and ensure the Airbnb database schema is in Third Normal Form (3NF).

---

## Step 1: First Normal Form (1NF)
- Each table has a primary key.
- Each field contains only atomic values (no repeating groups or lists).
 The database meets 1NF.

---

## Step 2: Second Normal Form (2NF)
- The database is already in 1NF.
- Every non-key attribute depends on the whole primary key (no partial dependencies).
 Each table uses a single-column primary key, so it satisfies 2NF.

---

## Step 3: Third Normal Form (3NF)
- The database is in 2NF.
- There are no transitive dependencies; all non-key attributes depend only on the primary key.

### Verification by Table:
| Table | Status | Notes |
|--------|---------|-------|
| User |  In 3NF | All attributes depend on user_id |
| Property |  In 3NF | Attributes depend on property_id |
| Booking |  In 3NF | Attributes depend on booking_id |
| Payment |  In 3NF | Attributes depend on payment_id |
| Review |  In 3NF | Attributes depend on review_id |
| Message |  In 3NF | Attributes depend on message_id |

---

## Conclusion
The Airbnb database design adheres to Third Normal Form (3NF).  
All redundancy and dependency issues have been eliminated, ensuring data integrity and scalability.
