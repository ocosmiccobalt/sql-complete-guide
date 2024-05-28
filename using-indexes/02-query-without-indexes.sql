-- SELECT * FROM users
-- WHERE salary > 12900;

-- EXPLAIN
-- SELECT * FROM users
-- WHERE salary > 12000;

EXPLAIN ANALYZE
SELECT * FROM users
WHERE salary > 12000;
