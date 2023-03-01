/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2021 season
*/
BEGIN;

#############################
# Cleanup after 2021 season #
#############################

#  Note the query that automatically adds a litter record for trapped females did this for many juveniles in 2019.  This did not happen in 2021.


#Squirrels to be merged from 2021 - from Database Notes

# Merge 25202 > 24524
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25202, 24524, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 24524 AND s2.id = 25202;

UPDATE trapping SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE behaviour SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE census SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE litter SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE juvenile SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaAdmums SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaBehaviour SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaFLastAll SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaJuvenile SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaMidden SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE dbaTrapping SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE pedigree SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE pedigree SET dam_id = 24524 WHERE dam_id = 25202;
UPDATE pedigree SET sire_id = 24524 WHERE sire_id = 25202;
UPDATE pedigree_clean SET squirrel_id = 24524 WHERE squirrel_id = 25202;
UPDATE pedigree_clean SET dam_id = 24524 WHERE dam_id = 25202;
UPDATE pedigree_clean SET sire_id = 24524 WHERE sire_id = 25202;

DELETE FROM squirrel
WHERE id = 25202;

# Merge 25185 > 25098
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25185, 24524, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 24524 AND s2.id = 25185;

UPDATE trapping SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE behaviour SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE census SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE litter SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE juvenile SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaAdmums SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaBehaviour SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaFLastAll SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaJuvenile SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaMidden SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE dbaTrapping SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE pedigree SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE pedigree SET dam_id = 24524 WHERE dam_id = 25185;
UPDATE pedigree SET sire_id = 24524 WHERE sire_id = 25185;
UPDATE pedigree_clean SET squirrel_id = 24524 WHERE squirrel_id = 25185;
UPDATE pedigree_clean SET dam_id = 24524 WHERE dam_id = 25185;
UPDATE pedigree_clean SET sire_id = 24524 WHERE sire_id = 25185;

DELETE FROM squirrel
WHERE id = 25185;

# Merge 25227 > 24751
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25227, 24751, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 24751 AND s2.id = 25227;

UPDATE trapping SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE behaviour SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE census SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE litter SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE juvenile SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaAdmums SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaBehaviour SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaFLastAll SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaJuvenile SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaMidden SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE dbaTrapping SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE pedigree SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE pedigree SET dam_id = 24751 WHERE dam_id = 25227;
UPDATE pedigree SET sire_id = 24751 WHERE sire_id = 25227;
UPDATE pedigree_clean SET squirrel_id = 24751 WHERE squirrel_id = 25227;
UPDATE pedigree_clean SET dam_id = 24751 WHERE dam_id = 25227;
UPDATE pedigree_clean SET sire_id = 24751 WHERE sire_id = 25227;

DELETE FROM squirrel
WHERE id = 25227;

# Merge 25411 > 24882
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25411, 24882, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 24882 AND s2.id = 25411;

UPDATE trapping SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE behaviour SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE census SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE litter SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE juvenile SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaAdmums SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaBehaviour SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaFLastAll SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaJuvenile SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaMidden SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaTrapping SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree SET dam_id = 24882 WHERE dam_id = 25411;
UPDATE pedigree SET sire_id = 24882 WHERE sire_id = 25411;
UPDATE pedigree_clean SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree_clean SET dam_id = 24882 WHERE dam_id = 25411;
UPDATE pedigree_clean SET sire_id = 24882 WHERE sire_id = 25411;

DELETE FROM squirrel
WHERE id = 25411;

# Merge 25396 > 25274
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25396, 25274, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25274 AND s2.id = 25396;

UPDATE trapping SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE behaviour SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE census SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE litter SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE juvenile SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaAdmums SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaBehaviour SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaFLastAll SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaJuvenile SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaMidden SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaTrapping SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree SET dam_id = 25274 WHERE dam_id = 25396;
UPDATE pedigree SET sire_id = 25274 WHERE sire_id = 25396;
UPDATE pedigree_clean SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree_clean SET dam_id = 25274 WHERE dam_id = 25396;
UPDATE pedigree_clean SET sire_id = 25274 WHERE sire_id = 25396;

