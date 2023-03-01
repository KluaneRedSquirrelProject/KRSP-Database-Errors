/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2022 season
*/
BEGIN;

#############################
# Cleanup after 2022 season #
#############################

#  Note the query that automatically adds a litter record for trapped females did this for many juveniles in 2019.  This did not happen in 2022.

#####################
# Merging squirrels #
#####################
# Make sure the merge_squirrel procedure exists.  If not, run that query first.
# First squirrel_id listed is the id that should be discarded from the database and replaced by the second squirrel_id
# That is the first squirrel_id is merged into the second squirrel_id
# In most cases the first squirrel_id should be larger than the second squirrel_id

#Squirrels to be merged from 2022 - from Database Notes

# Squirrels from 2022 that were caught as ft=20

# There was a big mixup with 2550, 25256 and 25334
# trapping
UPDATE trapping
SET squirrel_id = 25334
WHERE tagLft = "M7978" AND squirrel_id = 25356;

UPDATE trapping
SET squirrel_id = 25356
WHERE tagLft = "M7711" AND squirrel_id = 25550;

# behaviour
UPDATE behaviour
SET squirrel_id = 25334
WHERE id = 415926 AND squirrel_id = 25356;

UPDATE behaviour
SET squirrel_id = 25334
WHERE id = 416427 AND squirrel_id = 25356;

UPDATE behaviour
SET squirrel_id = 25356
WHERE id = 415653 AND squirrel_id = 25550;

UPDATE behaviour
SET squirrel_id = 25356
WHERE id = 415654 AND squirrel_id = 25550;

UPDATE behaviour
SET squirrel_id = 25356
WHERE id = 416203 AND squirrel_id = 25550;

UPDATE behaviour
SET squirrel_id = 25356
WHERE id = 416204 AND squirrel_id = 25550;

# Litter
UPDATE litter
SET squirrel_id = 25334
WHERE id = 10002 AND squirrel_id = 25356;

# Juvnile - no change

# Census
UPDATE census
SET squirrel_id = 25334
WHERE id = 14843 AND squirrel_id = 25356;

UPDATE census
SET squirrel_id = 25334
WHERE id = 14987 AND squirrel_id = 25356;

UPDATE census
SET squirrel_id = 25356
WHERE id = 14984 AND squirrel_id = 25550;

# Squirrel
UPDATE squirrel
SET locx = "L.5"
WHERE id = 25356 AND taglft = "M7978";

UPDATE squirrel
SET locy = 12.0
WHERE id = 25356 AND taglft = "M7978";

UPDATE squirrel
SET reflo = "L.12"
WHERE id = 25356 AND taglft = "M7978";

UPDATE squirrel
SET tagrt = "M7712"
WHERE id = 25356 AND taglft = "M7978";

UPDATE squirrel
SET trap_date = "2022-09-29"
WHERE id = 25356 AND taglft = "M7978";

UPDATE squirrel
SET taglft = "M7711"
WHERE id = 25356 AND taglft = "M7978";

DELETE FROM squirrel
WHERE id = 25550;

INSERT INTO historic_squirrel_ids (old_squirrel_id, new_squirrel_id, change_made) VALUES (25550, 25356, "2022 database fix");

# Squirrels that were identified as having more than one squirrel_id from the annual database cleanup.  Many of these were from 2021 but were not caught last year
CALL merge_squirrels(25178, 23054);
CALL merge_squirrels(25187, 23565);
CALL merge_squirrels(25200, 24824);
CALL merge_squirrels(25208, 24753);
CALL merge_squirrels(25191, 24522);
CALL merge_squirrels(25427, 25413);
CALL merge_squirrels(25194, 25055);
CALL merge_squirrels(25189, 24855);
CALL merge_squirrels(25192, 24854);
CALL merge_squirrels(25212, 25032);
CALL merge_squirrels(25182, 22891);
CALL merge_squirrels(25193, 23961);
CALL merge_squirrels(25198, 24525);
CALL merge_squirrels(25188, 24710);
CALL merge_squirrels(25199, 25173);
CALL merge_squirrels(25204, 24383);
CALL merge_squirrels(25226, 24596);
CALL merge_squirrels(25449, 24813);
CALL merge_squirrels(25196, 24897);
CALL merge_squirrels(25197, 24896);
CALL merge_squirrels(25203, 24819);
CALL merge_squirrels(25206, 24690);
CALL merge_squirrels(25181, 24983);
CALL merge_squirrels(25428, 25160);
CALL merge_squirrels(25201, 25165);
CALL merge_squirrels(25355, 25150);
CALL merge_squirrels(25184, 25174);
CALL merge_squirrels(26025, 25771);

