-- QUERIES

--1.  Query for all fields
  -- from users table

-- SELECT *
-- FROM users;

--2. Query for all fields
  -- from posts
  -- where users_id IS 100

-- SELECT *
-- FROM posts
-- WHERE users_id = 100;


--3. Query for post fields, users.last_name
  -- from posts
  -- where users_id IS 200

-- SELECT posts. *, users.first_name, users.last_name
-- FROM posts
-- JOIN users ON posts.users_id = users_id
-- WHERE users.users_id = 200;

--4. Query for all fields and username
  -- from posts
  --  where users.first_name IS 'Norene' AND users.last_name IS 'Schmitt'

-- SELECT posts.*, users.first_name
-- FROM posts
-- JOIN users ON posts.users_id = users.users_id
-- WHERE first_name = 'Norene'
-- AND last_name = 'Schmitt';

--5. Query for usernames
  -- from users
  -- where post.created_at IS after Jan 1, 2015

-- SELECT username
-- FROM users
-- WHERE created_at > '2015-01-01';

--6. Query for post title, post content, users.username
  -- from posts
  -- where users.created_at IS afer Jan 1, 2015

SELECT posts.title, posts.content, users.username
FROM posts
JOIN users ON posts.users_id = users.id
WHERE users.created_at < '2015-01-01';

--7. Query for all fields
  -- from comments
  -- with alias 'Post Title'

--8. Query for all fields
  -- from comments
  -- wtih alias 'post_url'
  -- with alia 'comment_body'
  -- where posts.created_at IS after Jan 1, 2015

--9. Query for all fields
  -- from comments
  -- with alias 'post_title'
  -- with alias 'post_url'
  -- with alias 'comment_body'
  -- where the comment body INCLUDES 'USB'

--10. Query for all fields
  -- from comments
  -- with alias 'post_title'
  -- with alias 'post_url'
  -- with alias 'comment_body'
  -- where the comment_body INCLUDES 'matrix'

--11. Query for post_title (alias), first_name, last_name, comment_body
  -- from posts
  -- where comment_body contains 'SSL' AND post_content contains 'dolorum'

 --12. Query for first_name (alias post_author_first_name), last_name, comment_body
   -- from comments table
   -- where post_content contains

--13. Query for first_name(alias post_author_first_name), last_name, post_title, username, comment_body
     -- from comments
     -- where comment_body contains 'SSL' OR 'firewall' AND post_content contains 'nemo'

-- ADDITIONAL QUERIES

  -- Find post_id, post_title, user_id
  -- from posts
  -- where comments users_id IS post.user

  -- Find comments
  -- from posts
  -- where created_at is after July 4, 2015

-- Find all fields
  -- from users
  -- where comments.body includes 'programming'
