CREATE TABLE verification_tokens (
    id SERIAL PRIMARY KEY,
    token VARCHAR(255) NOT NULL,
    user_id BIGINT,
    expiry_date TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);