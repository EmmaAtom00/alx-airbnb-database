-- Inner join only returns data where there's a match between both tables
-- It is perfect for showing users who have made bookings

-- 1. retreive all bookings and the respective users made those bookings
SELECT
    b.booking_id,
    u.user_id,
    u.name AS user_name,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_amount
FROM bookings b
INNER JOIN users u ON  b.user_id = u.user_id;


-- 2. retrieve all properties and their reviews (including properties with no reviews)
SELECT
    p.property_id,
    p.title AS property_title,
    p.city,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN bookings b ON p.property_id = b.property_id
LEFT JOIN reviews r ON b.booking_id = r.booking_id
ORDER BY p.property_id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if unmatched
SELECT 
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
RIGHT JOIN bookings b ON u.user_id = b.user_id;
