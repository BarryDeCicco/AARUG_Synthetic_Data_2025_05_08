# Profiling Data Sets.r






# Comparedf function from the package 'Arsenal':


# https://www.rdocumentation.org/packages/compareDF/versions/2.3.5 and
# https://cran.r-project.org/web/packages/arsenal/vignettes/comparedf.html

# install.packages("arsenal")

library(arsenal)


arsenal::comparedf(mysyn_dataframe,mydata_dataframe)



## Comparing using the synthpop 'compare' function:

synthpop::compare(mysyn,mydata)





