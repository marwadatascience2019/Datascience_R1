# R Sample() – Random Selections From A List
# r sample - simple random sampling in r

sample (c(1:10))
# r sample with replacement from vector
sample (c(1:10), replace =T) 
# r sample multiple times without replacement
sample (c(1:10), size=3, replace =F)
# r sample with replacement from vector
sample (c(1:10), size=3, replace=T) 

# r sample - generate random sample in r
sample (c('Joe','Karl','Jack','Larry','Curly','Moe','Kim','Kathy','Sam','Jim'), size=1) 
# simple random sampling in r
sample (c('Good','Bad'), size=6, replace=T, prob=c(.75,.25)) 
# r sample dataframe; selecting a random subset in r
# df is a data frame; pick 5 rows
 df<-diamonds
df[sample(nrow(df), 5), ]
# dplyr r sample_n example
sample_n(df, 10)