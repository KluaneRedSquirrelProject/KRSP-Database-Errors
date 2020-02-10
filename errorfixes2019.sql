/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2019 season
*/
BEGIN;

#############################
# Cleanup after 2019 season #
#############################

#  Note the query that automatically adds a litter recorsd for trapped females did this for many juveniles.  These were deleted. directly from the litter table.  
#They had no data entered in them - probably because they were created after the crew entered all the BR codes and removed juveniles from the litter table.

# Need to change historic_squirrel_ids column name because 'change' is a reserved term

ALTER TABLE historic_squirrel_ids CHANGE `change` change_made varchar(20);

#Merged in the field - from Database Notes
# Merge 23811 > 21022	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23811, 21022, "2019 field season");

# Merge 23810 > 21023	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23810, 21023, "2019 field season");

# Merge 23870 > 21982	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23870, 21982, "2019 field season");

# Merge 24738 > 23765	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24738, 23765, "2019 field season");

# Merge 23822 > 23054	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23822, 23054, "2019 field season");

# Merge 23823 > 23054	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23823, 23054, "2019 field season");

# Merge 23812 > 21350	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23812, 23150, "2019 field season");

# Merge 23828 > 21342	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23828, 21342, "2019 field season");

# Merge 24672 > 21342	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24672, 21342, "2019 field season");

# Merge 23808 > 19764	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23808, 19764, "2019 field season");

# Merge 23814 > 23532	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23814, 23532, "2019 field season");

# Merge 23819 > 21368
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23819, 21368, "2019 field season");
	
# Merge 23897 > 23896	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23897, 23896, "2019 field season");

# Merge 23815 > 23565	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23815, 23565, "2019 field season");

# Merge 24705 > 24706	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24740, 19689, "2019 field season");

# Merge 24629 > 24704	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24740, 19689, "2019 field season");

# Merge 24767 > 24768	
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24740, 19689, "2019 field season");

# Merge 24689 > 24265
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24740, 19689, "2019 field season");	



###  Some potential merges that need to be explored further
# Duplicate tags in squirrel for 12435 and 11674 but it seems like just a problem with the tags in squirrel table for 11674.  Not sure how this happened.
UPDATE squirrel
SET taglft = "F6384"
WHERE id = 11674;

UPDATE squirrel
SET tagrt = "F6385"
WHERE id = 11674;



# Somoehow some trapping records for 19729 got switched to 13295 in 2016. This was probably an error in the field because of similar colours (Y/Bk and Y/B) and the field worker finding the squirrel through colours and then changing the tags at capture time.
UPDATE trapping SET squirrel_id = 19729 WHERE tagLft = "H3570" AND tagRt = "H3571" AND squirrel_id = 13295;
UPDATE squirrel SET tagLft = "H1622" WHERE id = 13295;
UPDATE squirrel SET tagRt = "H1623" WHERE id = 13295;
UPDATE squirrel SET trap_date = "2016-03-21" WHERE id = 13295;
UPDATE squirrel SET locx = "S.0" WHERE id = 13295;
UPDATE squirrel SET locy = 10.5 WHERE id = 13295;



# As above, somehow squirrel_id for M0322/3 shifted from 20872 at tagging to 20079 once it was caught as an adult.  20079 died during handling.  Not sure how the wrong squirrel_id got applied to 20872
UPDATE trapping SET squirrel_id = 20872 WHERE tagLft = "M0322" AND tagRt = "M0323" AND squirrel_id = 20079;
UPDATE behaviour SET squirrel_id = 20872 WHERE tag_left = "M0322" AND tag_right = "M0323" AND squirrel_id = 20079;
UPDATE squirrel SET tagLft = "H3688" WHERE id = 20079;
UPDATE squirrel SET tagRt = "H3689" WHERE id = 20079;
UPDATE squirrel SET trap_date = "2015-01-31" WHERE id = 20079;
UPDATE squirrel SET locx = "J.5" WHERE id = 20079;
UPDATE squirrel SET locy = 9.0 WHERE id = 20079;


# Duplicate tags in squirrel for 23025 and 22709 but it seems like just a problem with the tags in squirrel table for 22709.  Not sure how this happened.
UPDATE squirrel
SET taglft = "M4605"
WHERE id = 22709;

UPDATE squirrel
SET tagrt = "M4606"
WHERE id = 22709;






# Squirrels to be merged.  These need to also be added to the historic_squirrel_ids table

# Merge 24740 > 19689
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24740, 19689, "2019 database fix");

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
WHERE s1.id = 19689 AND s2.id = 24740;

UPDATE trapping SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE behaviour SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE census SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE litter SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE juvenile SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaAdmums SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaBehaviour SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaFLastAll SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaJuvenile SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaMidden SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE dbaTrapping SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE pedigree SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE pedigree SET dam_id = 19689 WHERE dam_id = 24740;
UPDATE pedigree SET sire_id = 19689 WHERE sire_id = 24740;
UPDATE pedigree_clean SET squirrel_id = 19689 WHERE squirrel_id = 24740;
UPDATE pedigree_clean SET dam_id = 19689 WHERE dam_id = 24740;
UPDATE pedigree_clean SET sire_id = 19689 WHERE sire_id = 24740;

DELETE FROM squirrel
WHERE id = 24740;

