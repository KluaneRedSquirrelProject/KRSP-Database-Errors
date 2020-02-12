/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2016 season
*/
BEGIN;

############################################################
#Note.  There are potentially problems with the 2010 juvenile and litter data.  Many DNA vial numbers are missing and many juve nest 2 data are missing.
## 1231 juveniles from 2010 but no notch data and no dna vials.
############################################################

########################################################################################################
##KNOW ERRORS THAT CANNOT BE FIXED
#Anni found: Mom id 4688 born 1999 on AG, produced a litter in 1996

#ID 20636 – AG squirrel with tag -/H3879 was not in database. Added new id
##  Unclear what squirrel this is.  No change made, but this error has been moved to errorfixes2016 for further review


########################################################################################################
######## ERRORS TO BE SOLVED 2017

#1. Problems since unable to find 2010 nest binders
# still need to find litter 4662 9F5304/05 (2010-09-12) and verify ln=1? (should be more)
# still need to double check dates on 4944 (F5685/-) (2010-05-12)
# Litter #318,332,563,607 have tagDT dates before date1 

# juvenile #7387, 12905 has negative weight change from weight ot tagWT

# Erin's comments were removed for her focal data

###### (Jan 2017 errors found)
#Check Nest2 date for C1. on CH in 2011
# Check Nest2 date for AG S9 2006
#Check Nest2 date for JO s10. in 2010
#Check dates on CH 2008 Q0
#Check dates on SU 2008 L.14 (mom 8398 = D7336/7)
#Check dates for Litter ID 1402

#Many dbaMidden fates are not correct.  There should not be fate=0 for first midden record
#Check Food = 1 for all litter records for food add grids in the relevant years.  There are many errors here
#There are some records on KL from 1991, 1992 and 2005? That are food=1.  Incorrect?

#Many weights incorrect (>50) these are the same as tagWts and should actually be in the tagWt column


# Litter id = 4511 juvenile squirrel id = 11227 (LL 2009 -20) weight and tagwt are incorrect - fix?	
# Litter id = 6109 juvenile squirrel id = 12907 (AG 2015 F.8.) tagwt for pup seems incorrect	
# Litter id = 4407 problems with date1 or fieldBdate or tagDt	 Check	probably date1	 I kept fieldBdate but deleted Growt		
# Litter id = 2396	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 2424	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 1489	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 4977	problem with tagDt					
# Litter id = 4773	problem with tagDt					
# Litter id = 4077	problem w tagDt		
# Litter id = 4580	problem w fieldBdate  Check	
# Litter id = 2694	problem with fieldBdate and date1 (KL 2001 0.2.)				Trapping suggests birth date should have been around 2001-06-11	
# Litter id = 2772	problem with fieldBdate				trapping says it should be between 2001-05-16 and 2001-05-22	
# Litter id = 1370	problem with fieldBdate				trapping can't confirm.  If based on weight then should be perhaps 1996-04-18 or 1996-04-22	
# Litter id = 4077	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 5032	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 3226	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 921	fieldBdate seems incorrect and should be checked.  Perhaps also TagDt	
# Litter id = 4494	tagDt is incorrect	
# Litter id = 4585	tagDt is incorrect	
# Litter id = 1893	tagDt is incorrect	
# Litter id = 1793	tagDt is incorrect	
# Litter id=5165	tagDt is currently 2010-04-22 but should be 2011-04-22		Was already??
# Litter id = 4634	juvenile squirrel_id = 11928	tagWt should be 57.1 and not 57 	Was already??

############################################################################################