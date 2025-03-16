/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2023 season
*/
BEGIN;

#############################
# Cleanup after 2023 season #
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

#Squirrels to be merged from 2023 - from Database Notes

# Squirrels from 2023 that were caught as ft=20

# squirrel_id= 100016; M9772/3 was a juvenile from 2022.  Should be squirrel_id = 25833
CALL merge_squirrels(100016, 25833);

# squirrel_id = 100020; M9761/2 - There was one pup from the H1 litter on KL in 2022 that had a tag weight but no tags were entered.  The M9761/2 sequence would have followed the other pups in this litter.  Assume that this squirrel is the male from that litter and should be squirrel_id = 25969.  Also add tags M9761/2 to juvenile@krsp record id = 16039, which are currently blank.
UPDATE juvenile
SET tagLft = "M9761"
WHERE id = 16039 AND squirrel_id = 25969;

UPDATE juvenile
SET tagRt = "M9762"
WHERE id = 16039 AND squirrel_id = 25969;

CALL merge_squirrels(100020, 25969);

# squirrel_id = 100215; M9780/- is a juvenile from last year (M9780/1).  Should be squirrel_id = 25794.
CALL merge_squirrels(100215, 25794);


########################################################################################################
# Squirrels that were identified as having more than one squirrel_id from the annual database cleanup. #
########################################################################################################
CALL merge_squirrels(100168, 24424);
# -/M6505 was called a new squirrel but was in the database
CALL merge_squirrels(100260, 100104);
# squirrel_id = 100104 (juve from 2023) was assigned a new squirrel_id at first capture outside nest
CALL merge_squirrels(100261, 100039);
# squirrel_id = 100039 (juve from 2023) was assigned a new squirrel_id at first capture outside nest
CALL merge_squirrels(100016, 25833);
# squirrel_id = 25833 (juve from 2022) was not captured in 2022 and was assigned a new squirrel_id at first capture in 2023
CALL merge_squirrels(100275, 100273);
# for some reason the squirrel was given a new squirrel_id at their subsequent retag capture
# squirrel_id = 100273 was a rip/rip at first capture but I cannot figure out who the previous squirrel was.  Will need dna to sort it out.



###################
# from Rmd script #
###################

# Bruna one observation of behaviour on August 26 that was SU locx=-2.2, locy = -6.3.  This does not seem correct.  Check with Bruna and with data book.
# This should be -2.2, 6.3
# This was fixed manually

# squirrels with same tags but duplicate squirrel_id in the squirrel table
CALL merge_squirrels(25180, 25179);

CALL merge_squirrels(24368, 24367);
CALL merge_squirrels(24369, 24367);
CALL merge_squirrels(24370, 24367);

############################################
# Corrections based on 2023 Database Notes #
############################################

# squirrel from JO H.17. missed at N2 but tagged outside of nest.
CALL merge_squirrels(100249, 100160);


##############################################
# Other issues from the 2023 annual DATABASE #
##############################################


####################################################
# Issues from Gladiana work on Pedigree with Jamie #
####################################################
#Fixing DNA vial numbers associated with more than one squirrel

UPDATE juvenile
SET dna2 = "KL190546"
WHERE litter_id = 9342 AND squirrel_id = 24468;

UPDATE juvenile	
SET dna2 = "KL120435"
WHERE litter_id = 5539 AND squirrel_id = 13631;

UPDATE juvenile
SET dna2 = "KL120436"
WHERE litter_id = 5539 AND squirrel_id = 13632;

UPDATE juvenile
SET dna2 = "KL120437"
WHERE litter_id = 5539 AND squirrel_id = 13633;

UPDATE juvenile
SET dna2 = "KL120438"
WHERE litter_id = 5539 AND squirrel_id = 13634;


#Typos in genotype table

# see genotype_fixes_2023.sql file for changes to the genotytpe table.


#####################################################
# Issues from work by Bruna on Part Date Calculator #
#####################################################
#FieldBdate was entered incorrectly 
UPDATE litter
SET fieldBDate = "2017-05-20"
WHERE id = 7790  AND squirrel_id = 20628;

#Female was input as lac while pregnant
UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 13667 AND date = "2011-03-16";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 10391 AND date = "2010-06-08";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 11150 AND date = "2010-05-31";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 11171 AND date = "2010-05-05";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 10946 AND date = "2010-06-017";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 11176 AND date = "2010-04-26";

