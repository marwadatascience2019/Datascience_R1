library(dplyr)
library(ggplot2)
head(iris)
  cor(iris$Sepal.Width, iris$Sepal.Length)

  iris %>%
    filter( Sepal.Width>3.6)
    iris<- iris(as.na())
qplot(data=iris , Sepal.Width, Sepal.Length )
summary(mtcars)

factor(mtcars$gear)

f <- factor(c(3.4, 1.2, 5))
as.numeric(f)
levels(f)
sex <- factor(c("male", "female", "female", "male"))
nlevels(sex)
levels(sex)
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))

food <- factor(food, levels = c("low", "medium", "high"), ordered = TRUE)
min(food)
table(mtcars$am)
barplot(table(mtcars$cyl))

#  date  maniplation 
# http://biostat.mc.vanderbilt.edu/wiki/pub/Main/ColeBeck/datestimes.pdf
as.Date("08/30/2012", format = "%m/%d/%Y")
# system time
z<- Sys.time()
# long integer
unclass(z)
now<- as.POSIXlt(Sys.time())
d<-as.POSIXct("2019-05-25 11:28")
months(d)
weeks(d)
as.POSIXct("2008-04-06 10:11:01 PM", format = "%Y-%m-%d %I:%M:%S %p")
