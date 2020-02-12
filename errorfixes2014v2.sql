/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2014 season
*/
BEGIN;

##############################################
## To Be Done								##
## 1. Jess e-mail							##
## 2. Jess problems with Tag Alias File		##
## 3. Matt Known Errors						##
## 4. Investigate possible 2010 problems  	##
##############################################



######################################
## 1. Pedigree errors sent by Jamie ## 
## DNA Typos                        ##
######################################

# H4152/3, DNA vial KL140614 should be KL140714
UPDATE trapping
SET dna2 = 'KL140714'
WHERE id = 123262;
# MLL mom H3301/2, DNA vial KL140609 should be KL14509 (I assume this is supposed to be KL140509?)
UPDATE juvenile
SET dna2= 'KL140509'
WHERE squirrel_id= 20569; 
# KL140428 and KL140573 should be H4629/30, not H4627/8
UPDATE juvenile
SET tagLft = 'H4629', tagRt = 'H4630'
WHERE squirrel_id = 20686;
# M0008/9, DNA vial KL140470 should be KL140570
UPDATE juvenile
SET dna2 = 'KL140570'
WHERE tagLft = 'M0008' AND squirrel_id = 20731;
# FL mom H3810/1, DNA vial should be KL140739, not 38
UPDATE juvenile
SET dna1= 'KL140739'
WHERE squirrel_id= 21225;
# MR mom H3810/1, DNA vial should be KL140738, not 39
UPDATE juvenile
SET dna1= 'KL140738'
WHERE squirrel_id= 21226;
# H4618/9, DNA vial SU140153 should be SU140253
UPDATE juvenile
SET dna2 = 'SU140253'
WHERE tagLft= 'H4618' AND squirrel_id = 20200;
# H4038/9, DNA vial SU140328 should be SU140327
UPDATE juvenile
SET dna2 = 'SU140327'
WHERE tagLft= 'H4038' AND squirrel_id = 20679;
# SU140349 and SU140407 should be M0034/35, not M0234/M0235
UPDATE juvenile 
SET tagLft= 'M0034', tagRt= 'M0035'
WHERE squirrel_id= 20947;

UPDATE squirrel
SET taglft= 'M0034', tagrt= 'M0035'
WHERE id= 20947;
# M0819/20, DNA vial SU140505 should be SU140504
UPDATE juvenile
SET dna1= 'SU140504'
WHERE tagLft = 'M0819' and squirrel_id= 21298;
# H4117/16, DNA vials AG140841/842 should be AG140941/942
UPDATE trapping
SET  dna1 = 'AG140941', dna2 = 'AG140942'
WHERE id= 123019 and squirrel_id= 21166;
# H4143/44, DNA vial AG140838 should be AG140938
UPDATE trapping
SET dna2 = 'AG140938'
WHERE id= 122898 and squirrel_id= 21152;
# H4142/41, DNA vials AG140839/840 should be AG140939/940
UPDATE trapping
SET dna1 = 'AG140939', dna2 = 'AG140940'
WHERE id= 122957 and squirrel_id= 21153;
# DNA vials KL130311 (this vial # is actually KL130313?) and KL130314, should be H3272/73, not 73/73
UPDATE juvenile
SET tagLft= 'H3272'
WHERE squirrel_id= 19772; 
# DNA vials SU130134 and SU130219, should be H3045/46, not 49/50
UPDATE juvenile
SET tagLft= 'H3045', tagRt= 'H3046'
WHERE squirrel_id= 19557;

UPDATE squirrel
SET taglft= 'H3045', tagrt= 'H3046'
WHERE id= 19557;
# DNA vials SU130135 and SU130218, should be H3049/50, not 47/48
UPDATE juvenile
SET tagLft= 'H3049', tagRt= 'H3050'
WHERE squirrel_id= 19558;

UPDATE squirrel
SET taglft= 'H3049', tagrt= 'H3050'
WHERE id= 19558;
# DNA vials SU130136 and SU130217, should be H3047/48, not 45/46
UPDATE juvenile
SET tagLft= 'H3047', tagRt='H3048'
WHERE squirrel_id= 19559;

