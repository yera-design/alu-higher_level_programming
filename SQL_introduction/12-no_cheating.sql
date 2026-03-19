-- This script updates the score of Bob to 10 in the second_table
-- The database name is passed as an argument
-- Only the name field (Bob) is used to identify the record

-- Update the score of Bob to 10
UPDATE second_table
SET score = 10
WHERE name = 'Bob';
