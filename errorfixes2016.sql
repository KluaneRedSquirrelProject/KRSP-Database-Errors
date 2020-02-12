/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2016 season
*/
BEGIN;

##############################################
## To Be Done								##
## 1. lingering issues from 2015			##		
## 4. Revisit Matt Known Errors	document??	##
## 5. Investigate possible 2010 problems  	##
##############################################

############################################################
#Note.  There are potentially problems with the 2010 juvenile and litter data.  Many DNA vial numbers are missing and many juve nest 2 data are missing.
## 1231 juveniles from 2010 but no notch data and no dna vials.
############################################################


#########################################################################
# 1. Lingering issues from 2015											#
#########################################################################

#Litter ID = 4407; not sure but I think the date1 is wrong.  Weights suggest that Bdate and date2 might be correct.  If so, then date1 should probably be 2009-05-11 instead of 2009-04-26.  If date1 is correct then Bdate should probably be 2009-04-15 and this would make the date2 at 41 days which would be quite the rodeo.  I think the date1 must be wrong.

#ID 20636 – AG squirrel with tag -/H3879 was not in database. Added new id
##  Unclear what squirrel this is.  No change made, but this error has been moved to errorfixes2016 for further review







#Merged Squirrels (Squirrel ID 1; Squirrel ID 2; comments)# 19599 (born on SU), 19910 (trapped on KL); old colours and tags matched.

# 11674, 12435; tags matched, two IDS at the start of 2014
## Note done yet
# 20472, 19282; same squirrel on JO, second id added by mistake
# Looks like two different squirrels in teh database now.  Perhaps they were merged before a new id was added to the new id was reused.  No changes made here.

# 19911; 11895; same squirrel on KL, second id added by mistake
#Merge 19911->11895
# 20495; 20496; same squirrel on SU, ipod sent days data twice to database creating two squirrel ids


# F4270/F4271, Y*/W*, was found dead at D3 on JO but was not in the database

#########################################################################
# 4. Revisit Matt Known Errors	document??								#
#########################################################################


#########################################################################
# 5. Investigate possible 2010 problems								#
#########################################################################

COMMIT;
