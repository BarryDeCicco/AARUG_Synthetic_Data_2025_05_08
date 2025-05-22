# Profiling Data Sets.r


mysyn_dataframe <- as.data.frame(mysyn$syn)
mydata_dataframe <- as.data.frame(mydata)
is.data.frame(mysyn_dataframe)
is.data.frame(mydata_dataframe)

# save data sets for later reuse:
saveRDS(mysyn_dataframe, file = "mysyn_dataframe.rds")
saveRDS(mydata_dataframe, file = "mydata_dataframe.rds")


# Comparedf function from the package 'Arsenal':


# https://www.rdocumentation.org/packages/compareDF/versions/2.3.5 and
# https://cran.r-project.org/web/packages/arsenal/vignettes/comparedf.html

# install.packages("arsenal")

library(arsenal)

summary(comparedf(mysyn_dataframe, mydata_dataframe))




