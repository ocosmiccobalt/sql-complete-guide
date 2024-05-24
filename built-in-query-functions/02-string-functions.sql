-- SELECT CONCAT(first_name, ' ', last_name)
-- FROM memberships;

-- Postgresql only!
-- SELECT first_name || ' ' || last_name
-- FROM memberships;

-- SELECT CONCAT('$ ', price)
-- FROM memberships;

-- UPDATE memberships
-- SET gender = LOWER('DivErs')
-- WHERE id = 4;

-- UPDATE memberships
-- SET last_name = TRIM(BOTH ' ' FROM ' Durns  ') -- TRAILING, LEADING, BOTH
-- WHERE id = 5;

-- SELECT * FROM memberships
-- WHERE LENGTH(last_name) < 7;

SELECT id, last_name, LENGTH(last_name) FROM memberships;
