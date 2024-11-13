/*
** Keep track of changes made to fix errors to supplemental data 'krsp_suppl' following the 2024 season.
*/
BEGIN;

###########################################
# Cleanup to krsp_suppl after 2024 season #
###########################################

# quadrat areas were incorrect for many years.  This code will go back and correct this.

UPDATE midden_cones
SET area_quad = 0.49
WHERE year = 2007;

UPDATE midden_cones
SET area_quad = 0.36
WHERE year > 2007 AND year <2011;

UPDATE midden_cones
SET area_quad = 0.09
WHERE year > 2010;


COMMIT;