# Others from trapping fate = 20 (not in database)
# Merge 23882 > 20078
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23882, 20078, "2019 database fix");

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
WHERE s1.id = 20078 AND s2.id = 23882;

UPDATE trapping SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE behaviour SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE census SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE litter SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE juvenile SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaAdmums SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaBehaviour SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaFLastAll SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaJuvenile SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaMidden SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE dbaTrapping SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE pedigree SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE pedigree SET dam_id = 20078 WHERE dam_id = 23882;
UPDATE pedigree SET sire_id = 20078 WHERE sire_id = 23882;
UPDATE pedigree_clean SET squirrel_id = 20078 WHERE squirrel_id = 23882;
UPDATE pedigree_clean SET dam_id = 20078 WHERE dam_id = 23882;
UPDATE pedigree_clean SET sire_id = 20078 WHERE sire_id = 23882;

DELETE FROM squirrel
WHERE id = 23882;

# Merge 23892 > 23236
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23892, 23236, "2019 database fix");

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
WHERE s1.id = 23236 AND s2.id = 23892;

UPDATE trapping SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE behaviour SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE census SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE litter SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE juvenile SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaAdmums SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaBehaviour SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaFLastAll SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaJuvenile SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaMidden SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE dbaTrapping SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE pedigree SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE pedigree SET dam_id = 23236 WHERE dam_id = 23892;
UPDATE pedigree SET sire_id = 23236 WHERE sire_id = 23892;
UPDATE pedigree_clean SET squirrel_id = 23236 WHERE squirrel_id = 23892;
UPDATE pedigree_clean SET dam_id = 23236 WHERE dam_id = 23892;
UPDATE pedigree_clean SET sire_id = 23236 WHERE sire_id = 23892;

DELETE FROM squirrel
WHERE id = 23892;

# Merge 23893 > 21105
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23893, 21105, "2019 database fix");

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
WHERE s1.id = 21105 AND s2.id = 23893;

UPDATE trapping SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE behaviour SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE census SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE litter SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE juvenile SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaAdmums SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaBehaviour SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaFLastAll SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaJuvenile SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaMidden SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE dbaTrapping SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE pedigree SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE pedigree SET dam_id = 21105 WHERE dam_id = 23893;
UPDATE pedigree SET sire_id = 21105 WHERE sire_id = 23893;
UPDATE pedigree_clean SET squirrel_id = 21105 WHERE squirrel_id = 23893;
UPDATE pedigree_clean SET dam_id = 21105 WHERE dam_id = 23893;
UPDATE pedigree_clean SET sire_id = 21105 WHERE sire_id = 23893;

DELETE FROM squirrel
WHERE id = 23893;

# Merge 24719 > 23865
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24719, 23865, "2019 database fix");

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
WHERE s1.id = 23865 AND s2.id = 24719;

UPDATE trapping SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE behaviour SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE census SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE litter SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE juvenile SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaAdmums SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaBehaviour SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaFLastAll SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaJuvenile SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaMidden SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE dbaTrapping SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE pedigree SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE pedigree SET dam_id = 23865 WHERE dam_id = 24719;
UPDATE pedigree SET sire_id = 23865 WHERE sire_id = 24719;
UPDATE pedigree_clean SET squirrel_id = 23865 WHERE squirrel_id = 24719;
UPDATE pedigree_clean SET dam_id = 23865 WHERE dam_id = 24719;
UPDATE pedigree_clean SET sire_id = 23865 WHERE sire_id = 24719;

DELETE FROM squirrel
WHERE id = 24719;

# Merge 24291 > 21015
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (24291, 21015, "2019 database fix");

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
WHERE s1.id = 21015 AND s2.id = 24291;

UPDATE trapping SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE behaviour SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE census SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE litter SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE juvenile SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaAdmums SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaBehaviour SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaFLastAll SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaJuvenile SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaMidden SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE dbaTrapping SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE pedigree SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE pedigree SET dam_id = 21015 WHERE dam_id = 24291;
UPDATE pedigree SET sire_id = 21015 WHERE sire_id = 24291;
UPDATE pedigree_clean SET squirrel_id = 21015 WHERE squirrel_id = 24291;
UPDATE pedigree_clean SET dam_id = 21015 WHERE dam_id = 24291;
UPDATE pedigree_clean SET sire_id = 21015 WHERE sire_id = 24291;

DELETE FROM squirrel
WHERE id = 24291;

#Instances from squirrel table where there were the same tag numbers but different squirrel_ids
# Add these to Tag aliases
# Merge 23333 > 7839
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23333, 7839, "2019 database fix");

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
WHERE s1.id = 7839 AND s2.id = 23333;

UPDATE trapping SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE behaviour SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE census SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE litter SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE juvenile SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaAdmums SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaBehaviour SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaFLastAll SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaJuvenile SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaMidden SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE dbaTrapping SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE pedigree SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE pedigree SET dam_id = 7839 WHERE dam_id = 23333;
UPDATE pedigree SET sire_id = 7839 WHERE sire_id = 23333;
UPDATE pedigree_clean SET squirrel_id = 7839 WHERE squirrel_id = 23333;
UPDATE pedigree_clean SET dam_id = 7839 WHERE dam_id = 23333;
UPDATE pedigree_clean SET sire_id = 7839 WHERE sire_id = 23333;

DELETE FROM squirrel
WHERE id = 23333;

