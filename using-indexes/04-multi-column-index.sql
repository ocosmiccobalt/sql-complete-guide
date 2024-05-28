EXPLAIN ANALYZE
SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';

-- CREATE INDEX multiaddress ON addresses (street, city);
