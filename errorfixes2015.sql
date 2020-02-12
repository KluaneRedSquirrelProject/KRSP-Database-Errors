/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2015 season
*/
BEGIN;

##############################################
## To Be Done								##
## 1. Data from Jess						##
## 2. McAdam documented errors				##
## 3. see Database_Notes_2014				##
## 4. Revisit Matt Known Errors	document??	##
## 5. Investigate possible 2010 problems  	##
##############################################

############################################################
#Note.  There are potentially problems with the 2010 juvenile and litter data.  Many DNA vial numbers are missing and many juve nest 2 data are missing.
## 1231 juveniles from 2010 but no notch data and no dna vials.
############################################################


#########################################################################
# 1. Data From Jess.  Data not enetered in the field.  Two mortalities. #
#########################################################################

#First squirrel
#insert into trapping (`version`, `color_fate`, `comments`, `date`, `date_created`, `ft`, `gr`, `last_updated`, `locx`, `locy`, `obs`, `sex`, `squirrel_id`, `tagLft`, `tagRt`)
#values('0', 'colors removed', 'dead mummified; old clrs R*/R; D2 midden', '2015-09-20', '2015-12-16', '10', 'SU', '2015-12-16', 'D.0', '2.0', 'JAH', 'F', '19751', 'H3528', 'H3529');

#insert into behaviour (`version`, `behaviour`, `comments`, `date`, `date_created`, `detail`, `grid`, `last_updated`, `locx`, `locy`, `mode`, `observer`, `squirrel_id`, `tag_left`, `tag_right`)
#values('0', '9', 'dead mummified; old clrs R*/R; D2 midden', '2015-09-20', '2015-12-16', '4', 'SU', '2015-12-16',  'D.0', '2.0', '1', 'JAH', '19751', 'H3528', 'H3529');
#  Entered Manually

#Second squirrel

#insert into trapping (`version`, `color_fate`, `comments`, `date`, `date_created`, `ft`, `gr`, `last_updated`, `locx`, `locy`, `obs`, `sex`, `squirrel_id`, `tagLft`, `tagRt`)
#values('0', 'colors removed', 'I.7/11.0 near J11; Bk!/R!; wound head/shoulders', '2015-09-18', '2015-12-16', '10', 'KL', '2015-12-16', 'J.0', '11.0', 'JAH', 'M', '12364', 'F8203', 'F8204');
#Already in database.  Not entered.


#insert into behaviour (`version`, `behaviour`, `comments`, `date`, `date_created`, `detail`, `grid`, `last_updated`, `locx`, `locy`, `mode`, `observer`, `squirrel_id`, `tag_left`, `tag_right`)
#values('0', '9', 'I.7/11.0 near J11; Bk!/R!; wound head/shoulders', '2015-09-18', '2015-12-16', '3', 'KL', '2015-12-16', 'J.0', '11.0', '1', 'JAH', '12364', 'F8203', 'F8204')
#  Entered Manually

#########################################################################
# 2. McAdam Documented Errors from May 2015								#
#########################################################################

#Litter ID = 3868: date1 = 2006-06-30 instead of 2007-06-30
UPDATE litter
SET date1='2006-06-30'
WHERE id=3868;

#Litter ID = 5584: date1 = 2012-03-04 instead of 2012-04-03
UPDATE litter
SET date1='2012-04-03'
WHERE id=5584;

#Litter ID = 4988; date1 = 2011-02-23 instead of 2011-03-23
UPDATE litter
SET date1='2011-03-23'
WHERE id=4988;

###################
#Litter ID = 4407; not sure but I think the date1 is wrong.  Weights suggest that Bdate and date2 might be correct.  If so, then date1 should probably be 2009-05-11 instead of 2009-04-26.  If date1 is correct then Bdate should probably be 2009-04-15 and this would make the date2 at 41 days which would be quite the rodeo.  I think the date1 must be wrong.
# No clear solution here.  Postponed until 2016.

#Litter ID = 4104; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2008-04-03 and date1 to 2008-04-05. 
UPDATE litter
SET date1='2008-04-05', fieldBDate='2008-04-03'
WHERE id=4104;

#Litter ID = 4160; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2008-05-17 and date1 to 2008-05-19. 
UPDATE litter
SET date1='2008-05-19', fieldBDate='2008-05-17'
WHERE id=4160;

#Litter ID = 4756; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2010-05-11 and date1 to 2010-05-13. 
UPDATE litter
SET date1='2010-05-13', fieldBDate='2010-05-11'
WHERE id=4756;

#Litter ID = 2518; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2000-04-24 and date1 to 2000-04-25. 
UPDATE litter
SET date1='2000-04-25', fieldBDate='2000-04-24'
WHERE id=2518;

#Litter ID = 2582; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2000-06-12 and date1 to 2000-06-13. 
UPDATE litter
SET date1='2000-06-13', fieldBDate='2000-06-12'
WHERE id=2582;

#Litter ID = 4177; looks like the BirthDate and date1 were transposed.  Change BirthDate to 2008-04-14 and date1 to 2008-04-15. 
UPDATE litter
SET date1='2008-04-15', fieldBDate='2008-04-14'
WHERE id=4177;