# Merge 22048 > 22027
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22048, 22027, "2019 database fix");

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
WHERE s1.id = 22027 AND s2.id = 22048;

UPDATE trapping SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE behaviour SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE census SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE litter SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE juvenile SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaAdmums SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaBehaviour SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaFLastAll SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaJuvenile SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaMidden SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE dbaTrapping SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE pedigree SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE pedigree SET dam_id = 22027 WHERE dam_id = 22048;
UPDATE pedigree SET sire_id = 22027 WHERE sire_id = 22048;
UPDATE pedigree_clean SET squirrel_id = 22027 WHERE squirrel_id = 22048;
UPDATE pedigree_clean SET dam_id = 22027 WHERE dam_id = 22048;
UPDATE pedigree_clean SET sire_id = 22027 WHERE sire_id = 22048;

DELETE FROM squirrel
WHERE id = 22048;

# Merge 21939 > 11914
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21939, 11914, "2019 database fix");

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
WHERE s1.id = 11914 AND s2.id = 21939;

UPDATE trapping SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE behaviour SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE census SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE litter SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE juvenile SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaAdmums SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaBehaviour SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaFLastAll SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaJuvenile SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaMidden SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE dbaTrapping SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE pedigree SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE pedigree SET dam_id = 11914 WHERE dam_id = 21939;
UPDATE pedigree SET sire_id = 11914 WHERE sire_id = 21939;
UPDATE pedigree_clean SET squirrel_id = 11914 WHERE squirrel_id = 21939;
UPDATE pedigree_clean SET dam_id = 11914 WHERE dam_id = 21939;
UPDATE pedigree_clean SET sire_id = 11914 WHERE sire_id = 21939;

DELETE FROM squirrel
WHERE id = 21939;

# Merge 21815 > 11959
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21815, 11959, "2019 database fix");

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
WHERE s1.id = 11959 AND s2.id = 21815;

UPDATE trapping SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE behaviour SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE census SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE litter SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE juvenile SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE dbaAdmums SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE dbaBehaviour SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE dbaFLastAll SET squirrel_id = 111959 WHERE squirrel_id = 21815;
UPDATE dbaJuvenile SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE dbaMidden SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE dbaTrapping SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE pedigree SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE pedigree SET dam_id = 11959 WHERE dam_id = 21815;
UPDATE pedigree SET sire_id = 11959 WHERE sire_id = 21815;
UPDATE pedigree_clean SET squirrel_id = 11959 WHERE squirrel_id = 21815;
UPDATE pedigree_clean SET dam_id = 11959 WHERE dam_id = 21815;
UPDATE pedigree_clean SET sire_id = 11959 WHERE sire_id = 21815;

DELETE FROM squirrel
WHERE id = 21815;

# Merge 12011 > 8775
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (12011, 8775, "2019 database fix");

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
WHERE s1.id = 8775 AND s2.id = 12011;

UPDATE trapping SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE behaviour SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE census SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE litter SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE juvenile SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaAdmums SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaBehaviour SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaFLastAll SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaJuvenile SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaMidden SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE dbaTrapping SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE pedigree SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE pedigree SET dam_id = 8775 WHERE dam_id = 12011;
UPDATE pedigree SET sire_id = 8775 WHERE sire_id = 12011;
UPDATE pedigree_clean SET squirrel_id = 8775 WHERE squirrel_id = 12011;
UPDATE pedigree_clean SET dam_id = 8775 WHERE dam_id = 12011;
UPDATE pedigree_clean SET sire_id = 8775 WHERE sire_id = 12011;

DELETE FROM squirrel
WHERE id = 12011;


# Merge 21415 > 12600
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21415, 12600, "2019 database fix");

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
WHERE s1.id = 12600 AND s2.id = 21415;

UPDATE trapping SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE behaviour SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE census SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE litter SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE juvenile SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaAdmums SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaBehaviour SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaFLastAll SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaJuvenile SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaMidden SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE dbaTrapping SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE pedigree SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE pedigree SET dam_id = 12600 WHERE dam_id = 21415;
UPDATE pedigree SET sire_id = 12600 WHERE sire_id = 21415;
UPDATE pedigree_clean SET squirrel_id = 12600 WHERE squirrel_id = 21415;
UPDATE pedigree_clean SET dam_id = 12600 WHERE dam_id = 21415;
UPDATE pedigree_clean SET sire_id = 12600 WHERE sire_id = 21415;

DELETE FROM squirrel
WHERE id = 21415;

# Merge 21909 > 13182
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21909, 13182, "2019 database fix");

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
WHERE s1.id = 13182 AND s2.id = 21909;

UPDATE trapping SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE behaviour SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE census SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE litter SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE juvenile SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaAdmums SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaBehaviour SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaFLastAll SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaJuvenile SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaMidden SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE dbaTrapping SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE pedigree SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE pedigree SET dam_id = 13182 WHERE dam_id = 21909;
UPDATE pedigree SET sire_id = 13182 WHERE sire_id = 21909;
UPDATE pedigree_clean SET squirrel_id = 13182 WHERE squirrel_id = 21909;
UPDATE pedigree_clean SET dam_id = 13182 WHERE dam_id = 21909;
UPDATE pedigree_clean SET sire_id = 13182 WHERE sire_id = 21909;

DELETE FROM squirrel
WHERE id = 21909;

