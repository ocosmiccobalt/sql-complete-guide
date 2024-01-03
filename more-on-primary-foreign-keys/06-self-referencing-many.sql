CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL
  -- ...
);

CREATE TABLE users_friends (
  user_id INT, -- MySQL
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE, -- MySQL
  -- user_id INT REFERENCES users ON DELETE CASCADE, -- Postgresql
  friend_id INT, -- MySQL
  FOREIGN KEY (friend_id) REFERENCES users (id) ON DELETE CASCADE, -- MySQL
  -- friend_id INT REFERENCES users ON DELETE CASCADE, -- Postgresql
  CHECK (user_id < friend_id),
  PRIMARY KEY (user_id, friend_id)
);
