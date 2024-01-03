CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  supervisor_id INT, -- MySQL
  FOREIGN KEY (supervisor_id) REFERENCES employees (id) ON DELETE SET NULL -- MySQL
  -- supervisor_id INT REFERENCES employees ON DELETE SET NULL -- Postgresql
);
