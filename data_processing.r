# correlation on certain columns

data_corr<- as.matrix(mtcars[,1:3])
cor(mtcars[,1:3])
typeof(mtcars[,1:3])
library(GGally)
install.packages("GGally")
ggcorr(
    mtcars, methos=c("pairwise", "pearson"), 
    nbreaks=NULL, digits=2, Low="#3B9AB2",
    mid="#EEEEEE" , high="#F21A00",
    geom="title", label=FALSE,
    label_alpha=FALSE
)
library(GGally)
ggcorr(mtcars)
ggcorr(mtcars, nbreaks=6, low="steelblue",
mid="white", high="darkred",
geom="circle")

library(ggplot2)
ggpairs(mtcars, columns=c("mpg", "wt", "cyl", "gear"), title="Bivariate anlaysis", 
upper=list(continuous=wrap("cor", size=3)),
lower=list(continuous=wrap("smooth", alpha=0.3, size=0.1)),
mapping=aes(color=factor("gear"))

)

library(dplyr)
# comparaison avec  SQL query   where 
diamonds %>%
    filter( cut=="Ideal") %>%
    summarize( mean_price=mean(price))
# comparaisn avec  SQL  Group BY
diamonds %>%
    group_by( cut) %>%
    summarize( mean_price=mean(price))
diamonds %>%
    summarize(number_rows=n())
diamonds %>%
    count(cut)

diamonds %>%
    count(cut) %>%
    arrange(desc(n))





set.seed(123)
a <- runif(100, 0, 1000)
b <- runif(100, 0, 1000)
plot(a,b)
