/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2025 season
*/
BEGIN;

#############################
# Cleanup after 2025 season #
#############################

#  Note the query that automatically adds a litter record for trapped females did this for many juveniles in 2019.  This did not happen in 2025.

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

#Squirrels to be merged from 2025 - from Database Notes
# squirrel_id= 100492; -/M8444 was in the database but the old record was listed as NULL for taglft and not '-'.  Should be squirrel_id = 100227
CALL merge_squirrels(100492, 100227);

# Squirrels from 2025 that were caught as ft=20
# as above only


# See errorfixes2023 for example code for merging

########################################################################################################
# Squirrels that were identified as having more than one squirrel_id from the annual database cleanup. #
########################################################################################################
# for some reason two squirrel_ids were created during September trapping.  These were already in the database and need to be merged.
CALL merge_squirrels(100702, 100566);
CALL merge_squirrels(100701, 100637);

###################
# from Rmd script #
###################
# None
# Some errors from annual database fixed manually before merge

############################################
# Corrections based on 2025 Database Notes #
############################################
# None

##############################################
# Other issues from the 2025 annual DATABASE #
##############################################
# NONE



######################
# Issues from GitHub #
######################

# Issue #112
# trapping_id = 154692
# squirrel_id = 23712
# caught on 2018-05-28 by JGR and listed as fate=7 (juvenile tagged outside of nest). Timing of the capture and weight suggests that this fate is incorrect and that he was likely an immigrant. AMc check the databook for any notes.

# Notes: JGR field book notes that male had LR notches. All male LR notch on AG were born too late to be this male based on his weight (adult size) even if there was a scale error and he was 100g lighter
# Male was caught on the edge of grid.  Likely a male LR from a previous year based on his weight.  Not an obvious match from previous M LR that were not tagged in the nest, 
# but clearly this is not a male born in 2018.

# Solution:
UPDATE trapping
SET ft = 2
WHERE id = 154692 AND squirrel_id = 23712;

# Issue #113
# M9601/M9602 female on SU should be censused at N7. for Spring Census 2025 (was G/Bk at the time)
UPDATE census
SET locy = 7.5
WHERE id = 15944 AND squirrel_id = 25857;

UPDATE census
SET reflo = "N7."
WHERE id = 15944 AND squirrel_id = 25857;


# Issue #114
# On KL, W*/O* juv trapped in Spring 2025 at J.9 is not S6335/S6336 (born same year at H4.) but S6629/S6630 (born at J.9).
# There is no way to know whether the spring trapping records are correct or incorrect.  I, therefore, assumed that they were correct and dismissed this issue
# without any changes being made.


COMMIT;