UPDATE squirrel
SET taglft= 'H3047', tagrt='H3048'
WHERE id= 19559;
# MR mom F8384/5, should be SU130155, not SU130154
UPDATE juvenile
SET dna1= 'SU130155'
WHERE squirrel_id= 19658;
# MR mom H0837/8, should be SU130163, not SU130263
UPDATE juvenile
SET dna1= 'SU130163'
WHERE squirrel_id= 19684;
# H1997/98 DNA2 KL120342, DNA1 should be KL120242, not KL120244
UPDATE juvenile
SET dna1= 'KL120242'
WHERE squirrel_id= 13458 AND tagLft= 'H1997';
# KL120244 should not have tags and is the kid missing at N2
UPDATE juvenile
SET dna1= 'KL120244'
WHERE squirrel_id= 17791;
# M0278/9 DNA2 KL140638, DNA1 should be KL140532, not KL140526
UPDATE juvenile
SET dna1= 'KL140532'
WHERE squirrel_id= 20862 AND tagLft= 'M0278';
# KL140526 should not have tags and is the kid missing at N2
UPDATE juvenile
SET dna1= 'KL140526'
WHERE squirrel_id= 20861;
# M0497/8 should have DNA vials KL140755 and 757
UPDATE juvenile
SET dna1= 'KL140755', dna2= 'KL140757'
WHERE squirrel_id= 21258 AND tagLft= 'M0497';
# M0495/6 should have DNA vials KL140756 and 758
UPDATE juvenile
SET dna1= 'KL140756', dna2= 'KL140758'
WHERE squirrel_id= 21257 AND tagLft= 'M0495';
# M0563/64 DNA2 SU140451, DNA1 should be SU140374, not SU140369
UPDATE juvenile
SET dna1= 'SU140374'
WHERE squirrel_id= 21053 AND tagLft= 'M0563';
# SU140369 should not have tags and is the kid missing at N2
UPDATE juvenile
SET dna1= 'SU140369'
WHERE squirrel_id= 21054;
# H4834/5 DNA2 SU140269 should have DNA1 SU140225, not SU140223
UPDATE juvenile
SET dna1= 'SU140225'
WHERE squirrel_id= 20462 AND tagLft= 'H4834';
# H4832/3 DNA2 SU140270 should have DNA1 SU140223, not SU140224
UPDATE juvenile
SET dna1= 'SU140223'
WHERE squirrel_id= 20461 AND tagLft= 'H4832';
# SU140224 should not have tags and is the kid missing at N2
UPDATE juvenile
SET dna1= 'SU140224'
WHERE squirrel_id= 20463;

## Fate 7 links to N1 sample that never got a N2 (Left is fate 7, right is N1), suggest merging these squirrels
	##Still need to consider updating census table??


# KL130470 (id 19866) matches KL130165 (id 19516), Merge 19866 -> 19516
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
WHERE s1.id = 19516 AND s2.id = 19866;

UPDATE trapping SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE behaviour SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE census SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE litter SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE juvenile SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaAdmums SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaBehaviour SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaFLastAll SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaJuvenile SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaMidden SET squirrel_id = 19516 WHERE squirrel_id = 19866;
UPDATE dbaTrapping SET squirrel_id = 19516 WHERE squirrel_id = 19866;

DELETE FROM squirrel
WHERE id = 19866;

# SU130276 (id 19537) matches SU130129 (id 19851), Merge 19851 -> 19537
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
WHERE s1.id = 19537 AND s2.id = 19851;

UPDATE trapping SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE behaviour SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE census SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE litter SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE juvenile SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaAdmums SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaBehaviour SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaFLastAll SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaJuvenile SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaMidden SET squirrel_id = 19537 WHERE squirrel_id = 19851;
UPDATE dbaTrapping SET squirrel_id = 19537 WHERE squirrel_id = 19851;

DELETE FROM squirrel
WHERE id = 19851;

# SU140427 (id 21138) matches SU140219 (id 20445), merge 21138 -> 20445

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
WHERE s1.id = 20445 AND s2.id = 21138;

