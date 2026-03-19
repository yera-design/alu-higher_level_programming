-- This script computes the average score of all records in the second_table
-- The result will be displayed in a column called average
-- The database name is passed as an argument

-- Compute the average score of all records
SELECT AVG(score) AS average
FROM second_table;
