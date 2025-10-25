-- ===========================================================
-- Airbnb Database Sample Data (Seed Script)
-- File: seed.sql
-- Description: Inserts sample records into all tables.
-- ===========================================================

-- ==========================
-- USERS
-- ==========================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_password_2', '2345678901', 'host'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Brown', 'carol@example.com', 'hashed_password_3', '3456789012', 'guest'),
('44444444-4444-4444-4444-444444444444', 'Admin', 'User', 'admin@airbnb.com', 'hashed_admin_pass', NULL, 'admin');

-- ==========================
-- PROPERTIES
-- ==========================
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES
('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 
 'Seaside Cottage', 'Beautiful cottage by the sea with a private beach.', 'Malibu, California', 250.00),
('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 
 'Mountain Cabin', 'Cozy cabin with amazing mountain views.', 'Aspen, Colorado', 180.00),
('cccc3333-cccc-cccc-cccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', 
 'City Loft', 'Modern loft in downtown New York.', 'New York, NY', 320.00);

-- ==========================
-- BOOKINGS
-- ==========================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1111111-b111-b111-b111-b111111111111', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 
 '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 1000.00, 'confirmed'),
('b2222222-b222-b222-b222-b222222222222', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 
 '33333333-3333-3333-3333-333333333333', '2025-07-10', '2025-07-15', 900.00, 'pending'),
('b3333333-b333-b333-b333-b333333333333', 'cccc3333-cccc-cccc-cccc-cccccccccccc', 
 '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-03', 640.00, 'canceled');

-- ==========================
-- PAYMENTS
-- ==========================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('p1111111-p111-p111-p111-p111111111111', 'b1111111-b111-b111-b111-b111111111111', 1000.00, 'credit_card'),
('p2222222-p222-p222-p222-p222222222222', 'b2222222-b222-b222-b222-b222222222222', 900.00, 'paypal');

-- ==========================
-- REVIEWS
-- ==========================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r1111111-r111-r111-r111-r111111111111', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 
 '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! The view was stunning and the cottage was spotless.'),
('r2222222-r222-r222-r222-r222222222222', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 
 '33333333-3333-3333-3333-333333333333', 4, 'Very comfortable and quiet, but a bit far from the town center.'),
('r3333333-r333-r333-r333-r333333333333', 'cccc3333-cccc-cccc-cccc-cccccccccccc', 
 '11111111-1111-1111-1111-111111111111', 3, 'Nice design but too noisy at night.');

-- ==========================
-- MESSAGES
-- ==========================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m1111111-m111-m111-m111-m111111111111', '11111111-1111-1111-1111-111111111111', 
 '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the Seaside Cottage available in June?'),
('m2222222-m222-m222-m222-m222222222222', '22222222-2222-2222-2222-222222222222', 
 '11111111-1111-1111-1111-111111111111', 'Yes, it’s available! Would you like to book it?'),
('m3333333-m333-m333-m333-m333333333333', '33333333-3333-3333-3333-333333333333', 
 '22222222-2222-2222-2222-222222222222', 'Hey Bob, is your cabin pet-friendly?'),
('m4444444-m444-m444-m444-m444444444444', '22222222-2222-2222-2222-222222222222', 
 '33333333-3333-3333-3333-333333333333', 'Yes, pets are allowed!');

-- ===========================================================
-- END OF SEED DATA
-- ===========================================================
