#Title: R basics material
#Author: Jay van Schyndel
#Date: 1st October, 2015
#Version: 0.01

#get working directory
getwd()
#sets the working directory
setwd("/Users/jc252807/Documents/SoftwareCarpentry/r/R Fundamentals")
getwd()

#how to cite use of R
citation()

#do basic maths
52-13
56.45 / 0.005

#big math operations
log(1)
sqrt(16)
#is 1 equal to 1
1 == 1
#is 1 not equal to 1
1 != 1
# is 3 > 5
3 > 5

#assign values to variables
var <- "hello"

var
print(var)
#sequence of numbers 1 to 5
num <- 1:5
num
#to the power of two
num ^2

#list the variables
ls()
#remove variables
rm("num")
ls()
#remove a list of variables. e.g all of them
rm (list = ls())
ls()

#Exercise 1
pop <- 10000000
gdpPercap <- 780.4
gdp <- pop * gdpPercap

gdp
rm (list = ls())
ls()

#How to get help ??
#syntax 1: ?functionname
#syntax 2: help(functionname)
?ls()
?ls
#ask and learn what summary does
?summary

?"for"
help("mean")
example("mean")

#get similar functions to mean
apropos("mean")
#attributes or arguments of a function
args(mean)
args(read.table)
?read.table

#Excercise 2
help("c")
c(1,6,8,34,65,7:9)
help("paste")
paste()
help("save")

#objects have different types
# logicals - true or false, T or F
# integer
# doubles
# complex
# text - character

num <- 1
typeof(num)

int <- as.integer(num)
typeof(int)

is.numeric(int)
is.numeric(num)

is.complex(num)

?typeof

#Exercise 3
answer <- TRUE
typeof(answer)

siblings <- as.integer(9)
typeof(siblings)

pet <- "c"
typeof(pet)
#end of ex 3


#data structures in R
x <- vector()
x
x <- vector(length = 10)
x
#default value is false
x <- vector("integer", length = 10)
x
x <- vector("character", length = 5)
x
#default value is ' '
#create a series of numbers from 1 to 10 using:
series1 <- 1:10
series1

series2 <- seq(10)
series2

series3 <- seq(1, 10, by=2)
series3

#now to create a vector using the c function (concatenate)
#create a variable week that has the names of the week. 
week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
week
class(week)
typeof(week)
is.character(week)
is.numeric(week)
is.data.frame(week)
is.vector(week)

#how many elements are in the vector
length(week)

append(week, TRUE)
#this converts TRUE to the character class
#append does not append to the variable, it needs to be assigned.

week <- append(week, TRUE)
length(week)
#remove the last item from week
head(week, -1)
week <- head(week, -1)
week

#series
#gives a random sample of 10 numbers from 1 to 10
s1 <- sample(1:10, 10)
s1
#allows replacement of numbers, e.g. duplicates
s2 <- sample(1:10, 10, replace = TRUE)
s2

#factor example
brothers <- factor(c("yes", "yes", "yes", "yes", "no"))
brothers
#gives a list of all the answers and the a list of the answers used.
is.factor(brothers)

?str
str(brothers)
#intersting, output. read the help. It

levels(brothers)
unique(brothers)

#Exercise 6
doubles <- c(1, 56, 89, 4)
typeof(doubles)
integers <- as.integer(doubles)
typeof(integers)

?names
names(integers) <- c("one", "fifty six", "eighty nine", "four")
integers

continents <- c("Australia", "North America", "South America", "Europe", "Africa", "Antarctica", "Asia")
continents

#matrices data structure
y <- matrix(1:16, nrow=4)
y
y <- matrix(1:16, nrow=4, byrow=TRUE)
y

#Exercise 7
m <- y
m
?letters
colnames(m) <- LETTERS[1:4]
m
rownames(m) <- LETTERS[1:4]
m

#lists data structures
ls()
rm(list = ls())

x <- 1:10
y <- matrix(1:12, nrow=3)
z <- "Jay"

my.list <- list(x, y, z)
my.list

#Exercise 8
#logical, double, integer, characters, complex
dataTypes <- c(TRUE, 34, as.integer(2), "Jay")

#factor, matrix, vector, list
??

ls()
save(my.list, file="mylist.RData")
rm(list = ls())
ls()

getwd()
load("mylist.RData")
ls()
my.list

rm(list = ls())
#Data frames
L1 <- letters[1:3]
L1
num <- 1:30
num
height <- rnorm(30, mean=1.80, sd=0.30)
height

df <- data.frame(id=num, height=height, cat=L1)
df

#have a feeling of the df
typeof(df)
class(df)
is.data.frame(df)
str(df)

#plotting with barplot()
barplot(df$height)
#add colors to my plot
barplot(df$height, col= df$cat)

#order df, the ',' makes it order for all the rows by cat column
dfordered <- df[order(df$cat),]
dfordered
#plot again
barplot(dfordered$height, col=dfordered$cat)

#EXERCISE 9
length(dfordered)
dim(dfordered)
names(dfordered)
nrow(dfordered)
ncol(dfordered)
summary(dfordered)
str(dfordered)

#add columns to df with cbind
df <- cbind(df,6:1)
df
names(df)
#change column name
names(df)
names(df)[4] <- "SixToOne"
#adds a new column
df <- cbind(df, capsLetters=LETTERS[1:6])
names(df)

#adding rows to my df with ?rbind()
#?rbind()
df <- rbind(df, list(31, 1.70, "a", 1, "F"))
df

#concatenate data frames
bigdf <- rbind(df, df)
dim(bigdf)
#if you have empty cells use na.omit()
x <- rbind(head(df,5), head(df,3))
x
#check your data frame
dim(x)
summary(x)
str(x)

#reading data
getwd()
dir()
list.files()

#read my data using read.csv
?read.csv
gapminder <- read.csv(file="data/gapminder-FiveYearData.csv")

