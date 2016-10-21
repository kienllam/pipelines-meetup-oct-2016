CREATE DATABASE twitter;
USE twitter;


CREATE TABLE tweets (
    id TEXT,
    ts TIMESTAMP,
    retweet_count INT,
    favorite_count INT,
    username TEXT,
    body TEXT,
    KEY (username) USING CLUSTERED COLUMNSTORE
);


CREATE TABLE tweet_links (
    id TEXT,
    username TEXT,
    ref_username TEXT,
    KEY (username) USING CLUSTERED COLUMNSTORE
);
