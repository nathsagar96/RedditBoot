CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    url VARCHAR(255),
    content TEXT,
    upvotes INT DEFAULT 0,
    downvotes INT DEFAULT 0,
    user_id BIGINT NOT NULL,
    subreddit_id BIGINT NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (subreddit_id) REFERENCES subreddits(id)
);