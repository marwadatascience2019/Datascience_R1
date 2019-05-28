#  https://subscription.packtpub.com/book/big_data_and_business_intelligence/9781789612998/1/ch01lvl1sec10/variable-types-and-data-structures/1/ch01lvl1sec10/variable-types-and-data-structures

x <-4.2
class(x)
typeof(x)

#Determine types of the following numeric objects:
#Check the class and type of each using class() and typeof(), respectively, as follows:

x <- 12.7
y <- 8L
z <- 950

a<- "apple"
b<- "7"
c<- "9-5-2016"

#  Dates

e <- as.Date("2016-09-05")
f <- as.POSIXct("2018-04-05")

#char to numeric, integer
var <- "5"
var_num <- as.numeric(var)
class(var_num)
typeof(var_num)

var_int <- as.integer(var)
class(var_int)
typeof(var_int).


#char to date
date <- "18-03-29"
Date <- as.Date(date)
class(Date)
typeof(Date)

#numeric, integer to char
var <- 5

#numeric to char
var_char <- as.character(var_num)
class(var_char)
typeof(var_char)

#int to char
var_char2 <- as.character(var_int)
class(var_char2)
typeof(var_char2)



# Data sctucture
 vector_example <- c(1, 2, 3, 4)
 class(vector_example)

 vector_example_2 <- c(1, "B", 3)
class(vector_example_2)

twenty <- c(1:20)
alphabet <- c(letters)
class(twenty)
typeof(alphabet)

twenty[5]
twenty[17]
twenty[25]

alphabet[6]
alphabet[23]
alphabet[33]

L1<- list(1, "2", "Hello", "cat", 12, list(1, 2, 3))
L1[3]

#Lists can also be changed into other data structures. We could turn a list into a dataframe, but this particular list, because it contains a nested list, will not coerce to a vector. The following code demonstrates this:

L1_df<- as.data.frame(L1)
class(L1_df)
L1_vec<- as.vector(L1)
class(L1_vec)


# Matrices
matrix1 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = FALSE)
matrix1
matrix2 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = TRUE) 
matrix2
rownames(matrix1) <- c("one", "two", "three")
colnames(matrix1)<- c("one", "two", "three")
matrix1

matrix1[1, 2]
matrix1["one",]
matrix1[,"one"]
matrix1["one","one"]

# Dataframes
list_for_df <- list(list(1:3), list(4:6), list(7:9))
example_df <- as.data.frame(list_for_df)
colnames(example_df) <- c("one", "two", "three")
example_df

paste(1:12)

(title <- paste(strwrap(
    "Stopping distance of cars (ft) vs. speed (mph) from Ezekiel (1930)",
    width = 30), collapse = "\n"))
plot(dist ~ speed, cars, main = title)

i<-0
while(i < 5){
    print(paste(i, "is this number"))
    i = i + 1
}



example <- data.frame(color = c("red", "blue", "green"), number = c(1, 2, 3))
for(i in seq(nrow(example))){
print(example[i,1])
}