DELETE FROM squirrel
WHERE id = 25396;

# Merge 25411 > 24882
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25411, 24882, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 24882 AND s2.id = 25411;

UPDATE trapping SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE behaviour SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE census SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE litter SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE juvenile SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaAdmums SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaBehaviour SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaFLastAll SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaJuvenile SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaMidden SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE dbaTrapping SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree SET dam_id = 24882 WHERE dam_id = 25411;
UPDATE pedigree SET sire_id = 24882 WHERE sire_id = 25411;
UPDATE pedigree_clean SET squirrel_id = 24882 WHERE squirrel_id = 25411;
UPDATE pedigree_clean SET dam_id = 24882 WHERE dam_id = 25411;
UPDATE pedigree_clean SET sire_id = 24882 WHERE sire_id = 25411;

DELETE FROM squirrel
WHERE id = 25411;

# Merge 25396 > 25274
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25396, 25274, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25274 AND s2.id = 25396;

UPDATE trapping SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE behaviour SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE census SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE litter SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE juvenile SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaAdmums SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaBehaviour SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaFLastAll SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaJuvenile SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaMidden SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE dbaTrapping SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree SET dam_id = 25274 WHERE dam_id = 25396;
UPDATE pedigree SET sire_id = 25274 WHERE sire_id = 25396;
UPDATE pedigree_clean SET squirrel_id = 25274 WHERE squirrel_id = 25396;
UPDATE pedigree_clean SET dam_id = 25274 WHERE dam_id = 25396;
UPDATE pedigree_clean SET sire_id = 25274 WHERE sire_id = 25396;

DELETE FROM squirrel
WHERE id = 25396;

# Merge 25236 > 25161
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25236, 25161, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25161 AND s2.id = 25236;

UPDATE trapping SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE behaviour SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE census SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE litter SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE juvenile SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaAdmums SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaBehaviour SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaFLastAll SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaJuvenile SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaMidden SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE dbaTrapping SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE pedigree SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE pedigree SET dam_id = 25161 WHERE dam_id = 25236;
UPDATE pedigree SET sire_id = 25161 WHERE sire_id = 25236;
UPDATE pedigree_clean SET squirrel_id = 25161 WHERE squirrel_id = 25236;
UPDATE pedigree_clean SET dam_id = 25161 WHERE dam_id = 25236;
UPDATE pedigree_clean SET sire_id = 25161 WHERE sire_id = 25236;

DELETE FROM squirrel
WHERE id = 25236;

# Merge 25217 > 25075
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25217, 25075, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25075 AND s2.id = 25217;

UPDATE trapping SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE behaviour SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE census SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE litter SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE juvenile SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaAdmums SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaBehaviour SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaFLastAll SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaJuvenile SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaMidden SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE dbaTrapping SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE pedigree SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE pedigree SET dam_id = 25075 WHERE dam_id = 25217;
UPDATE pedigree SET sire_id = 25075 WHERE sire_id = 25217;
UPDATE pedigree_clean SET squirrel_id = 25075 WHERE squirrel_id = 25217;
UPDATE pedigree_clean SET dam_id = 25075 WHERE dam_id = 25217;
UPDATE pedigree_clean SET sire_id = 25075 WHERE sire_id = 25217;

DELETE FROM squirrel
WHERE id = 25217;

# Merge 25205 > 25057
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25205, 25057, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25057 AND s2.id = 25205;

UPDATE trapping SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE behaviour SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE census SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE litter SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE juvenile SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaAdmums SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaBehaviour SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaFLastAll SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaJuvenile SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaMidden SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE dbaTrapping SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE pedigree SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE pedigree SET dam_id = 25057 WHERE dam_id = 25205;
UPDATE pedigree SET sire_id = 25057 WHERE sire_id = 25205;
UPDATE pedigree_clean SET squirrel_id = 25057 WHERE squirrel_id = 25205;
UPDATE pedigree_clean SET dam_id = 25057 WHERE dam_id = 25205;
UPDATE pedigree_clean SET sire_id = 25057 WHERE sire_id = 25205;

