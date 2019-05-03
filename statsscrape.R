c = "http://insider.espn.com/nba/hollinger/statistics/_/page/7/year/2016"
d <- readHTMLTable(c,
    header = TRUE,
    stringsAsFactors = FALSE,
    skip.rows = c(1, 13, 24, 35, 46),
    as.data.frame = TRUE)
etable <- d[["NULL"]]
etable$RK <- NULL
etable$GP<- NULL
etable$MPG <- NULL
etable$`TS%` <- NULL
etable$AST <- NULL
etable$TO <- NULL
etable$USG <- NULL
etable$ORR <- NULL
etable$DRR <- NULL
etable$REBR <- NULL
etable$PER <- parse_number(etable$PER)
etable$VA <- parse_number(etable$VA)
etable$EWA <- parse_number(etable$EWA)
etable<- separate(etable, "PLAYER", into = c("Player", "TeamCode"), sep = ", ", remove = TRUE, convert = TRUE)
etable$TeamCode <- NULL
efficiency20167 <- etable

