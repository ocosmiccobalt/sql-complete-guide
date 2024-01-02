CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- email VARCHAR(200), -- MySQL
  -- FOREIGN KEY (email) REFERENCES intranet_accounts (email) -- MySQL
  -- email VARCHAR(200) REFERENCES intranet_accounts (email) -- Postgresql
  email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  email VARCHAR(200), -- MySQL
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MySQL
  -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- Postgresql
  password VARCHAR(200) NOT NULL
);
