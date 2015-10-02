#Title: R Subsetting
#Author: Jay van Schyndel
#Date: Oct 2, 2015
#Version: 0.01

#Creating a vector
x <- c(54., 6.2, 7.1, 4.8, 7.5)
x

names(x) <- letters[1:5]
x

x[1]
x[1:3]
x[c(1,2,3)]
x[c(1,1,1,1)]

x[6]

x[-1]
x[c(-1,-3)]

#Challenge 2
#these all give the same output for x
x[c(2,3,4)]
x[c(-1,-5)]
x[2:4]

#subsetting by name
names(x) == "b"
x[names(x)=="b"]

which(names(x) == "b")

x[-which(names(x) == "b")]

# to compare more than one object
#%in%

x[x>7]

#Muliple conditions
# | or
# & and
# ! negative != not equal

#Challenge 3
?is.na
?is.nan


#subsetting matrices
m <- matrix(rnorm(24), ncol=4, nrow=6)
m
class(m)

m[1]
m[1,2]
m[,]
m[,2]
class(m[,2])

as.matrix(m[,2])

m[1,,drop=FALSE]
m[1,]
class(m[1,,drop=FALSE])
class(m[1,])

#clean out variables, except gapminder
ls()
rm(x)
ls()

#List subsetting

xlist <- list(a="Software Carpentry", b=1:10, data=head(gapminder$gdpPercap))
xlist

str(xlist)

xlist[1]
xlist$a
xlist[[1]]

#Challenge 4
class(xlist[1])
class(xlist$a)
class(xlist[[1]])

#obtain the number 2, from element b in xlist
xlist$b[2]
#end of challenge

#data frame subsetting
ls()
names(gapminder)

#get columnn 3 - population
head(gapminder[3])
head(gapminder["pop"])
?head
head(gapminder$pop)

?as.data.frame

class(head(gapminder$pop))
class(head(gapminder["pop"]))

#Challenge5
gapminder
subset(gapminder, year == 1957)
dim(subset(gapminder, year == 1957))

?which
#using which, it gives me the indices for all rows where year = 1957, this then
#puts the indices into gapminder to give the result :)
gapminder[which(gapminder$year==1957),]
dim(gapminder[which(gapminder$year==1957),])
#end challenge5

?as.data.frame
