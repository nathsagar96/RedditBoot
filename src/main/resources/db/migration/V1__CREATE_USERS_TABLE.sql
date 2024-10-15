CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    bio TEXT,
    avatar bytea,
    enabled BOOLEAN DEFAULT FALSE,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP
);