UPDATE trapping SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE behaviour SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE census SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE litter SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE juvenile SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaAdmums SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaBehaviour SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaFLastAll SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaJuvenile SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaMidden SET squirrel_id = 20445 WHERE squirrel_id = 21138;
UPDATE dbaTrapping SET squirrel_id = 20445 WHERE squirrel_id = 21138;

DELETE FROM squirrel
WHERE id = 21138;

# SU140523 (id 21341) matches SU140366 (id 21058), merge 21341 -> 21058

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
WHERE s1.id = 21058 AND s2.id = 21341;

UPDATE trapping SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE behaviour SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE census SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE litter SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE juvenile SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaAdmums SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaBehaviour SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaFLastAll SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaJuvenile SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaMidden SET squirrel_id = 21058 WHERE squirrel_id = 21341;
UPDATE dbaTrapping SET squirrel_id = 21058 WHERE squirrel_id = 21341;

DELETE FROM squirrel
WHERE id = 21341;

# SU140514 (id 21326) matches SU140428 (id 21149), merge 21326 -> 21149

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
WHERE s1.id = 21149 AND s2.id = 21326;

UPDATE trapping SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE behaviour SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE census SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE litter SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE juvenile SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaAdmums SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaBehaviour SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaFLastAll SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaJuvenile SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaMidden SET squirrel_id = 21149 WHERE squirrel_id = 21326;
UPDATE dbaTrapping SET squirrel_id = 21149 WHERE squirrel_id = 21326;

DELETE FROM squirrel
WHERE id = 21326;

# SU140509 (id 21313) matches SU140430 (id 21150), merge 21313 -> 21150

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
WHERE s1.id = 21150 AND s2.id = 21313;

UPDATE trapping SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE behaviour SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE census SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE litter SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE juvenile SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaAdmums SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaBehaviour SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaFLastAll SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaJuvenile SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaMidden SET squirrel_id = 21150 WHERE squirrel_id = 21313;
UPDATE dbaTrapping SET squirrel_id = 21150 WHERE squirrel_id = 21313;

DELETE FROM squirrel
WHERE id = 21313;

# SU140512 (id 21318) matches SU140431 (id 21148), merge 21318 -> 21148

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
WHERE s1.id = 21148 AND s2.id = 21318;

UPDATE trapping SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE behaviour SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE census SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE litter SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE juvenile SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaAdmums SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaBehaviour SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaFLastAll SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaJuvenile SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaMidden SET squirrel_id = 21148 WHERE squirrel_id = 21318;
UPDATE dbaTrapping SET squirrel_id = 21148 WHERE squirrel_id = 21318;

DELETE FROM squirrel
WHERE id = 21318;

# KL140667 (id 21121) matches KL140324 (id 20505), merge 21121 -> 20505

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
WHERE s1.id = 20505 AND s2.id = 21121;

UPDATE trapping SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE behaviour SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE census SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE litter SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE juvenile SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaAdmums SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaBehaviour SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaFLastAll SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaJuvenile SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaMidden SET squirrel_id = 20505 WHERE squirrel_id = 21121;
UPDATE dbaTrapping SET squirrel_id = 20505 WHERE squirrel_id = 21121;

DELETE FROM squirrel
WHERE id = 21121;

# KL140622 (id 21021) matches KL140325 (id 20504), merge 21021 -> 20504

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
WHERE s1.id = 20504 AND s2.id = 21021;

UPDATE trapping SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE behaviour SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE census SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE litter SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE juvenile SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaAdmums SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaBehaviour SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaFLastAll SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaJuvenile SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaMidden SET squirrel_id = 20504 WHERE squirrel_id = 21021;
UPDATE dbaTrapping SET squirrel_id = 20504 WHERE squirrel_id = 21021;

DELETE FROM squirrel
WHERE id = 21021;

# KL140815 (fate7 sample; squirrel id = 21324) matches KL140729 from N2 sample (id 21023) merge 21324 -> 21023

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
WHERE s1.id = 21023 AND s2.id = 21324;

UPDATE trapping SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE behaviour SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE census SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE litter SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE juvenile SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaAdmums SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaBehaviour SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaFLastAll SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaJuvenile SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaMidden SET squirrel_id = 21023 WHERE squirrel_id = 21324;
UPDATE dbaTrapping SET squirrel_id = 21023 WHERE squirrel_id = 21324;