UPDATE trapping 
SET nipple = 3
WHERE squirrel_id = 11254 AND date = "2010-06-09";

UPDATE trapping 
SET nipple = 3
WHERE id = 89588  AND date = "2009-05-30";

UPDATE trapping 
SET nipple = 3
WHERE id = 89883  AND date = "2009-06-04";

UPDATE trapping 
SET nipple = 3
WHERE id = 89261  AND date = "2009-05-23";

UPDATE trapping 
SET nipple = 3
WHERE id = 89263  AND date = "2009-05-23";

UPDATE trapping 
SET nipple = 3
WHERE id = 89489  AND date = "2009-05-27";

UPDATE trapping 
SET nipple = 3
WHERE id = 89421  AND date = "2009-05-26";

UPDATE trapping 
SET nipple = 3
WHERE id = 90016  AND date = "2009-06-08";

UPDATE trapping 
SET nipple = 3
WHERE id = 90131  AND date = "2009-06-11";

UPDATE trapping 
SET nipple = 3
WHERE id = 90250  AND date = "2009-06-14";

UPDATE trapping 
SET nipple = 3
WHERE id = 90329  AND date = "2009-06-17";

UPDATE trapping 
SET nipple = 3
WHERE id = 90014  AND date = "2009-06-08";

UPDATE trapping 
SET nipple = 3
WHERE id = 72766  AND date = "2007-03-31";

UPDATE trapping 
SET nipple = 3
WHERE id = 72862  AND date = "2007-04-04";

UPDATE trapping 
SET nipple = 3
WHERE id = 75485  AND date = "2007-06-08";

UPDATE trapping 
SET nipple = 3
WHERE id = 75608  AND date = "2007-06-12";

UPDATE trapping 
SET nipple = 3
WHERE id = 74096  AND date = "2007-05-05";

UPDATE trapping 
SET nipple = 3
WHERE id = 72647  AND date = "2007-03-31";

UPDATE trapping 
SET nipple = 3
WHERE id = 72766  AND date = "2007-03-31";

UPDATE trapping 
SET nipple = 3
WHERE id = 74581  AND date = "2007-05-16";

UPDATE trapping 
SET nipple = 3
WHERE id = 75699  AND date = "2007-06-13";

UPDATE trapping 
SET nipple = 3
WHERE id = 73741  AND date = "2007-04-28";

UPDATE trapping 
SET rep_con = 4
WHERE id = 62157  AND date = "2005-04-26";

UPDATE trapping 
SET rep_con = 4
WHERE id = 62157  AND date = "2005-04-26";

UPDATE trapping 
SET nipple = 3
WHERE id = 66983  AND date = "2006-03-21";

UPDATE trapping 
SET nipple = 3
WHERE id = 57794  AND date = "2004-04-16";

UPDATE trapping 
SET nipple = 3
WHERE id = 57834  AND date = "2004-04-18";

UPDATE trapping 
SET nipple = 3
WHERE id = 58260  AND date = "2004-05-06";

UPDATE trapping 
SET nipple = 3
WHERE id = 58236  AND date = "2004-05-05";

UPDATE trapping 
SET nipple = 3
WHERE id = 58285  AND date = "2004-05-07";

UPDATE trapping 
SET nipple = 3
WHERE id = 58237  AND date = "2004-05-05";

UPDATE trapping 
SET nipple = 3
WHERE id = 58425  AND date = "2004-05-12";

UPDATE trapping 
SET nipple = 3
WHERE id = 58555  AND date = "2004-05-14";

UPDATE trapping 
SET nipple = 3
WHERE id = 58034  AND date = "2004-04-24";

UPDATE trapping 
SET nipple = 3
WHERE id = 58178  AND date = "2004-05-01";

UPDATE trapping 
SET nipple = 3
WHERE id = 58803  AND date = "2004-05-19";

UPDATE trapping 
SET nipple = 3
WHERE id = 58326  AND date = "2004-05-10";

UPDATE trapping 
SET nipple = 3
WHERE id = 58511 AND date = "2004-05-13";

######################
# Issues from GitHub #
######################

# Issue #XX


COMMIT;