# There were some duplicate squirrel_ids that were caused by the crew incorrectly entering the mothers colors and tags in the juvenile TABLE
# Litter 9933
UPDATE juvenile
SET tagLft = NULL
WHERE litter_id = 9933;

UPDATE juvenile
SET tagRt = NULL
WHERE litter_id = 9933;

UPDATE juvenile
SET color_left = NULL
WHERE litter_id = 9933;

UPDATE juvenile
SET color_right = NULL
WHERE litter_id = 9933;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25520;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25520;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25521;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25521;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25522;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25522;

# Litter 9992
UPDATE juvenile
SET tagLft = NULL
WHERE litter_id = 9992;

UPDATE juvenile
SET tagRt = NULL
WHERE litter_id = 9992;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25528;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25528;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25529;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25529;

UPDATE squirrel
SET taglft = NULL
WHERE id = 25530;

UPDATE squirrel
SET tagrt = NULL
WHERE id = 25530;

###################################################
# Issues with mixed up notches or sexes from 2022 #
###################################################
# Need to decide whether it is better to move the DNA vial number over or whether it is best to make it NULL

# Litter 10012
#ML 
UPDATE juvenile
SET weight = 11.5
WHERE squirrel_id = 25879 AND id = 15975;

#UPDATE juvenile
#SET notch = "L"
#WHERE squirrel_id = 25879 AND id = 15975;

#UPDATE juvenile
#SET dna1 = "KL220353"
#WHERE squirrel_id = 25879 AND id = 15975;

DELETE FROM juvenile
WHERE id = 15901 AND squirrel_id = 25795;

# FL
UPDATE juvenile
SET weight = 11.0
WHERE squirrel_id = 25880 AND id = 15976;

#UPDATE juvenile
#SET notch = "L"
#WHERE squirrel_id = 25880 AND id = 15976;

#UPDATE juvenile
#SET dna1 = "KL220351"
#WHERE squirrel_id = 25880 AND id = 15976;

DELETE FROM juvenile
WHERE id = 15899 AND squirrel_id = 25793;

# Litter 10024 - nest sheet said that the mystery male was likely ML so this is how I have proceeded.
UPDATE juvenile
SET weight = 10.9
WHERE squirrel_id = 25969 AND id = 16039;

UPDATE juvenile
SET notch = "L"
WHERE squirrel_id = 25969 AND id = 16039;

UPDATE juvenile
SET dna1 = "KL220404"
WHERE squirrel_id = 25969 AND id = 16039;

DELETE FROM juvenile
WHERE id = 15966 AND squirrel_id = 25868;

# Litter 10033 - nest sheet paired nest2 data with nest1 data but the data weren't entered this way
#FL
UPDATE juvenile
SET weight = 8.9
WHERE squirrel_id = 25998 AND id = 16040;

UPDATE juvenile
SET notch = "L"
WHERE squirrel_id = 25998 AND id = 16040;

UPDATE juvenile
SET dna1 = "KL220432"
WHERE squirrel_id = 25998 AND id = 16040;

DELETE FROM juvenile
WHERE id = 15999 AND squirrel_id = 25918;

#FR
UPDATE juvenile
SET weight = 8.8
WHERE squirrel_id = 25999 AND id = 16041;

