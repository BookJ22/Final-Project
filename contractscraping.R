library(XML)
library(readr)
library(tidyr)
a = "http://www.espn.com/nba/salaries/_/year/2016/page/9/seasontype/3"
b <- readHTMLTable(a, 
  colClasses = c("character", "character", "character", "character"), 
  stringsAsFactors = FALSE, 
  as.data.frame = TRUE,
  skip.rows = c(12, 23, 34))
ctable <- b[["NULL"]]
ctable$RK <- NULL
ctable$TEAM <- NULL
ctable$SALARY <- parse_number(ctable$SALARY)
ctable <- separate(ctable, "NAME", into = c("Player", "Position"), sep = ", ", remove = TRUE, convert = TRUE)
contract20169 <- ctable

