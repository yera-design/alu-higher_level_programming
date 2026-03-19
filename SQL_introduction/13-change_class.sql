-- This script removes all records with score <= 5 from the second_table
-- The database name is passed as an argument

-- Delete records where score is less than or equal to 5
DELETE FROM second_table
WHERE score <= 5;
