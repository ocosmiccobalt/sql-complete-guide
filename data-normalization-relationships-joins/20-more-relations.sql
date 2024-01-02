CREATE TABLE company_buildings (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  name VARCHAR(300) NOT NULL,
  building_id INT, -- MySQL
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL -- MySQL
  -- building_id INT REFERENCES company_buildings ON DELETE SET NULL -- Postgresql
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1, -- MySQL
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT -- MySQL
  -- team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT -- Postgresql
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  email VARCHAR(200), -- MySQL
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE, -- MySQL
  -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- Postgresql
  password VARCHAR(200) NOT NULL
);
