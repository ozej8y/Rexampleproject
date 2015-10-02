#Title: plotting
#Author: Jay van Schyndel
#Date: 2nd October, 2015
#Version: 0.01

#installing package
install.packages("ggplot2")

#call a package
library(ggplot2)

#make new function exploring data.frame
exploring_data.frame <- function(df){
  #explorative functions for data.frame

  #check dimensions of the dataframe
  print(dim(df))
  
  print(names(df))
  
  print(str(df))
  #summary
  print(summary(df))
}

exploring_data.frame(gapminder)

#quick example to use ggplot2 package
#function to create a plot is called ggplot

ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap)) + geom_point()

#adding colors by continent, also make a legend
ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) + geom_point()

#adding a title
ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) + geom_point() + ggtitle("Life Expectancy vs GDP per capita")

#saving plot
ggsave(file="plots/LifeGDP.png")

#saving as a pdf - vector based, zooms nicely :)
pdf(file = "plots/LifeGDP.pdf")
#creates the plot in memory
ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) + geom_point() + ggtitle("Life Expectancy vs GDP per capita")
#writes plot from memory to the file
dev.off()

#multi figure plot
png(file = "plots/continents.png")
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country)) +
        geom_point(aes(color=continent)) +
        ggtitle("Life expectation by year") +
        facet_grid(.~continent)
dev.off()

#Note: the + needs to be on the end of the previous line, it won't work if they are at the start of a new line

#Challenge 8
#remove legend and turn x value by 90 degrees - try it, needed more time. use google
png(file = "plots/continents.png")
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country)) +
  geom_point(aes(color=continent)) +
  ggtitle("Life expectation by year") +
  facet_grid(.~continent)
dev.off()


example("ggplot")
?ggplot