DELETE FROM squirrel
WHERE id = 21324;


###############################################################################
## Fate 13 rip/rips identities (Left is fate 13, right is original identity) ##
## Still need to consider updating census table??                            ##
###############################################################################

# SU080261, id 8707 matches SU368 (DNA not in db), id 8485 not seen after fate 13, merge 8707 -> 8485

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
WHERE s1.id = 8485 AND s2.id = 8707;

UPDATE trapping SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE behaviour SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE census SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE litter SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE juvenile SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaAdmums SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaBehaviour SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaFLastAll SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaJuvenile SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaMidden SET squirrel_id = 8485 WHERE squirrel_id = 8707;
UPDATE dbaTrapping SET squirrel_id = 8485 WHERE squirrel_id = 8707;

DELETE FROM squirrel
WHERE id = 8707;

# KL090264, id 11082, matches KL780 (DNA not in db), id 8299, last seen in 2008 (11082 is marked as fate2 but comments indicate ripped ears, should be fate 13); merge 11082 -> 8299, change fate= 13 

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
WHERE s1.id = 8299 AND s2.id = 11082;

UPDATE trapping SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE behaviour SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE census SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE litter SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE juvenile SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaAdmums SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaBehaviour SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaFLastAll SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaJuvenile SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaMidden SET squirrel_id = 8299 WHERE squirrel_id = 11082;
UPDATE dbaTrapping SET squirrel_id = 8299 WHERE squirrel_id = 11082;

UPDATE trapping
SET ft = 13
WHERE squirrel_id= 8299 AND id= 90977;

DELETE FROM squirrel
WHERE id = 11082;


## AG090555 (id 10936) matches AG090570 (id 11061) not seen after fate 13## (Yes, above id and DNA vial of fate 13 come before original capture...?? This is a red flag to me. Fate 13 was Aug2. 
## Was SEM in camp during Aug? Suspect date is wrong)

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
WHERE s1.id = 11061 AND s2.id = 10936;

UPDATE trapping SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE behaviour SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE census SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE litter SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE juvenile SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaAdmums SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaBehaviour SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaFLastAll SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaJuvenile SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaMidden SET squirrel_id = 11061 WHERE squirrel_id = 10936;
UPDATE dbaTrapping SET squirrel_id = 11061 WHERE squirrel_id = 10936;

UPDATE trapping SET dna1 = 'AG090554', dna2 = 'AG090555' WHERE squirrel_id = 11061 AND id = 90771;
UPDATE trapping SET dna1 = 'AG090569', dna2 = 'AG090570' WHERE squirrel_id = 11061 AND id = 91921;

DELETE FROM squirrel
WHERE id = 10936;


# AG120424 (id 12039) matches AG100418 (id 11769), only seen in 2010, merge 12039 -> 11769

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
WHERE s1.id = 11769 AND s2.id = 12039;

UPDATE trapping SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE behaviour SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE census SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE litter SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE juvenile SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaAdmums SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaBehaviour SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaFLastAll SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaJuvenile SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaMidden SET squirrel_id = 11769 WHERE squirrel_id = 12039;
UPDATE dbaTrapping SET squirrel_id = 11769 WHERE squirrel_id = 12039;


DELETE FROM squirrel
WHERE id = 12039;
 
# KL130132, id 19256, matches KL120455, id 12235 last seen in 2012, merge 19256 -> 12235

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
WHERE s1.id = 12235 AND s2.id = 19256;

UPDATE trapping SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE behaviour SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE census SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE litter SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE juvenile SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaAdmums SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaBehaviour SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaFLastAll SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaJuvenile SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaMidden SET squirrel_id = 12235 WHERE squirrel_id = 19256;
UPDATE dbaTrapping SET squirrel_id = 12235 WHERE squirrel_id = 19256;

DELETE FROM squirrel
WHERE id = 19256;

# KL130151, id 19285, matches KL110220, id 12745, last seen on 8/15/11, merge 19285 -> 12745

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
WHERE s1.id = 12745 AND s2.id = 19285;