# Merge 23338 > 21942
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23338, 21942, "2019 database fix");

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
WHERE s1.id = 21942 AND s2.id = 23338;

UPDATE trapping SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE behaviour SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE census SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE litter SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE juvenile SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaAdmums SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaBehaviour SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaFLastAll SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaJuvenile SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaMidden SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE dbaTrapping SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE pedigree SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE pedigree SET dam_id = 21942 WHERE dam_id = 23338;
UPDATE pedigree SET sire_id = 21942 WHERE sire_id = 23338;
UPDATE pedigree_clean SET squirrel_id = 21942 WHERE squirrel_id = 23338;
UPDATE pedigree_clean SET dam_id = 21942 WHERE dam_id = 23338;
UPDATE pedigree_clean SET sire_id = 21942 WHERE sire_id = 23338;

DELETE FROM squirrel
WHERE id = 23338;

# Merge 23356 > 22175
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23356, 22175, "2019 database fix");

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
WHERE s1.id = 22175 AND s2.id = 23356;

UPDATE trapping SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE behaviour SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE census SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE litter SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE juvenile SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaAdmums SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaBehaviour SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaFLastAll SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaJuvenile SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaMidden SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE dbaTrapping SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE pedigree SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE pedigree SET dam_id = 22175 WHERE dam_id = 23356;
UPDATE pedigree SET sire_id = 22175 WHERE sire_id = 23356;
UPDATE pedigree_clean SET squirrel_id = 22175 WHERE squirrel_id = 23356;
UPDATE pedigree_clean SET dam_id = 22175 WHERE dam_id = 23356;
UPDATE pedigree_clean SET sire_id = 22175 WHERE sire_id = 23356;

DELETE FROM squirrel
WHERE id = 23356;

# Merge 21044 > 10383
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21044, 10383, "2019 database fix");

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
WHERE s1.id = 10383 AND s2.id = 21044;

UPDATE trapping SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE behaviour SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE census SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE litter SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE juvenile SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaAdmums SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaBehaviour SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaFLastAll SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaJuvenile SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaMidden SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE dbaTrapping SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE pedigree SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE pedigree SET dam_id = 10383 WHERE dam_id = 21044;
UPDATE pedigree SET sire_id = 10383 WHERE sire_id = 21044;
UPDATE pedigree_clean SET squirrel_id = 10383 WHERE squirrel_id = 21044;
UPDATE pedigree_clean SET dam_id = 10383 WHERE dam_id = 21044;
UPDATE pedigree_clean SET sire_id = 10383 WHERE sire_id = 21044;

DELETE FROM squirrel
WHERE id = 21044;

# Merge 20374 > 8774
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (20374, 8774, "2019 database fix");

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
WHERE s1.id = 8774 AND s2.id = 20374;

UPDATE trapping SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE behaviour SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE census SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE litter SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE juvenile SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaAdmums SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaBehaviour SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaFLastAll SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaJuvenile SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaMidden SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE dbaTrapping SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE pedigree SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE pedigree SET dam_id = 8774 WHERE dam_id = 20374;
UPDATE pedigree SET sire_id = 8774 WHERE sire_id = 20374;
UPDATE pedigree_clean SET squirrel_id = 8774 WHERE squirrel_id = 20374;
UPDATE pedigree_clean SET dam_id = 8774 WHERE dam_id = 20374;
UPDATE pedigree_clean SET sire_id = 8774 WHERE sire_id = 20374;

DELETE FROM squirrel
WHERE id = 20374;


# Merge 21388 > 21257
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21388, 21257, "2019 database fix");

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
WHERE s1.id = 21257 AND s2.id = 21388;

UPDATE trapping SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE behaviour SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE census SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE litter SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE juvenile SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaAdmums SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaBehaviour SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaFLastAll SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaJuvenile SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaMidden SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE dbaTrapping SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE pedigree SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE pedigree SET dam_id = 21257 WHERE dam_id = 21388;
UPDATE pedigree SET sire_id = 21257 WHERE sire_id = 21388;
UPDATE pedigree_clean SET squirrel_id = 21257 WHERE squirrel_id = 21388;
UPDATE pedigree_clean SET dam_id = 21257 WHERE dam_id = 21388;
UPDATE pedigree_clean SET sire_id = 21257 WHERE sire_id = 21388;

DELETE FROM squirrel
WHERE id = 21388;

# Merge 23284 > 21316
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23284, 21316, "2019 database fix");

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
WHERE s1.id = 21316 AND s2.id = 23284;

UPDATE trapping SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE behaviour SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE census SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE litter SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE juvenile SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaAdmums SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaBehaviour SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaFLastAll SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaJuvenile SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaMidden SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE dbaTrapping SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE pedigree SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE pedigree SET dam_id = 21316 WHERE dam_id = 23284;
UPDATE pedigree SET sire_id = 21316 WHERE sire_id = 23284;
UPDATE pedigree_clean SET squirrel_id = 21316 WHERE squirrel_id = 23284;
UPDATE pedigree_clean SET dam_id = 21316 WHERE dam_id = 23284;
UPDATE pedigree_clean SET sire_id = 21316 WHERE sire_id = 23284;

DELETE FROM squirrel
WHERE id = 23284;

# Merge 22009 > 21269
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22009, 21269, "2019 database fix");

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
WHERE s1.id = 21269 AND s2.id = 22009;

