-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- SELECT SUM(price * billing_frequency) AS annual_revenue
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() -- MySQL

SELECT TRUNCATE(consumption, 0) -- MySQL
-- SELECT TRUNC(consumption, 0) -- Postgresql
-- SELECT consumption
FROM memberships;
