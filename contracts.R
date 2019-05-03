library(XML)
u = "http://www.espn.com/nba/salaries/_/seasontype/3"
contract2019 <- readHTMLTable(u, 
  colClasses = c("character", "character", "character", "character"), 
  stringsAsFactors = FALSE, 
  as.data.frame = TRUE)