UPDATE trapping SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE behaviour SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE census SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE litter SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE juvenile SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaAdmums SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaBehaviour SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaFLastAll SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaJuvenile SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaMidden SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE dbaTrapping SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE pedigree SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE pedigree SET dam_id = 21269 WHERE dam_id = 22009;
UPDATE pedigree SET sire_id = 21269 WHERE sire_id = 22009;
UPDATE pedigree_clean SET squirrel_id = 21269 WHERE squirrel_id = 22009;
UPDATE pedigree_clean SET dam_id = 21269 WHERE dam_id = 22009;
UPDATE pedigree_clean SET sire_id = 21269 WHERE sire_id = 22009;

DELETE FROM squirrel
WHERE id = 22009;

# Merge 21987 > 21794
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21987, 21794, "2019 database fix");

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
WHERE s1.id = 21794 AND s2.id = 21987;

UPDATE trapping SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE behaviour SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE census SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE litter SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE juvenile SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaAdmums SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaBehaviour SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaFLastAll SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaJuvenile SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaMidden SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE dbaTrapping SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE pedigree SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE pedigree SET dam_id = 21794 WHERE dam_id = 21987;
UPDATE pedigree SET sire_id = 21794 WHERE sire_id = 21987;
UPDATE pedigree_clean SET squirrel_id = 21794 WHERE squirrel_id = 21987;
UPDATE pedigree_clean SET dam_id = 21794 WHERE dam_id = 21987;
UPDATE pedigree_clean SET sire_id = 21794 WHERE sire_id = 21987;

DELETE FROM squirrel
WHERE id = 21987;

# Merge 21994 > 21993
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21994, 21993, "2019 database fix");

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
WHERE s1.id = 21993 AND s2.id = 21994;

UPDATE trapping SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE behaviour SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE census SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE litter SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE juvenile SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaAdmums SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaBehaviour SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaFLastAll SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaJuvenile SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaMidden SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE dbaTrapping SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE pedigree SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE pedigree SET dam_id = 21993 WHERE dam_id = 21994;
UPDATE pedigree SET sire_id = 21993 WHERE sire_id = 21994;
UPDATE pedigree_clean SET squirrel_id = 21993 WHERE squirrel_id = 21994;
UPDATE pedigree_clean SET dam_id = 21993 WHERE dam_id = 21994;
UPDATE pedigree_clean SET sire_id = 21993 WHERE sire_id = 21994;

DELETE FROM squirrel
WHERE id = 21994;

# Merge 21926 > 21925
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (21926, 21925, "2019 database fix");

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
WHERE s1.id = 21925 AND s2.id = 21926;

UPDATE trapping SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE behaviour SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE census SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE litter SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE juvenile SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaAdmums SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaBehaviour SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaFLastAll SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaJuvenile SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaMidden SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE dbaTrapping SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE pedigree SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE pedigree SET dam_id = 21925 WHERE dam_id = 21926;
UPDATE pedigree SET sire_id = 21925 WHERE sire_id = 21926;
UPDATE pedigree_clean SET squirrel_id = 21925 WHERE squirrel_id = 21926;
UPDATE pedigree_clean SET dam_id = 21925 WHERE dam_id = 21926;
UPDATE pedigree_clean SET sire_id = 21925 WHERE sire_id = 21926;

DELETE FROM squirrel
WHERE id = 21926;

# Merge 22492 > 22490
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22492, 22490, "2019 database fix");

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
WHERE s1.id = 22490 AND s2.id = 22492;

UPDATE trapping SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE behaviour SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE census SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE litter SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE juvenile SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaAdmums SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaBehaviour SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaFLastAll SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaJuvenile SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaMidden SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE dbaTrapping SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE pedigree SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE pedigree SET dam_id = 22490 WHERE dam_id = 22492;
UPDATE pedigree SET sire_id = 22490 WHERE sire_id = 22492;
UPDATE pedigree_clean SET squirrel_id = 22490 WHERE squirrel_id = 22492;
UPDATE pedigree_clean SET dam_id = 22490 WHERE dam_id = 22492;
UPDATE pedigree_clean SET sire_id = 22490 WHERE sire_id = 22492;

DELETE FROM squirrel
WHERE id = 22492;

# Merge 22493 > 22491
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22493, 22491, "2019 database fix");

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
WHERE s1.id = 22491 AND s2.id = 22493;

UPDATE trapping SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE behaviour SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE census SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE litter SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE juvenile SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaAdmums SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaBehaviour SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaFLastAll SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaJuvenile SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaMidden SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE dbaTrapping SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE pedigree SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE pedigree SET dam_id = 22491 WHERE dam_id = 22493;
UPDATE pedigree SET sire_id = 22491 WHERE sire_id = 22493;
UPDATE pedigree_clean SET squirrel_id = 22491 WHERE squirrel_id = 22493;
UPDATE pedigree_clean SET dam_id = 22491 WHERE dam_id = 22493;
UPDATE pedigree_clean SET sire_id = 22491 WHERE sire_id = 22493;

DELETE FROM squirrel
WHERE id = 22493;

# Merge 22592 > 22591
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22592, 22591, "2019 database fix");

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
WHERE s1.id = 22591 AND s2.id = 22592;

