-- This script lists all records with score >= 10 from the second_table
-- It displays the score and name in that order
-- The results are ordered by score (top first)
-- The database name is passed as an argument

-- Select score and name, ordered by score in descending order, where score >= 10
SELECT score, name
FROM second_table
WHERE score >= 10
ORDER BY score DESC;
