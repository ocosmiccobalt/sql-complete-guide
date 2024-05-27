-- LIKE returns boolean in Postgresql (1 or 0 in MySQL)

-- SELECT first_name LIKE 'Max', first_name
-- FROM memberships;

-- There is an undefined amount of characters and an undefined character in general (after 'Ma'):
-- SELECT first_name LIKE 'Ma%', first_name
-- FROM memberships;

-- The underscore here is a placeholder for one single character:
-- SELECT first_name LIKE '__o%', first_name
-- FROM memberships;

-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J____';

-- LIKE is case sensitive in Postgresql,
-- is not case sensitive in MySQL:
SELECT first_name LIKE 'ma%', first_name
FROM memberships;

-- Postgresql only,
-- ILIKE keyword deactivates case sensitive option:
-- SELECT first_name ILIKE 'ma%', first_name
-- FROM memberships;