UPDATE trapping SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE behaviour SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE census SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE litter SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE juvenile SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaAdmums SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaBehaviour SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaFLastAll SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaJuvenile SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaMidden SET squirrel_id = 12745 WHERE squirrel_id = 19285;
UPDATE dbaTrapping SET squirrel_id = 12745 WHERE squirrel_id = 19285;

DELETE FROM squirrel WHERE id = 19285;

# KL130180 (id 19550) no matching genotype found, change Fate=2

UPDATE trapping
SET ft= 2
WHERE squirrel_id= 19550 AND id= 3131;

# SU130104 (id 19279) matches SU110208 (id 12972), last seen on 8/15/11, merge 19279 -> 12972

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
WHERE s1.id = 12972 AND s2.id = 19279;

UPDATE trapping SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE behaviour SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE census SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE litter SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE juvenile SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaAdmums SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaBehaviour SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaFLastAll SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaJuvenile SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaMidden SET squirrel_id = 12972 WHERE squirrel_id = 19279;
UPDATE dbaTrapping SET squirrel_id = 12972 WHERE squirrel_id = 19279;

DELETE FROM squirrel WHERE id = 19279;

# AG130379 (id 19518) matches AG120674 (id 13253), last seen at first capture in 2012, merge 19518 -> 13253

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
WHERE s1.id = 13253 AND s2.id = 19518;

UPDATE trapping SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE behaviour SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE census SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE litter SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE juvenile SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaAdmums SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaBehaviour SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaFLastAll SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaJuvenile SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaMidden SET squirrel_id = 13253 WHERE squirrel_id = 19518;
UPDATE dbaTrapping SET squirrel_id = 13253 WHERE squirrel_id = 19518;

DELETE FROM squirrel
WHERE id = 19518;

# AG130177 (id 19307) matches AG120180 (id 12205), last seen in 2012, merge 19307 -> 12205

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
WHERE s1.id = 12205 AND s2.id = 19307;

UPDATE trapping SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE behaviour SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE census SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE litter SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE juvenile SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaAdmums SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaBehaviour SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaFLastAll SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaJuvenile SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaMidden SET squirrel_id = 12205 WHERE squirrel_id = 19307;
UPDATE dbaTrapping SET squirrel_id = 12205 WHERE squirrel_id = 19307;

DELETE FROM squirrel
WHERE id = 19307;

# AG130227 (id 19333) matches AG100814 (id 12607), not seen after fate 13, merge 19333 -> 12607

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
WHERE s1.id = 12607 AND s2.id = 19333;

UPDATE trapping SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE behaviour SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE census SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE litter SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE juvenile SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaAdmums SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaBehaviour SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaFLastAll SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaJuvenile SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaMidden SET squirrel_id = 12607 WHERE squirrel_id = 19333;
UPDATE dbaTrapping SET squirrel_id = 12607 WHERE squirrel_id = 19333;

DELETE FROM squirrel
WHERE id = 19333;

# KL140118 (id 19884) no matching genotype found, comments in trap file suggest could just be a new adult instead of rip/rip. Change Fate=2 

UPDATE trapping
SET ft= 2
WHERE squirrel_id= 19884 AND id= 113842;

UPDATE dbaTrapping
SET ft= 2
WHERE squirrel_id= 19884 AND id= 113842;


# KL140825, id 21336 matches KL140728, id 21022, merge 21336 -> 21022

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
WHERE s1.id = 21022 AND s2.id = 21336;

UPDATE trapping SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE behaviour SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE census SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE litter SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE juvenile SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaAdmums SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaBehaviour SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaFLastAll SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaJuvenile SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaMidden SET squirrel_id = 21022 WHERE squirrel_id = 21336;
UPDATE dbaTrapping SET squirrel_id = 21022 WHERE squirrel_id = 21336;

DELETE FROM squirrel
WHERE id = 21336;

# AG140942 id 21166 matches AG140142, id 19921, not seen after fate 13, merge 21166 -> 19921

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
WHERE s1.id = 19921 AND s2.id = 21166;

