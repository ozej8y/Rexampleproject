#Title: R Functions
#Author: Jay van Schyndel
#Date: Oct 2, 2015
#Version: 0.01

#Make a function taht is add_one
#it receives an input (numerical) add outputs a number plus one

add_one <- function(input){
  #body of the function
  result <- input + 1
  return(result)
}

ls()

add_one
add_one(1)
add_one(2)
add_one(5443524.67)
add_one(c(1,3))

add_one("A")
ls()

#function to read a dataset - designed by me
readDataset <- function(fileName){
  variable <- read.csv(file=fileName)
  return(variable)
}

dataset <- readDataset("data/gapminder-FiveYearData.csv")
dataset


