-- This script lists all records from second_table where the name is not NULL
-- The result will display score and name in that order
-- Records are listed by descending score
-- The database name is passed as an argument

-- Select score and name, ordered by score in descending order, where name is not NULL
SELECT score, name
FROM second_table
WHERE name IS NOT NULL
ORDER BY score DESC;
