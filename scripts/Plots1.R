#Title: R plots 1
#Author: Jay van Schyndel
#Date: 1st October, 2015
#Version: 0.01

ls()
getwd()

hist(gapminder$lifeExp)
boxplot(pop~year, data=gapminder, main="Population growth", xlab="years", ylab="Population")