UPDATE trapping SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE behaviour SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE census SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE litter SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE juvenile SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaAdmums SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaBehaviour SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaFLastAll SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaJuvenile SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaMidden SET squirrel_id = 19921 WHERE squirrel_id = 21166;
UPDATE dbaTrapping SET squirrel_id = 19921 WHERE squirrel_id = 21166;

DELETE FROM squirrel
WHERE id = 21166;

# AG141011, id 21175 matches AG130118, id 19252, not seen after fate 13, merge 21175 -> 19252

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
WHERE s1.id = 19252 AND s2.id = 21175;

UPDATE trapping SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE behaviour SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE census SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE litter SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE juvenile SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaAdmums SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaBehaviour SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaFLastAll SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaJuvenile SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaMidden SET squirrel_id = 19252 WHERE squirrel_id = 21175;
UPDATE dbaTrapping SET squirrel_id = 19252 WHERE squirrel_id = 21175;

DELETE FROM squirrel
WHERE id = 21175;



#####################################
## Matching DNA and fucked up tags ##
#####################################

# SU140481, id 21296 was fate 2 on Aug 28/14 weighing 200 grams. Genetic match with SU140220, id 20447 from N1 (May 15/14) - no N2 done. Both are male. Change trap to fate 7 and merge 21296 -> 20447

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
WHERE s1.id = 20447 AND s2.id = 21296;

UPDATE trapping SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE behaviour SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE census SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE litter SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE juvenile SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaAdmums SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaBehaviour SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaFLastAll SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaJuvenile SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaMidden SET squirrel_id = 20447 WHERE squirrel_id = 21296;
UPDATE dbaTrapping SET squirrel_id = 20447 WHERE squirrel_id = 21296;

UPDATE trapping
SET ft= 7
WHERE squirrel_id = 20447 AND id= 124375;

DELETE FROM squirrel
WHERE id = 21296;

# SU140521, id 21335 was fate 2 on Sept18/14 weighing 185 gram. Genetic match with SU140334, id 20942 from N1 sample, only pup missing at N2. Both are male. Change trap to fate 7 and merge 21335 -> 20942

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
WHERE s1.id = 20942 AND s2.id = 21335;

UPDATE trapping SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE behaviour SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE census SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE litter SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE juvenile SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaAdmums SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaBehaviour SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaFLastAll SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaJuvenile SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaMidden SET squirrel_id = 20942 WHERE squirrel_id = 21335;
UPDATE dbaTrapping SET squirrel_id = 20942 WHERE squirrel_id = 21335;

UPDATE trapping
SET ft= 7
WHERE squirrel_id = 20942 AND id= 124588;

DELETE FROM squirrel
WHERE id = 21335;

# SU110101, id 11982 was fate 2 on Feb2/11. SU100312, id 12479 was last seen on Aug 24/10. Genetic match, both males. Change trapping to fate 13 and merge 11982 -> 12479

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
WHERE s1.id = 12479 AND s2.id = 11982 ;

UPDATE trapping SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE behaviour SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE census SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE litter SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE juvenile SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaAdmums SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaBehaviour SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaFLastAll SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaJuvenile SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaMidden SET squirrel_id = 12479 WHERE squirrel_id = 11982;
UPDATE dbaTrapping SET squirrel_id = 12479 WHERE squirrel_id = 11982;

UPDATE trapping
SET ft= 13
WHERE squirrel_id = 12479 AND id= 100767; 

DELETE FROM squirrel
WHERE id = 11982;# Duplicate trapping record for squirrel 12479 (formerly 11982): 100767 and 100768 are the same trapping record 
DELETE FROM trapping
WHERE id= 100768 AND squirrel_id= 12479;

# SU110181, id 12002 fate 2 on April 25/11. SU100301, id 12491, last seen fate 6 in 2010. Genetic match, both males. Change trapping to fate 13 and merge 12002 -> 12491

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
WHERE s1.id = 12491 AND s2.id = 12002 ;

UPDATE trapping SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE behaviour SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE census SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE litter SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE juvenile SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaAdmums SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaBehaviour SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaFLastAll SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaJuvenile SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaMidden SET squirrel_id = 12491 WHERE squirrel_id = 12002;
UPDATE dbaTrapping SET squirrel_id = 12491 WHERE squirrel_id = 12002;


