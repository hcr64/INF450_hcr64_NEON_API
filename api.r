# install needed packages
install.packages("neonUtilities")

# include downloaded packages
library(neonUtilities)

# source the token
source("neon_token_source.R")

# pull some data
foliar <- loadByProduct(dpID="DP1.10026.001", site="HARV", 
                        package="expanded", check.size=F,
                        token=NEON_TOKEN)

# examine the foliar data
# summary(foliar)

# pull the sub-dataset?
cfc_CN <- foliar[["cfc_carbonNitrogen"]]

# inspect the dataframe
summary(cfc_CN)

# plot two ariables against each other
plot(cfc_CN$carbonPercent, cfc_CN$CNratio)
