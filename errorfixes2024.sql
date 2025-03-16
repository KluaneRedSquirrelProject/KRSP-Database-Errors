/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2023 season
*/
BEGIN;

#############################
# Cleanup after 2024 season #
#############################

#  Note the query that automatically adds a litter record for trapped females did this for many juveniles in 2019.  This did not happen in 2023.

#####################
# Merging squirrels #
#####################
#############################################################################################################################################
# 1. Update the text in the merge_squirrels(bigint old_squirrel, bigint new_squirrel) procedure in the functions folder to the current year #
# 2. Save that function before running this script																																													#
#############################################################################################################################################
# First squirrel_id listed is the id that should be discarded from the database and replaced by the second squirrel_id
# That is the first squirrel_id is merged into the second squirrel_id
# In most cases the first squirrel_id should be larger than the second squirrel_id

#Squirrels to be merged from 2024 - from Database Notes
# None

# Squirrels from 2024 that were caught as ft=20
# NONE

# See errorfixes2023 for example code for merging

########################################################################################################
# Squirrels that were identified as having more than one squirrel_id from the annual database cleanup. #
########################################################################################################
# NONE

# See errorfixes2023 for example code for merging


###################
# from Rmd script #
###################
# None
# Some errors from annual database fixed manually before merge

############################################
# Corrections based on 2024 Database Notes #
############################################
# None

##############################################
# Other issues from the 2024 annual DATABASE #
##############################################
# NONE

###################################################################
# Errors found in writing the algorithm for calculating part date #
###################################################################

UPDATE juvenile
SET weight = NULL
WHERE squirrel_id = 224;

UPDATE litter
SET fieldBDate = NULL
WHERE id = 361 AND squirrel_id = 687;

# squirrel_id = 10569 year = 2008
# litter record scored as ln=1 was actually the second litter
UPDATE litter
SET ln = 2
WHERE id = 4041 AND squirrel_id = 10569 AND fieldBDate = "2008-05-20";

INSERT INTO litter (id, version, yr, squirrel_id, fieldBDate, br, grid, ln, date_created, last_updated) 
VALUES (10272, 0, 2008, 10569, "2008-04-02", 2, "AG", 1, "2025-03-15", "2025-03-15");

# squirrel_id = 10081 year = 2008
# litter record scored as ln=1 was actually the second litter
UPDATE litter
SET ln = 2
WHERE id = 4013 AND squirrel_id = 10081 AND fieldBDate = "2008-05-05";

INSERT INTO litter (id, version, yr, squirrel_id, fieldBDate, br, grid, ln, date_created, last_updated) 
VALUES (10273, 0, 2008, 10081, "2008-03-22", 2, "AG", 1, "2025-03-15", "2025-03-15");


# squirrel_id = 20389 year = 2018
# litter record 8742 should actually be the second litter of the year.
# New record should be created with a lost litter with a fieldBdate of 2018-04-21
UPDATE litter
SET ln = 2
WHERE id = 8742 AND squirrel_id = 20389 AND fieldBDate = "2018-06-03";

INSERT INTO litter (id, yr, squirrel_id, fieldBDate, br, grid, ln, version, date_created, last_updated) 
VALUES (10274, 2018, 20389, "2018-04-21", 2, "JO", 1, 0, "2025-03-15", "2025-03-15");

# squirrel_id = 12558 in 2014 had a failed first litter with no pups.  Litter 5662 should actually be her second litter.  Check for a third litter as well.  She was scored a pregnant, then Lac? then Lac then LL and they climbed for her pups and found none.  Later they though it was a palpation error but this doesn't explain the Lac? and LAC scores.
UPDATE litter
SET ln = 2
WHERE id = 5662 AND squirrel_id = 12558 AND fieldBDate = "2014-04-08";

UPDATE litter
SET ln = 3
WHERE id = 6015 AND squirrel_id = 12558 AND fieldBDate = "2014-07-26";

INSERT INTO litter (id, yr, squirrel_id, fieldBDate, br, grid, ln, version, date_created, last_updated) 
VALUES (10275, 2014, 12558, "2014-03-08", 2, "AG", 1, 0, "2025-03-15", "2025-03-15");

# squirrel_id = 10238, year = 2010 the month is listed incorrectly in the fieldBdate.  I checked the nest sheet.
UPDATE litter
SET fieldBDate = "2010-05-17"
WHERE id = 4580 AND squirrel_id = 10238 AND fieldBDate = "2010-04-17";

