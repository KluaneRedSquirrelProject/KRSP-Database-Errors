/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2020 season
*/
BEGIN;

#############################
# Cleanup after 2020 season #
#############################

#  As part of the annual database launch I created test records in each table.  These were deleted manually at the end of the year.

#Merged in the field - from Database Notes
# Note there were not any database notes taken properly in 2020.  I don't think any squirrels were merged in 2020.
# Merge 23811 > 21022	
#INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23811, 21022, "2019 field season");

# Squirrels that were fate=20 in 2020 and need to be merged in the long-term database.
# 2020 Info					# Old Info
# 24862 (M5379/M5380)		couldn't find
# 24863 (M6119/M6124)		couldn't find
# 24873 (M5017/-)			23961
# 24894 (M2792/M1861)		24524
# 24914 (S0955/S0956)		24680
# 25175 (M7054/M7055)		24524

# Squirrels to be merged.  These need to also be added to the historic_squirrel_ids table
# From trapping fate = 20 (not in database)
# Merge 24873 > 23961
# Merge 24894 > 24524
# Merge 24914 > 24680
# Merge 25175 > 24524


# Merge 24873 > 23961
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24873, 23961, "2020 database fix");

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
WHERE s1.id = 23961 AND s2.id = 24873;

UPDATE trapping SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE behaviour SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE census SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE litter SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE juvenile SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaAdmums SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaBehaviour SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaFLastAll SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaJuvenile SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaMidden SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE dbaTrapping SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE pedigree SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE pedigree SET dam_id = 23961 WHERE dam_id = 24873;
UPDATE pedigree SET sire_id = 23961 WHERE sire_id = 24873;
UPDATE pedigree_clean SET squirrel_id = 23961 WHERE squirrel_id = 24873;
UPDATE pedigree_clean SET dam_id = 23961 WHERE dam_id = 24873;
UPDATE pedigree_clean SET sire_id = 23961 WHERE sire_id = 24873;

DELETE FROM squirrel
WHERE id = 24873;


# Merge 24894 > 24524
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24894, 24524, "2020 database fix");

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
WHERE s1.id = 24524 AND s2.id = 24894;

UPDATE trapping SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE behaviour SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE census SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE litter SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE juvenile SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaAdmums SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaBehaviour SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaFLastAll SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaJuvenile SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaMidden SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE dbaTrapping SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE pedigree SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE pedigree SET dam_id = 24524 WHERE dam_id = 24894;
UPDATE pedigree SET sire_id = 24524 WHERE sire_id = 24894;
UPDATE pedigree_clean SET squirrel_id = 24524 WHERE squirrel_id = 24894;
UPDATE pedigree_clean SET dam_id = 24524 WHERE dam_id = 24894;
UPDATE pedigree_clean SET sire_id = 24524 WHERE sire_id = 24894;

DELETE FROM squirrel
WHERE id = 24894;


# Merge 24914 > 24680
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24914, 24680, "2020 database fix");

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
WHERE s1.id = 24680 AND s2.id = 24914;

UPDATE trapping SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE behaviour SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE census SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE litter SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE juvenile SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaAdmums SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaBehaviour SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaFLastAll SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaJuvenile SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaMidden SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE dbaTrapping SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE pedigree SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE pedigree SET dam_id = 24680 WHERE dam_id = 24914;
UPDATE pedigree SET sire_id = 24680 WHERE sire_id = 24914;
UPDATE pedigree_clean SET squirrel_id = 24680 WHERE squirrel_id = 24914;
UPDATE pedigree_clean SET dam_id = 24680 WHERE dam_id = 24914;
UPDATE pedigree_clean SET sire_id = 24680 WHERE sire_id = 24914;

DELETE FROM squirrel
WHERE id = 24914;

# Merge 25175 > 24524
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25175, 24524, "2020 database fix");

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
WHERE s1.id = 24524 AND s2.id = 25175;

UPDATE trapping SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE behaviour SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE census SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE litter SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE juvenile SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaAdmums SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaBehaviour SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaFLastAll SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaJuvenile SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaMidden SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE dbaTrapping SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE pedigree SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE pedigree SET dam_id = 24524 WHERE dam_id = 25175;
UPDATE pedigree SET sire_id = 24524 WHERE sire_id = 25175;
UPDATE pedigree_clean SET squirrel_id = 24524 WHERE squirrel_id = 25175;
UPDATE pedigree_clean SET dam_id = 24524 WHERE dam_id = 25175;
UPDATE pedigree_clean SET sire_id = 24524 WHERE sire_id = 25175;

DELETE FROM squirrel
WHERE id = 25175;

######################
# Errors from GitHub #
######################
# Issue 54
UPDATE litter
SET tagDt = "2016-05-04"
WHERE id = 6518 AND squirrel_id = 19666;

# Issue 55
UPDATE dbamidden
SET squirrel_id = 3500,
	tagLft = "B9353",
	tagRt = "B9354",
	tagLftNum = 29353,
	tagRtNum = 29354
WHERE id = 10134;

# Issue 56
# Many problematic trapping weights for adult squirrels.  These are clearly errors and will just be deleted.
UPDATE trapping
SET wgt = NULL
WHERE id = 21735;

UPDATE trapping
SET wgt = NULL
WHERE id = 38736;

UPDATE trapping
SET wgt = NULL
WHERE id = 36312;

UPDATE trapping
SET wgt = NULL
WHERE id = 51991;

UPDATE trapping
SET wgt = NULL
WHERE id = 31742;

UPDATE trapping
SET wgt = NULL
WHERE id = 151008;

UPDATE trapping
SET wgt = NULL
WHERE id = 129121;

UPDATE trapping
SET wgt = NULL
WHERE id = 151010;

UPDATE trapping
SET wgt = NULL
WHERE id = 136535;

UPDATE trapping
SET wgt = NULL
WHERE id = 129124;

UPDATE trapping
SET wgt = NULL
WHERE id = 36478;

UPDATE trapping
SET wgt = NULL
WHERE id = 134146;

# Issue 57
UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368836;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368837;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368838;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368839;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368840;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368841;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368842;

UPDATE behaviour
SET squirrel_id = 22896
WHERE id = 368843;

UPDATE behaviour
SET grid = "KL"
WHERE id = 371948;

UPDATE behaviour
SET grid = "KL"
WHERE id = 368638;

UPDATE behaviour
SET grid = "KL"
WHERE id = 368633;

UPDATE behaviour
SET locy = 8.2
WHERE id = 378517;

DELETE FROM behaviour
WHERE id = 381721;

# Issue 58
UPDATE litter
SET date1 = "2019-08-03"
WHERE id = 9355;

# Issue 59
UPDATE trapping
SET squirrel_id = 22465,
	tagLft = "M2080",
	tagRt = "M2081"
WHERE id = 150778;

# Issue 60
UPDATE trapping
SET wgt = NULL
WHERE id = 41156;

UPDATE trapping
SET wgt = NULL
WHERE id = 41289;

# Issue 61
UPDATE trapping
SET wgt = NULL
WHERE id = 92928;

# Issue 62
UPDATE trapping
SET bagWt = 150,
	wgt = 250
WHERE id = 140471;

# Issue 63
UPDATE trapping
SET bagWt = 125,
	wgt = 265
WHERE id = 146926;

COMMIT;