UPDATE trapping SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE behaviour SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE census SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE litter SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE juvenile SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaAdmums SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaBehaviour SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaFLastAll SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaJuvenile SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaMidden SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE dbaTrapping SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE pedigree SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE pedigree SET dam_id = 22591 WHERE dam_id = 22592;
UPDATE pedigree SET sire_id = 22591 WHERE sire_id = 22592;
UPDATE pedigree_clean SET squirrel_id = 22591 WHERE squirrel_id = 22592;
UPDATE pedigree_clean SET dam_id = 22591 WHERE dam_id = 22592;
UPDATE pedigree_clean SET sire_id = 22591 WHERE sire_id = 22592;

DELETE FROM squirrel
WHERE id = 22592;


# Merge 22269 > 19451
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22269, 19451, "2019 database fix");

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
WHERE s1.id = 19451 AND s2.id = 22269;

UPDATE trapping SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE behaviour SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE census SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE litter SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE juvenile SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaAdmums SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaBehaviour SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaFLastAll SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaJuvenile SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaMidden SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE dbaTrapping SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE pedigree SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE pedigree SET dam_id = 19451 WHERE dam_id = 22269;
UPDATE pedigree SET sire_id = 19451 WHERE sire_id = 22269;
UPDATE pedigree_clean SET squirrel_id = 19451 WHERE squirrel_id = 22269;
UPDATE pedigree_clean SET dam_id = 19451 WHERE dam_id = 22269;
UPDATE pedigree_clean SET sire_id = 19451 WHERE sire_id = 22269;

DELETE FROM squirrel
WHERE id = 22269;

# Merge 22920 > 22449
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22920, 22449, "2019 database fix");

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
WHERE s1.id = 22449 AND s2.id = 22920;

UPDATE trapping SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE behaviour SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE census SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE litter SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE juvenile SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaAdmums SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaBehaviour SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaFLastAll SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaJuvenile SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaMidden SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE dbaTrapping SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE pedigree SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE pedigree SET dam_id = 22449 WHERE dam_id = 22920;
UPDATE pedigree SET sire_id = 22449 WHERE sire_id = 22920;
UPDATE pedigree_clean SET squirrel_id = 22449 WHERE squirrel_id = 22920;
UPDATE pedigree_clean SET dam_id = 22449 WHERE dam_id = 22920;
UPDATE pedigree_clean SET sire_id = 22449 WHERE sire_id = 22920;

DELETE FROM squirrel
WHERE id = 22920;

# Merge 22187 > 22059
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22187, 22059, "2019 database fix");

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
WHERE s1.id = 22059 AND s2.id = 22187;

UPDATE trapping SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE behaviour SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE census SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE litter SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE juvenile SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaAdmums SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaBehaviour SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaFLastAll SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaJuvenile SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaMidden SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE dbaTrapping SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE pedigree SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE pedigree SET dam_id = 22059 WHERE dam_id = 22187;
UPDATE pedigree SET sire_id = 22059 WHERE sire_id = 22187;
UPDATE pedigree_clean SET squirrel_id = 22059 WHERE squirrel_id = 22187;
UPDATE pedigree_clean SET dam_id = 22059 WHERE dam_id = 22187;
UPDATE pedigree_clean SET sire_id = 22059 WHERE sire_id = 22187;

DELETE FROM squirrel
WHERE id = 22187;

# Merge 23248 > 23247
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23248, 23247, "2019 database fix");

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
WHERE s1.id = 23247 AND s2.id = 23248;

UPDATE trapping SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE behaviour SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE census SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE litter SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE juvenile SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaAdmums SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaBehaviour SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaFLastAll SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaJuvenile SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaMidden SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE dbaTrapping SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE pedigree SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE pedigree SET dam_id = 23247 WHERE dam_id = 23248;
UPDATE pedigree SET sire_id = 23247 WHERE sire_id = 23248;
UPDATE pedigree_clean SET squirrel_id = 23247 WHERE squirrel_id = 23248;
UPDATE pedigree_clean SET dam_id = 23247 WHERE dam_id = 23248;
UPDATE pedigree_clean SET sire_id = 23247 WHERE sire_id = 23248;

DELETE FROM squirrel
WHERE id = 23248;

# Merge 22525 > 22056
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22525, 22056, "2019 database fix");

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
WHERE s1.id = 22056 AND s2.id = 22525;

UPDATE trapping SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE behaviour SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE census SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE litter SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE juvenile SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaAdmums SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaBehaviour SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaFLastAll SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaJuvenile SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaMidden SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE dbaTrapping SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE pedigree SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE pedigree SET dam_id = 22056 WHERE dam_id = 22525;
UPDATE pedigree SET sire_id = 22056 WHERE sire_id = 22525;
UPDATE pedigree_clean SET squirrel_id = 22056 WHERE squirrel_id = 22525;
UPDATE pedigree_clean SET dam_id = 22056 WHERE dam_id = 22525;
UPDATE pedigree_clean SET sire_id = 22056 WHERE sire_id = 22525;

DELETE FROM squirrel
WHERE id = 22525;

# Merge 22835 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22835, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22835;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22835;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22835;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22835;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22835;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22835;

DELETE FROM squirrel
WHERE id = 22835;

# Merge 22841 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22841, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22841;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22841;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22841;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22841;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22841;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22841;

DELETE FROM squirrel
WHERE id = 22841;


# Merge 22847 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22847, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22847;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22847;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22847;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22847;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22847;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22847;

