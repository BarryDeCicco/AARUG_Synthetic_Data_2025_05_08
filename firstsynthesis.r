
# This file is from: https://www.synthpop.org.uk/assets/firstsynthesis.r

# install.packages("synthpop")

#--------------------------------------------------------#
# Sample synthesis with only a modest numer of variables #
#--------------------------------------------------------#

rm(list = ls())                # to clean out workspace
library(synthpop)              # to load package

# This code will use the supplied data frame SD2011
help(SD2011)                   # this will give you information about it
dim(SD2011)                    # get size of data frame 
codebook.syn(SD2011)$tab       # get summary info about variables

# Notice that eduspec has 27 levels - so leave this for later.
# Note the negative values in some continuous variables (e.g. nociga).
# SD2011 has 35 variables, so lets go for a smaller number.
# Also bmi should be derived from height and weight, 
# so we'll leave it out for now.

mydata <- SD2011[, c(1, 3, 6, 8, 11, 17, 18, 19, 20, 10)] 
codebook.syn(mydata)$tab 

# Only remaining item to check is the negative income values
table(mydata$income[mydata$income < 0], useNA = "ifany")

# We can see that income has both NA values and -8. 
# To make the synthetic data like the original we keep both types of 
# missingness by setting cont.na for income
mysyn <- syn(mydata, cont.na = list(income = -8))  # default syntheis but adding -8 missing values for income


summary(mysyn)
compare(mysyn, mydata, stat = "counts")

# compare the original and synthesized data sets:

compare(mysyn, mydata, stat = "counts")



