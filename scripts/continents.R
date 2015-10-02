#!usr/bin/env Rscript

#Title: R plotting continents
#Author: Jay van Schyndel
#Date: 2nd October, 2015
#Version: 0.01

#call a package ggplot2
#you can check if its installed first with a condition before calling the package ggplot2
library(ggplot2)

#assuming we have data/gapminder.Rdata, add a condition later
#or read the data from the csv file
load("../data/gapminder.RData")

#Create a function to plot dots per continent
#receives a data frame input and makes a plot
draw_dots_continent <- function(df){

  #plots the continents multifigure  
  p <- ggplot(data=df, aes(x=year, y=lifeExp, color=country)) +
              geom_point(aes(color=continent)) +
              facet_grid(.~continent)
  print(p)
}

#function to create a png plot
make_pngplot <- function(name){
 
  png(file=paste(name,".png",sep="")) 
  draw_dots_continent(gapminder)
  dev.off()
}

#how to receive input from the user.
arg <- commandArgs(TRUE)
try(make_pngplot(arg[1]))


#to run from bash shell
#Rscript continents.R "../plots/JayPlot"