UPDATE juvenile
SET notch = "R"
WHERE squirrel_id = 25999 AND id = 16041;

UPDATE juvenile
SET dna1 = "KL220433"
WHERE squirrel_id = 25999 AND id = 16041;

DELETE FROM juvenile
WHERE id = 16000 AND squirrel_id = 25919;

#ML
UPDATE juvenile
SET weight = 10.1
WHERE squirrel_id = 26000 AND id = 16042;

UPDATE juvenile
SET notch = "L"
WHERE squirrel_id = 26000 AND id = 16042;

UPDATE juvenile
SET dna1 = "KL220434"
WHERE squirrel_id = 26000 AND id = 16042;

DELETE FROM juvenile
WHERE id = 16001 AND squirrel_id = 25920;

# Litter 10043 - nest sheet paired nest2 data with nest1 data but the data weren't entered this way
#FL
UPDATE juvenile
SET weight = 15.8
WHERE squirrel_id = 26015 AND id = 16043;

UPDATE juvenile
SET notch = "L"
WHERE squirrel_id = 26015 AND id = 16043;

UPDATE juvenile
SET dna1 = "KL220460"
WHERE squirrel_id = 26015 AND id = 16043;

DELETE FROM juvenile
WHERE id = 16033 AND squirrel_id = 25958;

#FR
UPDATE juvenile
SET weight = 16.1
WHERE squirrel_id = 26016 AND id = 16044;

UPDATE juvenile
SET notch = "R"
WHERE squirrel_id = 26016 AND id = 16044;

UPDATE juvenile
SET dna1 = "KL220461"
WHERE squirrel_id = 26016 AND id = 16044;

DELETE FROM juvenile
WHERE id = 16034 AND squirrel_id = 25959;

#FRR
UPDATE juvenile
SET weight = 16.5
WHERE squirrel_id = 26017 AND id = 16045;

UPDATE juvenile
SET notch = "RR"
WHERE squirrel_id = 26017 AND id = 16045;

UPDATE juvenile
SET dna1 = "KL220464"
WHERE squirrel_id = 26017 AND id = 16045;

DELETE FROM juvenile
WHERE id = 16037 AND squirrel_id = 25962;

# Litter 10018 - This was very hard to tell which pups ought to be paired.  I will comment out the notch and DNA info
#MR G/R*
UPDATE juvenile
SET weight = 10.8
WHERE squirrel_id = 25946 AND id = 16021;

#UPDATE juvenile
#SET notch = "R"
#WHERE squirrel_id = 25946 AND id = 16021;

#UPDATE juvenile
#SET dna1 = "KL220362"
#WHERE squirrel_id = 25946 AND id = 16021;

DELETE FROM juvenile
WHERE id = 15930 AND squirrel_id = 25825;

#MLL Y/O*
UPDATE juvenile
SET weight = 10.0
WHERE squirrel_id = 25947 AND id = 16022;

#UPDATE juvenile
#SET notch = "LL"
#WHERE squirrel_id = 25947 AND id = 16022;

#UPDATE juvenile
#SET dna1 = "KL220365"
#WHERE squirrel_id = 25947 AND id = 16022;

DELETE FROM juvenile
WHERE id = 15933 AND squirrel_id = 25828;

#ML P/W*
UPDATE juvenile
SET weight = 10.8
WHERE squirrel_id = 25948 AND id = 16023;

#UPDATE juvenile
#SET notch = "L"
#WHERE squirrel_id = 25948 AND id = 16023;

#UPDATE juvenile
#SET dna1 = "KL220365"
#WHERE squirrel_id = 25948 AND id = 16023;

DELETE FROM juvenile
WHERE id = 15929 AND squirrel_id = 25824;

# Litter 10022 - pups were matched in the notes and that's what I used.
#FL W/W?
UPDATE juvenile
SET weight = 32.5
WHERE squirrel_id = 25912 AND id = 15996;