DELETE FROM squirrel
WHERE id = 22847;

# Merge 22853 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22853, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22853;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22853;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22853;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22853;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22853;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22853;

DELETE FROM squirrel
WHERE id = 22853;

# Merge 22859 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22859, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22859;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22859;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22859;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22859;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22859;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22859;

DELETE FROM squirrel
WHERE id = 22859;

# Merge 22863 > 22829
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (22863, 22829, "2019 database fix");

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
WHERE s1.id = 22829 AND s2.id = 22863;

UPDATE trapping SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE behaviour SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE census SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE litter SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE juvenile SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaAdmums SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaBehaviour SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaFLastAll SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaJuvenile SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaMidden SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE dbaTrapping SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE pedigree SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE pedigree SET dam_id = 22829 WHERE dam_id = 22863;
UPDATE pedigree SET sire_id = 22829 WHERE sire_id = 22863;
UPDATE pedigree_clean SET squirrel_id = 22829 WHERE squirrel_id = 22863;
UPDATE pedigree_clean SET dam_id = 22829 WHERE dam_id = 22863;
UPDATE pedigree_clean SET sire_id = 22829 WHERE sire_id = 22863;

DELETE FROM squirrel
WHERE id = 22863;

# Merge 23200 > 22964
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23200, 22964, "2019 database fix");

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
WHERE s1.id = 22964 AND s2.id = 23200;

UPDATE trapping SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE behaviour SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE census SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE litter SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE juvenile SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaAdmums SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaBehaviour SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaFLastAll SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaJuvenile SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaMidden SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE dbaTrapping SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE pedigree SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE pedigree SET dam_id = 22964 WHERE dam_id = 23200;
UPDATE pedigree SET sire_id = 22964 WHERE sire_id = 23200;
UPDATE pedigree_clean SET squirrel_id = 22964 WHERE squirrel_id = 23200;
UPDATE pedigree_clean SET dam_id = 22964 WHERE dam_id = 23200;
UPDATE pedigree_clean SET sire_id = 22964 WHERE sire_id = 23200;

DELETE FROM squirrel
WHERE id = 23200;

# Merge 23199 > 22978
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23199, 22978, "2019 database fix");

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
WHERE s1.id = 22978 AND s2.id = 23199;

UPDATE trapping SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE behaviour SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE census SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE litter SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE juvenile SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaAdmums SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaBehaviour SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaFLastAll SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaJuvenile SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaMidden SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE dbaTrapping SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE pedigree SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE pedigree SET dam_id = 22978 WHERE dam_id = 23199;
UPDATE pedigree SET sire_id = 22978 WHERE sire_id = 23199;
UPDATE pedigree_clean SET squirrel_id = 22978 WHERE squirrel_id = 23199;
UPDATE pedigree_clean SET dam_id = 22978 WHERE dam_id = 23199;
UPDATE pedigree_clean SET sire_id = 22978 WHERE sire_id = 23199;

DELETE FROM squirrel
WHERE id = 23199;

# Merge 23764 > 23303
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23764, 23303, "2019 database fix");

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
WHERE s1.id = 23303 AND s2.id = 23764;

UPDATE trapping SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE behaviour SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE census SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE litter SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE juvenile SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaAdmums SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaBehaviour SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaFLastAll SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaJuvenile SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaMidden SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE dbaTrapping SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE pedigree SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE pedigree SET dam_id = 23303 WHERE dam_id = 23764;
UPDATE pedigree SET sire_id = 23303 WHERE sire_id = 23764;
UPDATE pedigree_clean SET squirrel_id = 23303 WHERE squirrel_id = 23764;
UPDATE pedigree_clean SET dam_id = 23303 WHERE dam_id = 23764;
UPDATE pedigree_clean SET sire_id = 23303 WHERE sire_id = 23764;

DELETE FROM squirrel
WHERE id = 23764;

# Merge 23799 > 23798
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23799, 23798, "2019 database fix");

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
WHERE s1.id = 23798 AND s2.id = 23799;

UPDATE trapping SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE behaviour SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE census SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE litter SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE juvenile SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaAdmums SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaBehaviour SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaFLastAll SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaJuvenile SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaMidden SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE dbaTrapping SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE pedigree SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE pedigree SET dam_id = 23798 WHERE dam_id = 23799;
UPDATE pedigree SET sire_id = 23798 WHERE sire_id = 23799;
UPDATE pedigree_clean SET squirrel_id = 23798 WHERE squirrel_id = 23799;
UPDATE pedigree_clean SET dam_id = 23798 WHERE dam_id = 23799;
UPDATE pedigree_clean SET sire_id = 23798 WHERE sire_id = 23799;

DELETE FROM squirrel
WHERE id = 23799;

# Merge 23863 > 23854
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23863, 23854, "2019 database fix");

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
WHERE s1.id = 23854 AND s2.id = 23863;

UPDATE trapping SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE behaviour SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE census SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE litter SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE juvenile SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaAdmums SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaBehaviour SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaFLastAll SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaJuvenile SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaMidden SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE dbaTrapping SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE pedigree SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE pedigree SET dam_id = 23854 WHERE dam_id = 23863;
UPDATE pedigree SET sire_id = 23854 WHERE sire_id = 23863;
UPDATE pedigree_clean SET squirrel_id = 23854 WHERE squirrel_id = 23863;
UPDATE pedigree_clean SET dam_id = 23854 WHERE dam_id = 23863;
UPDATE pedigree_clean SET sire_id = 23854 WHERE sire_id = 23863;

