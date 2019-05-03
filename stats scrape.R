c = "http://insider.espn.com/nba/hollinger/statistics"
d <- readHTMLTable(c,
    header = TRUE,
    skip.rows = c(1, 13, 24, 35, 46),
    as.data.frame = TRUE)
numtable <- d[["NULL"]]
