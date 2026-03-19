-- This script creates a table called second_table in the given database
-- It also inserts multiple rows into the second_table
-- The database name is passed as an argument
-- If the table already exists, it will not fail

-- Create the second_table if it does not exist
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows into the second_table
INSERT INTO second_table (id, name, score)
VALUES
    (1, 'John', 10),
    (2, 'Alex', 3),
    (3, 'Bob', 14),
    (4, 'George', 8);
