CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

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

-- Intermediate table => n:n
CREATE TABLE projects_employees (
  employee_id INT,
  project_id INT,  -- MySQL
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE, -- MySQL
  -- project_id INT REFERENCES projects ON DELETE CASCADE,  -- Postgresql
  PRIMARY KEY (employee_id, project_id),
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE
  -- FOREIGN KEY (employee_id, project_id) REFERENCES employees (eid, pid) ON DELETE ...
);
