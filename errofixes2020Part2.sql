/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2020 season - part two.
*/
BEGIN;

#############################
# Cleanup after 2020 season #
#############################

# After the 2020 data were merged, I looked for tag combinations that had more than one squirrel_id.  There is an R script that will do this.  
#These are some fixes associated with these errors

UPDATE juvenile
SET tagLft = NULL,
	tagRt = NULL
WHERE id = 14060 AND squirrel_id = 23056;

UPDATE trapping
SET squirrel_id = 25098
WHERE id = 169669 AND squirrel_id = 24524;

UPDATE trapping
SET squirrel_id = 25098
WHERE id = 169680 AND squirrel_id = 24524;



# Merge 23913 > 23914
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23913, 23914, "2020 database fix");

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
WHERE s1.id = 23914 AND s2.id = 23913;

UPDATE trapping SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE behaviour SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE census SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE litter SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE juvenile SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaAdmums SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaBehaviour SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaFLastAll SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaJuvenile SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaMidden SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE dbaTrapping SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE pedigree SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE pedigree SET dam_id = 23914 WHERE dam_id = 23913;
UPDATE pedigree SET sire_id = 23914 WHERE sire_id = 23913;
UPDATE pedigree_clean SET squirrel_id = 23914 WHERE squirrel_id = 23913;
UPDATE pedigree_clean SET dam_id = 23914 WHERE dam_id = 23913;
UPDATE pedigree_clean SET sire_id = 23914 WHERE sire_id = 23913;

DELETE FROM squirrel
WHERE id = 23913;

# Merge 23821 > 20504
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23821, 20504, "2020 database fix");

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
WHERE s1.id = 20504 AND s2.id = 23821;

UPDATE trapping SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE behaviour SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE census SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE litter SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE juvenile SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaAdmums SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaBehaviour SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaFLastAll SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaJuvenile SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaMidden SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE dbaTrapping SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE pedigree SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE pedigree SET dam_id = 20504 WHERE dam_id = 23821;
UPDATE pedigree SET sire_id = 20504 WHERE sire_id = 23821;
UPDATE pedigree_clean SET squirrel_id = 20504 WHERE squirrel_id = 23821;
UPDATE pedigree_clean SET dam_id = 20504 WHERE dam_id = 23821;
UPDATE pedigree_clean SET sire_id = 20504 WHERE sire_id = 23821;

DELETE FROM squirrel
WHERE id = 23821;

# Merge 23818 > 20223
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23818, 20223, "2020 database fix");

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
WHERE s1.id = 20223 AND s2.id = 23818;

UPDATE trapping SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE behaviour SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE census SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE litter SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE juvenile SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaAdmums SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaBehaviour SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaFLastAll SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaJuvenile SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaMidden SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE dbaTrapping SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE pedigree SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE pedigree SET dam_id = 20223 WHERE dam_id = 23818;
UPDATE pedigree SET sire_id = 20223 WHERE sire_id = 23818;
UPDATE pedigree_clean SET squirrel_id = 20223 WHERE squirrel_id = 23818;
UPDATE pedigree_clean SET dam_id = 20223 WHERE dam_id = 23818;
UPDATE pedigree_clean SET sire_id = 20223 WHERE sire_id = 23818;

DELETE FROM squirrel
WHERE id = 23818;

# Merge 23817 > 21393
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23817, 21393, "2020 database fix");

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
WHERE s1.id = 21393 AND s2.id = 23817;

UPDATE trapping SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE behaviour SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE census SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE litter SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE juvenile SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaAdmums SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaBehaviour SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaFLastAll SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaJuvenile SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaMidden SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE dbaTrapping SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE pedigree SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE pedigree SET dam_id = 21393 WHERE dam_id = 23817;
UPDATE pedigree SET sire_id = 21393 WHERE sire_id = 23817;
UPDATE pedigree_clean SET squirrel_id = 21393 WHERE squirrel_id = 23817;
UPDATE pedigree_clean SET dam_id = 21393 WHERE dam_id = 23817;
UPDATE pedigree_clean SET sire_id = 21393 WHERE sire_id = 23817;

DELETE FROM squirrel
WHERE id = 23817;

# Merge 23829 > 20916
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23829, 20916, "2020 database fix");

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
WHERE s1.id = 20916 AND s2.id = 23829;