UPDATE juvenile
SET notch = "L"
WHERE squirrel_id = 25912 AND id = 15996;

UPDATE juvenile
SET dna1 = "KL220372"
WHERE squirrel_id = 25912 AND id = 15996;

DELETE FROM juvenile
WHERE id = 15954 AND squirrel_id = 25849;

#FLR R/R*
UPDATE juvenile
SET weight = 34.1
WHERE squirrel_id = 25913 AND id = 15997;

UPDATE juvenile
SET notch = "LR"
WHERE squirrel_id = 25913 AND id = 15997;

UPDATE juvenile
SET dna1 = "KL220373"
WHERE squirrel_id = 25913 AND id = 15997;

DELETE FROM juvenile
WHERE id = 15955 AND squirrel_id = 25850;

#FR Y/Y*
UPDATE juvenile
SET weight = 34.0
WHERE squirrel_id = 25914 AND id = 15998;

UPDATE juvenile
SET notch = "R"
WHERE squirrel_id = 25914 AND id = 15998;

UPDATE juvenile
SET dna1 = "KL220371"
WHERE squirrel_id = 25914 AND id = 15998;

DELETE FROM juvenile
WHERE id = 15953 AND squirrel_id = 25848;

############################################
# Corrections based on 2022 Database Notes #
############################################

#CALL merge_squirrels(25356, 25334);

UPDATE behaviour
SET squirrel_id = 20680
WHERE squirrel_id = NULL AND id = 415356;

UPDATE behaviour
SET squirrel_id = 20678
WHERE squirrel_id = NULL AND id = 415357;

UPDATE behaviour
SET locy = NULL
WHERE locx = "off";

UPDATE behaviour
SET locy = NULL
WHERE locx = "OFF";

UPDATE behaviour
SET locx = NULL
WHERE locx = "off";

UPDATE behaviour
SET locx = NULL
WHERE locx = "OFF";

UPDATE trapping
SET locy = NULL
WHERE locx = "off";

UPDATE trapping
SET locy = NULL
WHERE locx = "OFF";

UPDATE trapping
SET locx = NULL
WHERE locx = "off";

UPDATE trapping
SET locx = NULL
WHERE locx = "OFF";

#mixup w tagrt
UPDATE behaviour
SET tag_right = "M9115"
WHERE squirrel_id = 25486 AND id = 415132;

UPDATE trapping
SET tagRt = "M9115"
WHERE squirrel_id = 25486 AND tagLft = "M9108";

#mixup with B!/G! on SU
UPDATE behaviour
SET tag_left = "M9236"
WHERE squirrel_id = 24033 AND color_left = "B!" AND color_right = "G!" AND grid = "SU";

UPDATE behaviour
SET tag_right = "M9227"
WHERE squirrel_id = 24033 AND color_left = "B!" AND color_right = "G!" AND grid = "SU";

UPDATE behaviour
SET squirrel_id = 25527
WHERE squirrel_id = 24033 AND color_left = "B!" AND color_right = "G!" AND grid = "SU";

# Mummified squirrel - see also above
UPDATE behaviour
SET squirrel_id = 22960
WHERE squirrel_id = NULL AND id = 416344;

# JO B/B*
UPDATE census
SET squirrel_id = 25830
WHERE squirrel_id = NULL AND id = 15040;

UPDATE behaviour
SET squirrel_id = 25830
WHERE squirrel_id = NULL AND id = 416256;

UPDATE behaviour
SET squirrel_id = 25830
WHERE squirrel_id = NULL AND id = 416257;


##############################################
# Other issues from the 2022 annual DATABASE #
##############################################
UPDATE juvenile
SET weight = NULL
WHERE squirrel_id = 25770 AND id = 15879;

UPDATE trapping
SET collWt= NULL
WHERE squirrel_id = 25751 AND id = 179895;

######################
# Issues from GitHub #
######################

# Issue #32
UPDATE trapping
SET wgt = 130
WHERE squirrel_id = 22778 AND date = "2017-06-30";

