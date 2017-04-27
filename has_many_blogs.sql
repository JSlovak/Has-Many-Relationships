-- Create a user has_many_user
DROP ROLE IF EXISTS has_many_user;
CREATE ROLE has_many_user;

-- Create a database
DROP DATABASE IF EXISTS has_many_blogs;
CREATE DATABASE has_many_blogs;

\c has_many_blogs;

-- Create user table
DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(90) NOT NULL,
first_name VARCHAR(90) DEFAULT NULL,
last_name VARCHAR(90) DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);

-- Create posts table
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
id SERIAL PRIMARY KEY,
title VARCHAR(180) DEFAULT NULL,
url VARCHAR(510) DEFAULT NULL,
content TEXT DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
users_id INTEGER REFERENCES users (id)
);

-- Create comments table
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
id SERIAL PRIMARY KEY,
body VARCHAR(510) DEFAULT NULL,
created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
users_id INTEGER REFERENCES users (id),
posts_id INTEGER REFERENCES posts (id)
);

\i scripts/blog_data.sql