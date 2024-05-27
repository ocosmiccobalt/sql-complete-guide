-- SELECT email FROM customers;

-- There are duplicates in result:
-- SELECT c.email FROM customers AS c
-- INNER JOIN orders AS o ON c.id = o.customer_id;

-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');

-- To have a list of individual email addresses without duplicates:
SELECT email
FROM customers
WHERE id IN(
  SELECT customer_id
  FROM orders
);
