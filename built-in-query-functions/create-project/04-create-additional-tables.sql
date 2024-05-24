CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  email VARCHAR(200)
);

CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  amount_billed NUMERIC(5,2),
  customer_id INT, -- MySQL
  FOREIGN KEY (customer_id) REFERENCES customers (id) -- MySQL
  -- customer_id INT REFERENCES customers (id) -- Postgresql
);