UPDATE trapping
SET wgt = 60
WHERE squirrel_id = 22759 AND date = "2017-06-30";

UPDATE trapping
SET wgt = 110
WHERE squirrel_id = 22685 AND date = "2017-06-20" AND id = 148984;

UPDATE trapping
SET wgt = 85
WHERE squirrel_id = 22897 AND date = "2017-06-30" AND id = 148193;

UPDATE trapping
SET wgt = 60
WHERE squirrel_id = 22759 AND date = "2017-06-30";

UPDATE trapping
SET wgt = 108
WHERE squirrel_id = 22987 AND id = 148822;

UPDATE trapping
SET date = "2017-07-14"
WHERE squirrel_id = 22987 AND id = 148822;

UPDATE trapping
SET date = "2017-06-29"
WHERE squirrel_id = 22898 AND id = 148104;

UPDATE trapping
SET date = "2017-06-20"
WHERE squirrel_id = 22652 AND id = 147785;

UPDATE trapping
SET date = "2017-06-20"
WHERE squirrel_id = 22719 AND id = 147782;

UPDATE trapping
SET date = "2017-06-22"
WHERE squirrel_id = 22774 AND id = 147809;

UPDATE trapping
SET date = "2017-07-19"
WHERE squirrel_id = 22872 AND id = 148901;

UPDATE trapping
SET date = "2017-07-09"
WHERE squirrel_id = 22953 AND id = 148439;

UPDATE trapping
SET date = "2017-07-09"
WHERE squirrel_id = 23040 AND id = 148438;

# Issue #70
UPDATE pedigree
SET BYEAR = 1995
WHERE squirrel_id = 2628 AND byear = 1997;

UPDATE pedigree
SET BYEAR = 1988
WHERE squirrel_id = 265 AND byear = 2001;

UPDATE pedigree
SET BYEAR = 1990
WHERE squirrel_id = 777 AND byear = 1993;

# Issue 96
UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62528;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62529;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62639;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62640;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62763;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62764;

UPDATE behaviour
SET locx = 4.0
WHERE squirrel_id = 6544 AND id = 62846;

UPDATE behaviour
SET locx = "I.4"
WHERE id = 379347;

UPDATE behaviour
SET locx = "3.0"
WHERE id = 372804;

UPDATE behaviour
SET locx = "-3.4"
WHERE id = 374308;

UPDATE behaviour
SET locx = "H.1"
WHERE id = 379702;

UPDATE behaviour
SET locx = "0.5"
WHERE id = 373002;

UPDATE behaviour
SET locx = "I.4"
WHERE id = 381787;

UPDATE behaviour
SET locx = "I.3"
WHERE id = 377053;

UPDATE behaviour
SET locx = "I.3"
WHERE id = 377636;

UPDATE behaviour
SET locx = "10.0"
WHERE id = 63054;

UPDATE behaviour
SET locx = "10.0"
WHERE id = 62630;

UPDATE behaviour
SET locx = "9.5"
WHERE id = 62753;

UPDATE behaviour
SET locx = "6.0"
WHERE id = 63082;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60816;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60817;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60818;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60819;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60911;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60912;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60913;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60914;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60915;

UPDATE behaviour
SET locx = "N.0"
WHERE id = 60916;

UPDATE behaviour
SET locy = 10.1
WHERE id = 377851;

UPDATE behaviour
SET locy = 3.0
WHERE id = 371917;

UPDATE behaviour
SET locy = 17.0
WHERE id = 380553;

UPDATE behaviour
SET locy = 0.0
WHERE id = 380336;

UPDATE behaviour
SET locy = 6.0
WHERE id = 376552;

UPDATE behaviour
SET locy = 6.0
WHERE id = 376553;

UPDATE behaviour
SET locy = 8.3
WHERE id = 379780;

UPDATE behaviour
SET locy = NULL
WHERE id = 370545;

UPDATE behaviour
SET locx = NULL
WHERE id = 370545;