# squirrel_id = 11678, year = 2013 the month is listed incorrectly in the fieldBdate.  
UPDATE litter
SET fieldBDate = "2013-04-22"
WHERE id = 60 AND squirrel_id = 11678 AND fieldBDate = "2013-03-22";

# squirrel_id = 6348, year = 2001 the month is listed incorrectly in the fieldBdate.  
UPDATE litter
SET fieldBDate = "2001-05-23"
WHERE id = 2772 AND squirrel_id = 6348 AND fieldBDate = "2001-04-23";

# squirrel_id == 4325, litter == 1579 date1 should be 1995-06-07 rather than 1995-07-06
UPDATE litter
SET date1 = "1995-06-07"
WHERE id = 1579 AND squirrel_id = 4325 AND fieldBDate = "1995-07-06";

# squirrel_id = 13427 in 2012 had a failed first litter with no pups.  Litter 5510 should actually be her second litter.  Check nest sheets.  date1 was also incorrect.  I checked the nest sheet.  First litter probably gave birth on 2012-04-12.  Need to check.
UPDATE litter
SET ln = 2
WHERE id = 5510 AND squirrel_id = 13427 AND fieldBDate = "2012-05-27";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10276, 2012, 13427, 2, "JO", 1, 0, "2025-03-15", "2025-03-15");

UPDATE litter
SET date1 = "2012-05-27"
WHERE id = 5510 AND squirrel_id = 13427 AND fieldBDate = "2012-05-27";

#litter_id==5414, squirrel_id==10841 Female actually lost first litter and the nest data is for nest 2.  First litter should be part date of 04-05 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id = 5414 AND squirrel_id = 10841 AND fieldBDate = "2012-05-20";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10277, 2012, 10841, 2, "JO", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==5622, squirrel_id==10946 Female actually lost first litter and the nest data is for nest 2.  First litter should be part date of 04-24 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id = 5622 AND squirrel_id = 10946 AND fieldBDate = "2012-06-06";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10278, 2012, 10946, 2, "SU", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==7701, squirrel_id==12604 Female actually lost first litter and the nest data is for nest 2.  First litter should be part date of 04-03 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id=7701 AND squirrel_id = 12604 AND fieldBDate = "2017-04-21";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10279, 2017, 12604, 2, "AG", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==5979, squirrel_id==10374 Female actually lost first litter and the nest data is for nest 2.  First litter should be part date of 05-30 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id=5979 AND squirrel_id = 10374 AND fieldBDate = "2014-07-09";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10280, 2014, 10374, 2, "KL", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==72, squirrel_id==12788 Female actually lost first litter and the nest data is for nest 2.  First litter should be part date of 04-03 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id = 72 AND squirrel_id = 12788 AND fieldBDate = "2013-04-21";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10281, 2013, 12788, 2, "AG", 1, 0, "2025-03-15", "2025-03-15");

# other
UPDATE litter
SET fieldBDate = NULL
WHERE id = 557 AND squirrel_id = 1026 AND fieldBDate = "1989-03-28";

# other
UPDATE litter
SET fieldBDate = NULL
WHERE id = 2754 AND squirrel_id = 5454 AND fieldBDate = "2001-05-19";

#litter_id==6242, squirrel_id==21905. fieldBdate is incorrect.
UPDATE litter
SET fieldBDate = NULL
WHERE id = 6242 AND squirrel_id = 21905 AND fieldBDate = "2015-04-30";

# other
UPDATE litter
SET fieldBDate = NULL
WHERE id = 2724 AND squirrel_id = 6041 AND fieldBDate = "2001-04-30";

#litter_id==2905, squirrel_id==5754
# female had a previous litter and lost but no information on this previous litter.
UPDATE litter
SET ln = 2
WHERE id = 2905 AND squirrel_id = 5754 AND fieldBDate = "2003-06-07";

# Squirrel_id == 1321, litter == 664.  Seems like lots of potential problems.  fieldBdate cannot be correct based on trapping data.  I checked the nest sheet and it is not a problem with the date1 or tagDt.  I think this fieldBdate should be excluded.
UPDATE litter
SET fieldBDate = NULL
WHERE id = 664 AND squirrel_id = 1321 AND fieldBDate = "1990-04-25";

# squirrel_id==19662, litter_id == 6082.  date1 is incorrect.  Checked nest sheet and it was entered incorrectly
UPDATE litter
SET date1 = "2015-03-10"
WHERE id = 6082 AND squirrel_id = 19662 AND date1 = "2015-04-01";

