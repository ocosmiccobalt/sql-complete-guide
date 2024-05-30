CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(300) NOT NULL
);

CREATE TABLE organizers (
  password VARCHAR(500) NOT NULL,
  user_id INT PRIMARY KEY, -- MySQL
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE -- MySQL
  -- user_id INT PRIMARY KEY REFERENCES users ON DELETE CASCADE -- Postgresql
);

CREATE TABLE tags (
  name VARCHAR(100) PRIMARY KEY
);

DROP TABLE events;

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
  FOREIGN KEY (location_id) REFERENCES locations (id) ON DELETE CASCADE, -- MySQL
  -- location_id INT REFERENCES locations (id) ON DELETE CASCADE, -- Postgresql
  organizer_id INT, -- MySQL
  FOREIGN KEY (organizer_id) REFERENCES organizers (user_id) ON DELETE CASCADE -- MySQL
  -- organizer_id INT REFERENCES organizers ON DELETE CASCADE -- Postgresql
);

CREATE TABLE events_users (
  event_id INT, -- MySQL
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE, -- MySQL
  -- event_id INT REFERENCES events ON DELETE CASCADE, -- Postgresql
  user_id INT, -- MySQL
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE, -- MySQL
  -- user_id INT REFERENCES users ON DELETE CASCADE, -- Postgresql
  CHECK (event_id < user_id),
  PRIMARY KEY (event_id, user_id)
);

CREATE TABLE events_tags (
  event_id INT, -- MySQL
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE, -- MySQL
  -- event_id INT REFERENCES events ON DELETE CASCADE, -- Postgresql
  tag_name VARCHAR(100), -- MySQL
  FOREIGN KEY (tag_name) REFERENCES tags (name) ON DELETE CASCADE, -- MySQL
  -- tag_name VARCHAR(100) REFERENCES tags ON DELETE CASCADE, -- Postgresql
  PRIMARY KEY (event_id, tag_name)
);