UPDATE trapping
SET ft= 13
WHERE squirrel_id = 12491 AND id= 102780; 

DELETE FROM squirrel
WHERE id = 12002;



# SU110240 id 13098 was fate 2 in May 18/11. SU090170 id 11448 was fate 2 in 2009, last seen alive in 2010. Genetic match, both females. Change trapping to fate 13 and merge 13098 -> 11448

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
WHERE s1.id = 11448 AND s2.id = 13098;

UPDATE trapping SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE behaviour SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE census SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE litter SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE juvenile SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaAdmums SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaBehaviour SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaFLastAll SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaJuvenile SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaMidden SET squirrel_id = 11448 WHERE squirrel_id = 13098;
UPDATE dbaTrapping SET squirrel_id = 11448 WHERE squirrel_id = 13098;

UPDATE trapping
SET ft= 13
WHERE squirrel_id = 11448 AND id= 103540; 

DELETE FROM squirrel
WHERE id = 13098;

# SU080132, id 10660 was fate 2 in April 2008. SU650 (DNA not in db), id 16199, was only pup of 4 in litter to not be found at N2 in 2007. Genetic match, both males. Change trapping to fate 7 and merge 10660 -> 16199

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
WHERE s1.id = 16199 AND s2.id = 10660;

UPDATE trapping SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE behaviour SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE census SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE litter SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE juvenile SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaAdmums SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaBehaviour SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaFLastAll SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaJuvenile SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaMidden SET squirrel_id = 16199 WHERE squirrel_id = 10660;
UPDATE dbaTrapping SET squirrel_id = 16199 WHERE squirrel_id = 10660;


UPDATE trapping
SET ft= 7
WHERE squirrel_id = 16199 AND id= 80851; 

DELETE FROM squirrel
WHERE id = 10660;

# KL110109, id 11980. KL100355, id 16580, was only pup of 3 in litter to not be found at N2 in 2010. Comments in Nest Table indicate they saw it later and admit missing it at N2.Genetic match, both males. Change trapping to fate 7 and merge 11980 -> 16580

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
WHERE s1.id = 16580 AND s2.id = 11980;

UPDATE trapping SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE behaviour SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE census SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE litter SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE juvenile SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaAdmums SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaBehaviour SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaFLastAll SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaJuvenile SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaMidden SET squirrel_id = 16580 WHERE squirrel_id = 11980;
UPDATE dbaTrapping SET squirrel_id = 16580 WHERE squirrel_id = 11980;


UPDATE trapping
SET ft= 7
WHERE squirrel_id = 16580 AND id= 100897; 

DELETE FROM squirrel
WHERE id = 11980;

# AG110122, id 12034, fate 2 in 2011 and not seen after 2011. AG120101, id 12146, first record is recap in 2012. Genetic match, both females, both occupying same midden. Change trapping fate 13 and merge 12146 -> 12034
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
WHERE s1.id = 12034 AND s2.id = 12146;

UPDATE trapping SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE behaviour SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE census SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE litter SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE juvenile SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaAdmums SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaBehaviour SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaFLastAll SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaJuvenile SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaMidden SET squirrel_id = 12034 WHERE squirrel_id = 12146;
UPDATE dbaTrapping SET squirrel_id = 12034 WHERE squirrel_id = 12146;


UPDATE trapping
SET ft= 13
WHERE squirrel_id = 12034 AND id= 106969; 

DELETE FROM squirrel
WHERE id = 12146;
# AG080370, id 8776, very active from 2008 (fate 6) until 2012 (54 records). AG130130, id 19272, 14 trap records all with fate2 in 2013, not present in 2014. Genetic match, both females living in same area of grid. For 19272 change trapping fate 13 and merge 19272 -> 8776

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
WHERE s1.id = 8776 AND s2.id = 19272;

UPDATE trapping SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE behaviour SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE census SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE litter SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE juvenile SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaAdmums SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaBehaviour SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaFLastAll SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaJuvenile SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaMidden SET squirrel_id = 8776 WHERE squirrel_id = 19272;
UPDATE dbaTrapping SET squirrel_id = 8776 WHERE squirrel_id = 19272;

