-- CREATE TABLE cities (
--   name VARCHAR(200) PRIMARY KEY
-- );

-- CREATE TABLE locations (
--   id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--   -- id SERIAL PRIMARY KEY, -- Postgresql
--   title VARCHAR(300),
--   street VARCHAR(300) NOT NULL,
--   house_number VARCHAR(10) NOT NULL,
--   postal_code VARCHAR(6) NOT NULL,
--   city_name VARCHAR(200), -- MySQL
--   FOREIGN KEY (city_name) REFERENCES cities (name) ON DELETE RESTRICT ON UPDATE CASCADE -- MySQL
--   -- city_name VARCHAR(200) REFERENCES cities (name) ON DELETE RESTRICT ON UPDATE CASCADE -- Postgresql
-- );

-- DROP TABLE events;

CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5),
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(300),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0),
  location_id INT, -- MySQL
  FOREIGN KEY (location_id) REFERENCES locations (id) ON DELETE CASCADE -- MySQL
  -- location_id INT REFERENCES locations (id) ON DELETE CASCADE -- Postgresql
);
