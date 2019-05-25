library(dplyr)
library(ggplot2)
head(iris)
  cor(iris$Sepal.Width, iris$Sepal.Length)

  iris %>%
    filter( Sepal.Width>3.6)
    iris<- iris(as.na())
qplot(data=iris , Sepal.Width, Sepal.Length )
