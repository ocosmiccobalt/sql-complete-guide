-- Postgresql
-- (in MySQL this changes the data type):
-- SELECT membership_start + 7, membership_start
-- FROM memberships;

-- MySQL only,
-- use DATE_SUB to deduct days:
SELECT DATE_ADD(
  membership_start, INTERVAL 7 DAY -- MONTH, YEAR (singular, no plural)
), membership_start
FROM memberships;


-- Postgresql only:
-- SELECT (
--   membership_start + INTERVAL '7 MONTH' -- MONTH, DAY, DAYS, YEAR, YEARS
-- )::TIMESTAMP::DATE, membership_start
-- FROM memberships;