DELETE FROM squirrel
WHERE id = 23863;

# Merge 23965 > 23964
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23965, 23964, "2019 database fix");

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
WHERE s1.id = 23964 AND s2.id = 23965;

UPDATE trapping SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE behaviour SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE census SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE litter SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE juvenile SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaAdmums SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaBehaviour SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaFLastAll SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaJuvenile SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaMidden SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE dbaTrapping SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE pedigree SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE pedigree SET dam_id = 23964 WHERE dam_id = 23965;
UPDATE pedigree SET sire_id = 23964 WHERE sire_id = 23965;
UPDATE pedigree_clean SET squirrel_id = 23964 WHERE squirrel_id = 23965;
UPDATE pedigree_clean SET dam_id = 23964 WHERE dam_id = 23965;
UPDATE pedigree_clean SET sire_id = 23964 WHERE sire_id = 23965;

DELETE FROM squirrel
WHERE id = 23965;

# Merge 23824 > 22865
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23824, 22865, "2019 database fix");

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
WHERE s1.id = 22865 AND s2.id = 23824;

UPDATE trapping SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE behaviour SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE census SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE litter SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE juvenile SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaAdmums SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaBehaviour SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaFLastAll SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaJuvenile SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaMidden SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE dbaTrapping SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE pedigree SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE pedigree SET dam_id = 22865 WHERE dam_id = 23824;
UPDATE pedigree SET sire_id = 22865 WHERE sire_id = 23824;
UPDATE pedigree_clean SET squirrel_id = 22865 WHERE squirrel_id = 23824;
UPDATE pedigree_clean SET dam_id = 22865 WHERE dam_id = 23824;
UPDATE pedigree_clean SET sire_id = 22865 WHERE sire_id = 23824;

DELETE FROM squirrel
WHERE id = 23824;

# Merge 23830 > 22640
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (23830, 22640, "2019 database fix");

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
WHERE s1.id = 22640 AND s2.id = 23830;

UPDATE trapping SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE behaviour SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE census SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE litter SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE juvenile SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaAdmums SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaBehaviour SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaFLastAll SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaJuvenile SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaMidden SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE dbaTrapping SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE pedigree SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE pedigree SET dam_id = 22640 WHERE dam_id = 23830;
UPDATE pedigree SET sire_id = 22640 WHERE sire_id = 23830;
UPDATE pedigree_clean SET squirrel_id = 22640 WHERE squirrel_id = 23830;
UPDATE pedigree_clean SET dam_id = 22640 WHERE dam_id = 23830;
UPDATE pedigree_clean SET sire_id = 22640 WHERE sire_id = 23830;

DELETE FROM squirrel
WHERE id = 23830;

### From squirrel table check
# 12222 trapping record on 2017-07-20 check taglft
UPDATE trapping
SET tagLft = "-"
WHERE squirrel_id = 12222 AND id = 109279; 

# 24524 check juvenile table 2019 re tag and colours
UPDATE juvenile
SET tagLft = "M2792"
WHERE squirrel_id = 24524 AND id = 15068; 

UPDATE juvenile
SET tagRt = "M1861"
WHERE squirrel_id = 24524 AND id = 15068; 

UPDATE juvenile
SET color_left = "B*"
WHERE squirrel_id = 24524 AND id = 15068; 

UPDATE juvenile
SET color_right = "W*"
WHERE squirrel_id = 24524 AND id = 15068; 

# 23533 check juvenile table  re tags and colours juvenile id=14340
UPDATE juvenile
SET tagLft = "M4572"
WHERE squirrel_id = 23533 AND id = 14340; 

UPDATE juvenile
SET tagRt = "M4573"
WHERE squirrel_id = 23533 AND id = 14340; 

UPDATE juvenile
SET color_left = "B*"
WHERE squirrel_id = 23533 AND id = 14340; 

UPDATE juvenile
SET color_right = "Y*"
WHERE squirrel_id = 23533 AND id = 14340; 

# 24682 check 2019 juvenile table re tags and colours
UPDATE juvenile
SET tagLft = "M6540"
WHERE squirrel_id = 24682 AND id = 15208; 

UPDATE juvenile
SET tagRt = "M6541"
WHERE squirrel_id = 24682 AND id = 15208; 

UPDATE juvenile
SET color_left = "O*"
WHERE squirrel_id = 24682 AND id = 15208; 

UPDATE juvenile
SET color_right = "R"
WHERE squirrel_id = 24682 AND id = 15208; 

######################
# Errors from GitHub #
######################

UPDATE litter
SET date1 = "2017-04-30"
WHERE id = 7930 AND squirrel_id = 21137;

#Issue #32
UPDATE trapping
SET wgt = 120
WHERE squirrel_id = 23027 AND date = "2017-07-15";

#UPDATE trapping
#SET wgt = 130
#WHERE squirrel_id = 22778 AND date = "2017-06-30"

UPDATE trapping
SET wgt = 120
WHERE squirrel_id = 22778 AND date = "2017-07-21";


# Issue #38
# Incorrect date in behaviour record 193429.  This seems to be a duplicate of another record.  Delete this record.
DELETE from behaviour
WHERE id = 193429;

