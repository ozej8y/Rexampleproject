#Title: GDP
#Author: Jay van Schyndel
#Date: 1st October, 2015
#Version: 0.01

#=NULL sets the value to null if not supplied when the function is called.
calc_gdp <- function(dat, year2=NULL){
  
  if (is.null(year2)) {
     result <- dat$pop * dat$gdpPercap
  }
  else {
        yearData <- subset(dat, year == year2)
        result <- yearData$pop * yearData$gdpPercap
  }
  return(result)
}
 

ls()
names(gapminder)
result <- calc_gdp(gapminder)
head(result)

result <- calc_gdp(gapminder, 1957)
head(result)
