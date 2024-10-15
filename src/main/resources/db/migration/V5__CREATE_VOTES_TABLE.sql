CREATE TABLE votes (
    id SERIAL PRIMARY KEY,
    vote_type VARCHAR(255) NOT NULL,
    post_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);