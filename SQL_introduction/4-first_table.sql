-- This script creates a table called first_table in the current database
-- It ensures the script does not fail if the table already exists

-- Create table only if it does not exist
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);