UPDATE behaviour
SET locy = NULL
WHERE id = 370546;

UPDATE behaviour
SET locx = NULL
WHERE id = 370546;

UPDATE behaviour
SET locy = NULL
WHERE id = 370547;

UPDATE behaviour
SET locx = NULL
WHERE id = 370547;

UPDATE behaviour
SET locy = NULL
WHERE id = 370548;

UPDATE behaviour
SET locx = NULL
WHERE id = 370548;

UPDATE behaviour
SET locy = NULL
WHERE id = 371667;

UPDATE behaviour
SET locx = NULL
WHERE id = 371667;

UPDATE behaviour
SET locy = 10.1
WHERE id = 377985;

UPDATE behaviour
SET locx = "M.1"
WHERE id = 377985;

UPDATE behaviour
SET locy = 0.5
WHERE id = 21562;

UPDATE behaviour
SET locx = "13.5"
WHERE id = 21562;

UPDATE behaviour
SET locy = 8.0
WHERE id = 378726;

UPDATE behaviour
SET locx = "S.0"
WHERE id = 378726;

UPDATE behaviour
SET locy = 1.0
WHERE id = 372014;

UPDATE behaviour
SET locx = "I.5"
WHERE id = 372014;

UPDATE behaviour
SET locy = 12.9
WHERE id = 376607;

UPDATE behaviour
SET locx = "E.0"
WHERE id = 376607;

UPDATE behaviour
SET locy = 2.9
WHERE id = 377304;

UPDATE behaviour
SET locx = "D.8"
WHERE id = 377304;

UPDATE behaviour
SET locy = 7.0
WHERE id = 379545;

UPDATE behaviour
SET locx = "P.5"
WHERE id = 379545;

UPDATE trapping
SET comments = "colors out, UTM 656380/6764369"
WHERE id = 66531 AND squirrel_id = 6525;

UPDATE behaviour
SET locx = "15.0"
WHERE squirrel_id = 6844 AND locx = NULL AND NOT locy = NULL;

UPDATE behaviour
SET locx = "15.0"
WHERE squirrel_id = 6514 AND locx = NULL AND NOT locy = NULL;

UPDATE behaviour
SET locx = "8.5"
WHERE squirrel_id = 7306 AND locx = NULL AND NOT locy = NULL;

UPDATE behaviour
SET locx = "2.5"
WHERE squirrel_id = 10138 AND locx = NULL AND NOT locy = NULL;

UPDATE behaviour
SET locx = "13.0"
WHERE squirrel_id = 10183 AND locx = NULL AND NOT locy = NULL;

UPDATE trapping
SET locx = NULL
WHERE id = 61353 AND squirrel_id = 6113;

UPDATE trapping
SET locy = NULL
WHERE id = 61353 AND squirrel_id = 6113;

UPDATE behaviour
SET locx = "10.0"
WHERE id = 62630;

UPDATE behaviour
SET locx = "9.5"
WHERE id = 62753;

UPDATE behaviour
SET locx = "9.5"
WHERE id = 62994;

# Issue #98
CALL merge_squirrels(23813, 20297);

# Issue #99
UPDATE trapping
SET wgt = NULL
WHERE id = 137352 AND squirrel_id = 21354;

UPDATE trapping
SET scale_weight = NULL
WHERE id = 137352 AND squirrel_id = 21354;

# Issue #100
UPDATE trapping
SET wgt = NULL
WHERE id = 109182 AND squirrel_id = 12087;

# Issue #101
CALL merge_squirrels(19851, 19537);

UPDATE historic_squirrel_ids
SET old_squirrel_id = 19851
WHERE id = 2 AND old_squirrel_id = 19537;

UPDATE historic_squirrel_ids
SET new_squirrel_id = 19537
WHERE id = 2 AND old_squirrel_id = 19851;

# Issue #104
UPDATE juvenile
SET weight = NULL
WHERE id = 15879 AND squirrel_id = 25770;


COMMIT;