DELETE FROM squirrel
WHERE id = 25205;

# Merge 25237 > 25119
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25237, 25119, "2021 database fix");

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 25119 AND s2.id = 25237;

UPDATE trapping SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE behaviour SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE census SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE litter SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE juvenile SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaAdmums SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaBehaviour SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaFLastAll SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaJuvenile SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaMidden SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE dbaTrapping SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE pedigree SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE pedigree SET dam_id = 25119 WHERE dam_id = 25237;
UPDATE pedigree SET sire_id = 25119 WHERE sire_id = 25237;
UPDATE pedigree_clean SET squirrel_id = 25119 WHERE squirrel_id = 25237;
UPDATE pedigree_clean SET dam_id = 25119 WHERE dam_id = 25237;
UPDATE pedigree_clean SET sire_id = 25119 WHERE sire_id = 25237;

DELETE FROM squirrel
WHERE id = 25237;


######################
# Errors from GitHub #
######################
#Issue #64
UPDATE trapping
SET sex = "F"
WHERE squirrel_id = 21984 AND id = 129586;

#Issue #64
UPDATE trapping
SET sex = "F"
WHERE squirrel_id = 22016 AND id = 132256;

# Issue #65
DELETE FROM trapping
WHERE squirrel_id = 6528 AND id = 66606;

DELETE FROM trapping
WHERE squirrel_id = 6677 AND id = 68558;

DELETE FROM behaviour
WHERE squirrel_id = 6677 AND id = 54297;

DELETE FROM behaviour
WHERE squirrel_id = 6677 AND id = 63830;

DELETE FROM behaviour
WHERE squirrel_id = 6677 AND id = 74559;

# Issue #66
UPDATE census
SET taglft = "M2792"
WHERE id = 14481 AND squirrel_id = 24524;

UPDATE census
SET tagrt = "M1861"
WHERE id = 14481 AND squirrel_id = 24524;

# Need to reassign trapping and census records to 25098 from 24524 for tags (M7054/M7055)
UPDATE census
SET squirrel_id = 25098
WHERE squirrel_id = 24524 AND taglft = "M7054" AND tagrt = "M7055";

UPDATE trapping
SET squirrel_id = 25098
WHERE squirrel_id = 24524 AND tagLft = "M7054" AND tagRt = "M7055";

UPDATE behaviour
SET squirrel_id = 25098
WHERE tag_left = "M7054" AND tag_right = "M7055";

# Create a new squirrel_id and move the info for squirrel_id = 24524 into there

# Merge 25205 > 25057
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24524, 25421, "2021 database fix");

# Because of these mixups I needed to first manually add a new squirrel record for this squirrel
UPDATE squirrel SET census_date = "2021-05-15" WHERE id = 25421;
UPDATE squirrel SET colorlft = "Y!" WHERE id = 25421;
UPDATE squirrel SET colorrt = "Y!" WHERE id = 25421;
UPDATE squirrel SET locx = "C.7" WHERE id = 25421;
UPDATE squirrel SET locy = "18.2" WHERE id = 25421;
UPDATE squirrel SET taglft = "M2792" WHERE id = 25421;
UPDATE squirrel SET tagrt = "M1861" WHERE id = 25421;
UPDATE squirrel SET trap_date = "2021-06-13" WHERE id = 25421;

UPDATE trapping SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE behaviour SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE census SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE litter SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE juvenile SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaAdmums SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaBehaviour SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaFLastAll SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaJuvenile SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaMidden SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE dbaTrapping SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE pedigree SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE pedigree SET dam_id = 25421 WHERE dam_id = 24524;
UPDATE pedigree SET sire_id = 25421 WHERE sire_id = 24524;
UPDATE pedigree_clean SET squirrel_id = 25421 WHERE squirrel_id = 24524;
UPDATE pedigree_clean SET dam_id = 25421 WHERE dam_id = 24524;
UPDATE pedigree_clean SET sire_id = 25421 WHERE sire_id = 24524;

