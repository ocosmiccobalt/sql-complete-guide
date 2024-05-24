-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin
-- FROM memberships;

-- DOW & ISODOW Postgresql only:
-- DOW gives us back an integer for a specific day
-- (the number 1 stands for Monday, Sunday is zero)
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin
-- FROM memberships;

-- MySQL:
-- (0 stands for Monday)
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships;

-- MySQL only:
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;

-- Postgresql only:
-- SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
-- FROM memberships;
