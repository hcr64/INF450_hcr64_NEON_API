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
summary(foliar)

# pull a column from cfc_carbonNitrogen 
carbon_pct <- foliar[["cfc_carbonNitrogen"]][["carbonPercent"]]
CN_ratio <- foliar[["cfc_carbonNitrogen"]][["CNratio"]]

carbon_pct
