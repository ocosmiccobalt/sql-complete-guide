-- SELECT c.name AS city_name
-- FROM cities AS c
-- INNER JOIN addresses AS a ON c.id = a.city_id;

-- SELECT c.name AS city_name
-- FROM cities AS c
-- LEFT JOIN addresses AS a ON c.id = a.city_id
-- INNER JOIN users AS u ON a.id = u.address_id;

SELECT c.name AS city_name, u.first_name, u.last_name
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON a.id = u.address_id;
