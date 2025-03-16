/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2023 season
*/
BEGIN;


UPDATE litter
SET fieldBDate = NULL
WHERE id = 942 AND squirrel_id = 1492 AND fieldBDate = "1992-04-26";


COMMIT;