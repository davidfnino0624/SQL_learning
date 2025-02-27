CREATE INDEX idx_email name in users(email);

CREATE UNIQUE INDEX idx_email name ON users(email);

CREATE UNIQUE INDEX idx_username_email ON users(username, email);

DROP INDEX idx_username_email ON users;gir