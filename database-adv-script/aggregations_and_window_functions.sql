-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    u.user_id,
    u.name AS user_name,
    COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
ORDER BY total_bookings DESC;


-- 2. Window Function: Rank properties based on the total number of bookings they have received
WITH property_booking_counts AS (
    SELECT 
        p.property_id,
        p.title AS property_title,
        COUNT(b.booking_id) AS total_bookings
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.title
)
SELECT 
    property_id,
    property_title,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM property_booking_counts
ORDER BY booking_rank;
