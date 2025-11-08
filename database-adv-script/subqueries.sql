-- 1. Non-correlated subquery: Find all properties where the average rating is greater than 4.0
SELECT 
    p.property_id,
    p.title AS property_title,
    p.city,
    p.price
FROM properties p
WHERE p.property_id IN (
    SELECT 
        b.property_id
    FROM bookings b
    JOIN reviews r ON b.booking_id = r.booking_id
    GROUP BY b.property_id
    HAVING AVG(r.rating) > 4.0
)
ORDER BY p.property_id;


-- 2. Correlated subquery: Find users who have made more than 3 bookings
SELECT 
    u.user_id,
    u.name AS user_name,
    u.email
FROM users u
WHERE (
    SELECT COUNT(*) 
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3
ORDER BY u.user_id;
