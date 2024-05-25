-- Postgresql,
-- by running this query we get back a specific interval data type,
-- looks like this:
-- { "hours": 1, "minutes": 3, "seconds": 9 }.
-- In MySQL
-- we get an integer (does not help too much)
-- SELECT last_checkout - last_checkin
-- FROM memberships;

-- MySQL only:
-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) -- HOUR, DAY
-- FROM memberships;

-- Postgresql,
-- membership duration in days
-- as an integer, not as an interval
-- (in MySQL we get back values which are not too helpful):
-- SELECT membership_end - membership_start
-- FROM memberships;

-- Postgresql,
-- to get an interval:
-- SELECT NOW() - membership_start
-- FROM memberships;

-- MySQL only,
-- membership duration in days:
-- SELECT DATEDIFF(membership_end, membership_start)
-- FROM memberships;

-- MySQL only:
SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;