UPDATE juvenile SET dna1 = 'AG080201', dna2 = 'AG080373' WHERE squirrel_id = 8255 AND id = 7408;
UPDATE juvenile SET dna1 = 'AG080180', dna2 = 'AG080371' WHERE squirrel_id = 8517 AND id = 7409;
UPDATE juvenile SET dna1 = 'AG080179', dna2 = 'AG080370' WHERE squirrel_id = 8776 AND id = 7410;
UPDATE juvenile SET dna1 = 'AG080181', dna2 = 'AG080372' WHERE squirrel_id = 10568 AND id = 7411;

UPDATE trapping
SET ft= 13
WHERE squirrel_id = 8776 AND id=953;
	  
UPDATE trapping 
SET ft= 1
WHERE squirrel_id = 8776 AND id IN (1259, 1262, 1635, 4725, 5102, 5189, 5260, 5330, 5549, 5550, 6329, 7149, 7296);	 

DELETE FROM squirrel
WHERE id = 19272;


############################
## ID duplicates/problems ##
############################

# squirrel 20811 and 20512 are the same squirrel from KL 2014, merge 20811 -> 20512

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
WHERE s1.id = 20512 AND s2.id = 20811;

UPDATE trapping
SET squirrel_id = 20512
WHERE squirrel_id = 20811;

UPDATE trapping SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE behaviour SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE census SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE litter SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE juvenile SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaAdmums SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaBehaviour SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaFLastAll SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaJuvenile SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaMidden SET squirrel_id = 20512 WHERE squirrel_id = 20811;
UPDATE dbaTrapping SET squirrel_id = 20512 WHERE squirrel_id = 20811;

DELETE FROM squirrel
WHERE id = 20811;
 
# squirrel 20704 and 20709 are the same squirrel from AG 2014, merge 20709 -> 20704

DELETE FROM squirrel
WHERE id = 20709;

DELETE FROM trapping
WHERE squirrel_id= 20709 AND id= 120202;


#####################
## 2. Other Errors ##
#####################

# Duplicate trapping record for squirrel 12491 (formerly 12002): 102780 and 102781 are the same trapping record 
DELETE FROM trapping
WHERE id= 102781 AND squirrel_id= 12491;

## BR code errors in 2010

UPDATE litter SET br = 4 WHERE id = 4809;
UPDATE litter SET br = 4 WHERE id = 4810;

###  Squirrel ID = 8485 (fate = 13) should be merged with Squirrel ID 7831.

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
WHERE s1.id = 7831 AND s2.id = 8485;

UPDATE trapping SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE behaviour SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE census SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE litter SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE juvenile SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaAdmums SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaBehaviour SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaFLastAll SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaJuvenile SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaMidden SET squirrel_id = 7831 WHERE squirrel_id = 8485;
UPDATE dbaTrapping SET squirrel_id = 7831 WHERE squirrel_id = 8485;

DELETE FROM squirrel
WHERE id = 8485;

#Litter ID=3432 fieldBDate should read 2006-03-30

UPDATE litter SET fieldBDate = '2006-03-30' WHERE id = 3432;

#Litter ID=154 fieldBDate is incorrect.  Should be 2013-03-02??

UPDATE litter SET fieldBDate = '2013-04-28' WHERE id = 154;

#Litter ID=4125 TaGDate reads 1908-05-22; should read 2008-05-22

UPDATE litter SET tagDt = '2008-05-22' WHERE id = 4125;

#Litter ID=4181 TagDate reads 1908-05-26; should read 2008-05-26

UPDATE litter SET tagDt = '2008-05-26' WHERE id = 4181;

#Litter ID = 4235; Tagdate = 3008-04-28; should be 2008-04-28

UPDATE litter SET tagDt = '2008-04-28' WHERE id = 4235;

#error in the nest with litter_id=5718. Year is 2814 instead of 2014
UPDATE litter SET yr=2014 WHERE id = 5718;



############################################################
#Note.  There are potentially big problems with the 2010 juvenile and litter data.  Many DNA vial numbers are missing and many juve nest 2 data are missing.
## 1231 juveniles from 2010 but no notch data and no dna vials.
############################################################






COMMIT;