DELETE FROM squirrel
WHERE id = 24524;




# Issue #67
UPDATE trapping
SET sex = "F"
WHERE squirrel_id = 23320 AND id = 149983;

UPDATE trapping
SET sex = "F"
WHERE squirrel_id = 23320 AND id = 150075;

# Issue #68
DELETE FROM historic_squirrel_ids
WHERE id = 40 AND old_squirrel_id = 11895;

# Other error noticed (duplication)
DELETE FROM historic_squirrel_ids
WHERE id = 42 AND old_squirrel_id = 11674;

# Issue #69
UPDATE trapping
SET squirrel_id = NULL
WHERE id = 66233 AND squirrel_id = 7043;

UPDATE trapping
SET tagLft = NULL
WHERE id = 66233 AND squirrel_id = 7043;

UPDATE trapping
SET tagRt = NULL
WHERE id = 66233 AND squirrel_id = 7043;

UPDATE behaviour
SET squirrel_id = NULL
WHERE id = 62180 AND squirrel_id = 7043;

UPDATE behaviour
SET tag_left = NULL
WHERE id = 62180 AND squirrel_id = 7043;

UPDATE behaviour
SET tag_right = NULL
WHERE id = 62180 AND squirrel_id = 7043;

# Issue # 71
UPDATE trapping
SET sex = "F"
WHERE squirrel_id = 22016 AND id = 132256;


# Issue # 72
UPDATE behaviour
SET grid = "KL"
WHERE squirrel_id = 21023 AND date = "2016-06-11";


# Issue #73
UPDATE juvenile
SET TagWt = 57.4
WHERE squirrel_id = 24961 AND id = 15352;


# Issue #77
UPDATE behaviour
SET comments = "barking at me"
WHERE id = 375104;

UPDATE behaviour
SET comments = "barking at me"
WHERE id = 375112;

UPDATE behaviour
SET comments = "barking at me"
WHERE id = 375116;

UPDATE behaviour
SET comments = "watching me; neighbors barking"
WHERE id = 375383;

UPDATE behaviour
SET comments = "neighbors barking"
WHERE id = 375495;

UPDATE behaviour
SET comments = "neighbors barking"
WHERE id = 375535;

UPDATE behaviour
SET comments = "neighbors barking"
WHERE id = 375557;

UPDATE behaviour
SET comments = "neighbors barking"
WHERE id = 375579;

# Issue #79
UPDATE juvenile
SET sex = "F"
WHERE squirrel_id = 22699 AND id = 13730;

# Issue #84
UPDATE trapping
SET wgt = 245
WHERE squirrel_id = 21355 AND id = 133728;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 13129 AND id = 149472;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 13129 AND id = 149470;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 13129 AND id = 149469;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 13129 AND id = 149468;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 13129 AND id = 149466;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 22274 AND id = 156614;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 21325 AND id = 131915;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 19601 AND id = 131921;

UPDATE trapping
SET wgt = NULL
WHERE squirrel_id = 10178 AND id = 92937;

# Issue #85
UPDATE behaviour
SET `mode` = 8
WHERE id = 370398 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370402 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370406 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370393 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370397 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370407 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370394 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370395 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370399 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370400 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370404 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370396 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370401 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370409 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370392 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370408 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370807 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370794 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370804 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370810 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370796 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370800 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370801 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370802 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370805 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370798 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370799 AND squirrel_id = 22758;

UPDATE behaviour
SET `mode` = 8
WHERE id = 370809 AND squirrel_id = 22758;

# Issue #86
UPDATE trapping
SET locx = "G.5"
WHERE squirrel_id = 23299 AND id = 150282;

# Issue #87
UPDATE trapping
SET locx = "I.5"
WHERE squirrel_id = 23311 AND id = 372014;

UPDATE trapping
SET locy = "1.0"
WHERE squirrel_id = 23311 AND id = 372014;

# Issue #92
UPDATE juvenile
SET weight = NULL
WHERE squirrel_id = 1541 AND id = 1600;
COMMIT;