# squirrel_id==21921, litter_id == 7844.  date1 is incorrect.  Checked nest sheet and it was entered incorrectly
UPDATE litter
SET date1 = "2017-05-01"
WHERE id = 7844 AND squirrel_id = 21921 AND date1 = "2017-05-25";

#litter_id==7709, squirrel_id==13140.  Check and see.  It looks like she had a litter on 04-02 and this is a second litter after a failed first attempt. First litter should be part date of 04-02 and the other litter should be ln==2
UPDATE litter
SET ln = 2
WHERE id = 7709 AND squirrel_id = 13140 AND fieldBDate = "2017-05-04";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10282, 2017, 13140, 2, "AG", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==942, squirrel_id==1492 Need to Check.  Trapping data is pretty clear about when Part happened but does not align with pup weights.  The problem is that one pup weight was VERY large.  This was because it was not a nest weight but it was entered as a tagwt (it was collected 6 weeks later).  Solution is to delete this weight from juvenile.
UPDATE juvenile
SET weight = NULL
WHERE litter_id = 942 AND weight = 157.0;

UPDATE juvenile
SET tagWT = NULL
WHERE litter_id = 942 AND tagWT = 157.0;

UPDATE litter
SET fieldBDate = NULL
WHERE id = 942 AND squirrel_id = 1492 AND date1 = "1992-04-26";

#litter_id==2694, squirrel_id==5360 CHECK.  The trapping data seem to clearly indicate a birth date of 04-30.  Nest data indicate a birth date
# of 05-25.  Are these first and second litters?  Did the first litter fail?  Trapping data don't seem to indicate.  i.e. no LL.  Look at nest sheet.
#Solutions: date1 is entered incorrectly by nest sheets.  Should be June 21.  This aligns pup weights with birth around June 13.  There is a clear drop in mom weight indicating a first litter that was not entered.  This will be added.
UPDATE litter
SET date1 = "2001-06-21"
WHERE id = 2694 AND squirrel_id = 5360 AND date1 = "2001-06-01";

UPDATE litter
SET ln=2
WHERE id = 2694 AND squirrel_id = 5360 AND fieldBDate = "2001-05-17";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10283, 2001, 5360, 2, "KL", 1, 0, "2025-03-15", "2025-03-15");

UPDATE litter
SET fieldBDate = NULL
WHERE id = 2694 AND squirrel_id = 5360 AND fieldBDate = "2001-05-17";

#litter_id==9241, squirrel_id==22781  This is a second or perhaps later litter
UPDATE litter
SET ln = 2
WHERE id = 9241 AND squirrel_id = 22781 AND date1 = "2019-09-16";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10284, 2019, 22781, 3, "KL", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==9190, squirrel_id==23765   This is a second or perhaps later litter
UPDATE litter
SET ln = 2
WHERE id = 9190 AND squirrel_id = 23765 AND date1 = "2019-09-12";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10285, 2019, 23765, 3, "SU", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==9242, squirrel_id==23888    This is a second or perhaps later litter
UPDATE litter
SET ln = 2
WHERE id = 9242 AND squirrel_id = 23888 AND date1 = "2019-08-28";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10286, 2019, 23888, 3, "JO", 1, 0, "2025-03-15", "2025-03-15");

#litter_id==9105, squirrel_id==21023  This is a second or perhaps later litter
UPDATE litter
SET ln = 2
WHERE id = 9105 AND squirrel_id = 21023 AND date1 = "2019-08-06";

INSERT INTO litter (id, yr, squirrel_id, br, grid, ln, version, date_created, last_updated) 
VALUES (10287, 2019, 21023, 3, "KL", 1, 0, "2025-03-15", "2025-03-15");

# NOTE that there appear to be two first litter records for squirrel_id == 13215 in 2014 on AG (ln==5688, ln==6067).  Record 6067 should be deleted.  There are no juveniles assocaited with it.
DELETE FROM litter
WHERE id = 6067;

# NOTE that there appear to be two first litter records for squirrel_id == 25894 in 2023 on JO (ln==10166, ln==10167).  Record 10167 should be deleted.  There are no juveniles associated with it.
DELETE FROM litter
WHERE id = 10167;

######################
# Issues from GitHub #
######################

# Issue #110
UPDATE litter
SET food = 0
WHERE id = 3255 AND grid = "KL" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 3145 AND grid = "SU" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 3147 AND grid = "SU" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 5776 AND grid = "SU" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 5068 AND grid = "CH" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 5053 AND grid = "CH" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 5033 AND grid = "CH" AND food = 1;

UPDATE litter
SET food = 0
WHERE id = 5027 AND grid = "CH" AND food = 1;





COMMIT;