UPDATE trapping SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE behaviour SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE census SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE litter SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE juvenile SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaAdmums SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaBehaviour SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaFLastAll SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaJuvenile SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaMidden SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE dbaTrapping SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE pedigree SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE pedigree SET dam_id = 20916 WHERE dam_id = 23829;
UPDATE pedigree SET sire_id = 20916 WHERE sire_id = 23829;
UPDATE pedigree_clean SET squirrel_id = 20916 WHERE squirrel_id = 23829;
UPDATE pedigree_clean SET dam_id = 20916 WHERE dam_id = 23829;
UPDATE pedigree_clean SET sire_id = 20916 WHERE sire_id = 23829;

DELETE FROM squirrel
WHERE id = 23829;


# Merge 23816 > 21222
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23816, 21222, "2020 database fix");

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
WHERE s1.id = 21222 AND s2.id = 23816;

UPDATE trapping SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE behaviour SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE census SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE litter SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE juvenile SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaAdmums SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaBehaviour SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaFLastAll SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaJuvenile SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaMidden SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE dbaTrapping SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE pedigree SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE pedigree SET dam_id = 21222 WHERE dam_id = 23816;
UPDATE pedigree SET sire_id = 21222 WHERE sire_id = 23816;
UPDATE pedigree_clean SET squirrel_id = 21222 WHERE squirrel_id = 23816;
UPDATE pedigree_clean SET dam_id = 21222 WHERE dam_id = 23816;
UPDATE pedigree_clean SET sire_id = 21222 WHERE sire_id = 23816;

DELETE FROM squirrel
WHERE id = 23816;

# Merge 23820 > 22008
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23820, 22008, "2020 database fix");

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
WHERE s1.id = 22008 AND s2.id = 23820;

UPDATE trapping SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE behaviour SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE census SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE litter SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE juvenile SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaAdmums SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaBehaviour SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaFLastAll SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaJuvenile SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaMidden SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE dbaTrapping SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE pedigree SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE pedigree SET dam_id = 22008 WHERE dam_id = 23820;
UPDATE pedigree SET sire_id = 22008 WHERE sire_id = 23820;
UPDATE pedigree_clean SET squirrel_id = 22008 WHERE squirrel_id = 23820;
UPDATE pedigree_clean SET dam_id = 22008 WHERE dam_id = 23820;
UPDATE pedigree_clean SET sire_id = 22008 WHERE sire_id = 23820;

DELETE FROM squirrel
WHERE id = 23820;

# Merge 23825 > 22613
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23825, 22613, "2020 database fix");

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
WHERE s1.id = 22613 AND s2.id = 23825;

UPDATE trapping SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE behaviour SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE census SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE litter SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE juvenile SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaAdmums SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaBehaviour SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaFLastAll SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaJuvenile SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaMidden SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE dbaTrapping SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE pedigree SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE pedigree SET dam_id = 22613 WHERE dam_id = 23825;
UPDATE pedigree SET sire_id = 22613 WHERE sire_id = 23825;
UPDATE pedigree_clean SET squirrel_id = 22613 WHERE squirrel_id = 23825;
UPDATE pedigree_clean SET dam_id = 22613 WHERE dam_id = 23825;
UPDATE pedigree_clean SET sire_id = 22613 WHERE sire_id = 23825;

DELETE FROM squirrel
WHERE id = 23825;

# Merge 23809 > 22296
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23809, 22296, "2020 database fix");

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
WHERE s1.id = 22296 AND s2.id = 23809;

UPDATE trapping SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE behaviour SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE census SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE litter SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE juvenile SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaAdmums SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaBehaviour SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaFLastAll SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaJuvenile SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaMidden SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE dbaTrapping SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE pedigree SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE pedigree SET dam_id = 22296 WHERE dam_id = 23809;
UPDATE pedigree SET sire_id = 22296 WHERE sire_id = 23809;
UPDATE pedigree_clean SET squirrel_id = 22296 WHERE squirrel_id = 23809;
UPDATE pedigree_clean SET dam_id = 22296 WHERE dam_id = 23809;
UPDATE pedigree_clean SET sire_id = 22296 WHERE sire_id = 23809;

DELETE FROM squirrel
WHERE id = 23809;

# Merge 23831 > 19809
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23831, 19809, "2020 database fix");

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
WHERE s1.id = 19809 AND s2.id = 23831;

UPDATE trapping SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE behaviour SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE census SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE litter SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE juvenile SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaAdmums SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaBehaviour SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaFLastAll SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaJuvenile SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaMidden SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE dbaTrapping SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE pedigree SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE pedigree SET dam_id = 19809 WHERE dam_id = 23831;
UPDATE pedigree SET sire_id = 19809 WHERE sire_id = 23831;
UPDATE pedigree_clean SET squirrel_id = 19809 WHERE squirrel_id = 23831;
UPDATE pedigree_clean SET dam_id = 19809 WHERE dam_id = 23831;
UPDATE pedigree_clean SET sire_id = 19809 WHERE sire_id = 23831;

