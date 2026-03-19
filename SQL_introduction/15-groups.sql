-- This script lists the score and the number of records with that score
-- The result will display the score and number of records labeled as number
-- The list is sorted by the number of records (in descending order)
-- The database name is passed as an argument

-- Select score and count of records for each score, ordered by count in descending order
SELECT score, COUNT(*) AS number
FROM second_table
GROUP BY score
ORDER BY number DESC;
