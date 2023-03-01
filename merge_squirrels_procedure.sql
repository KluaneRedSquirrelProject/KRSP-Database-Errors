DELIMITER //
Create PROCEDURE merge_squirrels(
IN old_squirrel bigint(20),
IN new_squirrel bigint(20))
BEGIN
INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (old_squirrel, new_squirrel, "2022 database fix");

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
WHERE s1.id = new_squirrel AND s2.id = old_squirrel;

UPDATE trapping SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE behaviour SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE census SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE litter SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE juvenile SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaAdmums SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaBehaviour SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaFLastAll SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaJuvenile SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaMidden SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE dbaTrapping SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE pedigree SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE pedigree SET dam_id = new_squirrel WHERE dam_id = old_squirrel;
UPDATE pedigree SET sire_id = new_squirrel WHERE sire_id = old_squirrel;
UPDATE pedigree_clean SET squirrel_id = new_squirrel WHERE squirrel_id = old_squirrel;
UPDATE pedigree_clean SET dam_id = new_squirrel WHERE dam_id = old_squirrel;
UPDATE pedigree_clean SET sire_id = new_squirrel WHERE sire_id = old_squirrel;

DELETE FROM squirrel
WHERE id = old_squirrel;

END //
DELIMITER ;