-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL;

SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;

-- If you are working with timestamps:
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;