#Litter ID = 137; date1 should be 2013-05-13 instead of 1013-05-13
UPDATE litter
SET date1='2013-05-13'
WHERE id=137;

#########################################################################
# 3. Database Notes 2014												#
#########################################################################

#ID 19971 – squirrel with old tags (D9791/D9792) not in database so new ID was made.  Merge 19971->7340
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
WHERE s1.id = 7340 AND s2.id = 19971;

UPDATE trapping SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE behaviour SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE census SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE litter SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE juvenile SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaAdmums SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaBehaviour SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaFLastAll SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaJuvenile SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaMidden SET squirrel_id = 7340 WHERE squirrel_id = 19971;
UPDATE dbaTrapping SET squirrel_id = 7340 WHERE squirrel_id = 19971;

DELETE FROM squirrel
WHERE id = 19971;
#ID 19662 and ID 19613 shared same tag number H3483.  Both tagged in same nest last year. Squirrel with tags H3488/H3489 was not in database but old colours and midden matched those of squirrel ID 19662 in 2013 August Census. New ID 19896 was created for squirrel and DNA was taken at 13 March trapping.  Squirrel IDs 19662 and 19896 thought to be same squirrel.
# AMc checked this and it seems to be true.  Note that teh squirrel_ids were merged but the incorrect tags remained in place.
#  Merge 19896->19662

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
WHERE s1.id = 19662 AND s2.id = 19896;

UPDATE trapping SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE behaviour SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE census SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE litter SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE juvenile SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaAdmums SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaBehaviour SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaFLastAll SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaJuvenile SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaMidden SET squirrel_id = 19662 WHERE squirrel_id = 19896;
UPDATE dbaTrapping SET squirrel_id = 19662 WHERE squirrel_id = 19896;

DELETE FROM squirrel
WHERE id = 19896;


#ID 20261 – squirrel with tags F7684/F7685 and old colours P!/Y was not in database. Added new id
# Tags were entered incorrectly when this squirrel was tagged in May 2012 (trapping id=109638) as F7864/F7865 (squirrel_id=8822)
# Merge 20261->8822
# Change tags in trapping record id=109638 to F7684/F7685

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
WHERE s1.id = 8822 AND s2.id = 20261;

UPDATE trapping SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE behaviour SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE census SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE litter SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE juvenile SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaAdmums SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaBehaviour SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaFLastAll SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaJuvenile SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaMidden SET squirrel_id = 8822 WHERE squirrel_id = 20261;
UPDATE dbaTrapping SET squirrel_id = 8822 WHERE squirrel_id = 20261;

DELETE FROM squirrel
WHERE id = 20261;

UPDATE trapping
SET tagLft='F7684', tagRt='F7685'
WHERE id=109638;


########################################
#ID 20636 – AG squirrel with tag -/H3879 was not in database. Added new id
##  Unclear what squirrel this is.  No change made, but this error has been moved to errorfixes2016 for further review
#########################################


#Merged Squirrels (Squirrel ID 1; Squirrel ID 2; comments)# 19599 (born on SU), 19910 (trapped on KL); old colours and tags matched.
#19910 not in database as on January 2016.  I entered this historic squirrel_id in the historicl_squirrel_id table.


# 11674, 12435; tags matched, two IDS at the start of 2014
## Note done yet
#merge 11674->12435
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
WHERE s1.id = 12435 AND s2.id = 11674;

UPDATE trapping SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE behaviour SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE census SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE litter SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE juvenile SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaAdmums SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaBehaviour SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaFLastAll SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaJuvenile SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaMidden SET squirrel_id = 12435 WHERE squirrel_id = 11674;
UPDATE dbaTrapping SET squirrel_id = 12435 WHERE squirrel_id = 11674;

DELETE FROM squirrel
WHERE id = 11674;

# 20472, 19282; same squirrel on JO, second id added by mistake
# Looks like two different squirrels in the database now.  Perhaps they were merged before a new id was added to the new id was reused.  No changes made here.

# 19911; 11895; same squirrel on KL, second id added by mistake
#Merge 19911->11895
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
WHERE s1.id = 11895 AND s2.id = 19911;

UPDATE trapping SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE behaviour SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE census SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE litter SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE juvenile SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaAdmums SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaBehaviour SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaFLastAll SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaJuvenile SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaMidden SET squirrel_id = 11895 WHERE squirrel_id = 19911;
UPDATE dbaTrapping SET squirrel_id = 11895 WHERE squirrel_id = 19911;

DELETE FROM squirrel
WHERE id = 19911;

# 20495; 20496; same squirrel on SU, ipod sent days data twice to database creating two squirrel ids
# 20496 does not exist in the current database as of January 2016.  I entered 20496 in the historic_squirrel_id table.


############################
# F4270/F4271, Y*/W*, was found dead at D3 on JO but was not in the database
#  This squirrel is in the juvenile table and in bhevaiour, but there is no record of any trapping or any mortality entry.  Also, no date indicated above.


#########################################################################
# 4. Revisit Matt Known Errors	document??								#
#########################################################################


#########################################################################
# 5. Investigate possible 2010 problems								#
#########################################################################

COMMIT;
