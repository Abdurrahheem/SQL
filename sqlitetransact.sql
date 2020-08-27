PRAGMA FOREIGN_KEYS = NO;

DROP TABLE IF EXISTS profiles;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME NOT NULL,
  update_at DATETIME NOT NULL,
  balance DECIMAL(10, 2) NOT NULL
);
CREATE TABLE IF NOT EXISTS profiles(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  name VARCHAR(255),
  last_name VARCHAR(255),
  photo_path VARCHAR(255),
  about TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);


INSERT INTO   users(username, password, email, created_at, update_at, balance)
VALUES ('skavanger', 'somepassword1', 'admin@gmial.com', datetime('NOW'), datetime('NOW'), 470);

INSERT INTO   profiles(user_id, name, last_name, photo_path, about)
VALUES (1, 'Alexander', 'Shevchecnko','database/photos/alexder.png','machine learning expert');

INSERT INTO   users(username, password, email, created_at, update_at, balance)
VALUES ('username1', 'somepassword3', 'notadmin@gmial.com', datetime('NOW'), datetime('NOW'), 125);

INSERT INTO   profiles(user_id, name, last_name, photo_path, about)
VALUES (1, 'Vladislav', 'Alekseev','database/photos/vlad.png','DL engineer');

INSERT INTO   users(username, password, email, created_at, update_at, balance)
VALUES ('username2', 'somepassword2', '~notadmin@gmial.com', datetime('NOW'), datetime('NOW'), 852);

INSERT INTO   profiles(user_id, name, last_name, photo_path, about)
VALUES (1, 'Iven', 'Sheer','database/photos/sheer.png','product manager');
