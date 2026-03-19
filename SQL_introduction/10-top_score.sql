-- This script lists all records from the second_table
-- It displays the score and name in that order
-- The results are ordered by score (top first)
-- The database name is passed as an argument

-- Select score and name, ordered by score in descending order
SELECT score, name
FROM second_table
ORDER BY score DESC;
