-- We build up on the project state from the last module 'Built-in Query Functions & Operators',
-- on the same 'gym' database

INSERT INTO customers(
  first_name,
  last_name,
  email
)
VALUES(
  'Marry',
  'White',
  'white@test.com'
);

INSERT INTO orders(
  amount_billed,
  customer_id
)
VALUES(
  103.12
);
