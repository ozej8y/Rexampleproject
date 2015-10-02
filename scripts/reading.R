#Title: R basics material
#Author: Jay van Schyndel
#Date: 1st October, 2015
#Version: 0.01

#read my file data using read.csv
?read.csv
gapminder <- read.csv(file="data/gapminder-FiveYearData.csv")

gm <- read.table(file="data/gapminder-FiveYearData.csv", header=TRUE, sep=",")

#are the variables the same
identical(gapminder, gm)

save(gapminder, file="gapminder.RData")
rm(list = ls())

load("gapminder.RData")

names(gapminder)
Aus <- subset(gapminder, country=="Australia")
Aus


#Subset by row number
Aus2 <- gapminder[61:72,]
Aus2
identical(Aus, Aus2)

Aus_pop <- gapminder[61:72,3]
Aus_pop


Aus_pop2 <- subset(gapminder, country="Australia", select="pop")
Aus_pop2
class(Aus_pop2)