DELETE FROM squirrel
WHERE id = 23831;

# Merge 24249 > 22028
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24249, 22028, "2020 database fix");

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
WHERE s1.id = 22028 AND s2.id = 24249;

UPDATE trapping SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE behaviour SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE census SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE litter SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE juvenile SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaAdmums SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaBehaviour SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaFLastAll SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaJuvenile SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaMidden SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE dbaTrapping SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE pedigree SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE pedigree SET dam_id = 22028 WHERE dam_id = 24249;
UPDATE pedigree SET sire_id = 22028 WHERE sire_id = 24249;
UPDATE pedigree_clean SET squirrel_id = 22028 WHERE squirrel_id = 24249;
UPDATE pedigree_clean SET dam_id = 22028 WHERE dam_id = 24249;
UPDATE pedigree_clean SET sire_id = 22028 WHERE sire_id = 24249;

DELETE FROM squirrel
WHERE id = 24249;

# Merge 24989 > 24988
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24989, 24988, "2020 database fix");

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
WHERE s1.id = 24988 AND s2.id = 24989;

UPDATE trapping SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE behaviour SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE census SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE litter SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE juvenile SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaAdmums SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaBehaviour SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaFLastAll SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaJuvenile SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaMidden SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE dbaTrapping SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE pedigree SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE pedigree SET dam_id = 24988 WHERE dam_id = 24989;
UPDATE pedigree SET sire_id = 24988 WHERE sire_id = 24989;
UPDATE pedigree_clean SET squirrel_id = 24988 WHERE squirrel_id = 24989;
UPDATE pedigree_clean SET dam_id = 24988 WHERE dam_id = 24989;
UPDATE pedigree_clean SET sire_id = 24988 WHERE sire_id = 24989;

DELETE FROM squirrel
WHERE id = 24989;

# Merge 24990 > 24988
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24990, 24988, "2020 database fix");

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
WHERE s1.id = 24988 AND s2.id = 24990;

UPDATE trapping SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE behaviour SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE census SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE litter SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE juvenile SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaAdmums SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaBehaviour SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaFLastAll SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaJuvenile SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaMidden SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE dbaTrapping SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE pedigree SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE pedigree SET dam_id = 24988 WHERE dam_id = 24990;
UPDATE pedigree SET sire_id = 24988 WHERE sire_id = 24990;
UPDATE pedigree_clean SET squirrel_id = 24988 WHERE squirrel_id = 24990;
UPDATE pedigree_clean SET dam_id = 24988 WHERE dam_id = 24990;
UPDATE pedigree_clean SET sire_id = 24988 WHERE sire_id = 24990;

DELETE FROM squirrel
WHERE id = 24990;

# Merge 23962 > 23959
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23962, 23959, "2020 database fix");

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
WHERE s1.id = 23959 AND s2.id = 23962;

UPDATE trapping SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE behaviour SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE census SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE litter SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE juvenile SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaAdmums SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaBehaviour SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaFLastAll SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaJuvenile SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaMidden SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE dbaTrapping SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE pedigree SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE pedigree SET dam_id = 23959 WHERE dam_id = 23962;
UPDATE pedigree SET sire_id = 23959 WHERE sire_id = 23962;
UPDATE pedigree_clean SET squirrel_id = 23959 WHERE squirrel_id = 23962;
UPDATE pedigree_clean SET dam_id = 23959 WHERE dam_id = 23962;
UPDATE pedigree_clean SET sire_id = 23959 WHERE sire_id = 23962;

DELETE FROM squirrel
WHERE id = 23962;

# Merge 25060 > 24471
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25060, 24471, "2020 database fix");

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
WHERE s1.id = 24471 AND s2.id = 25060;

UPDATE trapping SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE behaviour SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE census SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE litter SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE juvenile SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaAdmums SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaBehaviour SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaFLastAll SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaJuvenile SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaMidden SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE dbaTrapping SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE pedigree SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE pedigree SET dam_id = 24471 WHERE dam_id = 25060;
UPDATE pedigree SET sire_id = 24471 WHERE sire_id = 25060;
UPDATE pedigree_clean SET squirrel_id = 24471 WHERE squirrel_id = 25060;
UPDATE pedigree_clean SET dam_id = 24471 WHERE dam_id = 25060;
UPDATE pedigree_clean SET sire_id = 24471 WHERE sire_id = 25060;

DELETE FROM squirrel
WHERE id = 25060;

COMMIT;

