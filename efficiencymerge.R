n <- merge.data.frame(efficiency20161, efficiency20162, all = TRUE)
o <- merge.data.frame(efficiency20163, efficiency20164, all = TRUE)
p <- merge.data.frame(efficiency20165, efficiency20166, all = TRUE)
q <- efficiency20167
r <- merge.data.frame(n, o, all = TRUE)
s <- merge.data.frame(p, q, all = TRUE)
efficiency2016 <- merge.data.frame(r, s, all = TRUE)
rm(efficiency20161)
rm(efficiency20162)
rm(efficiency20163)
rm(efficiency20164)
rm(efficiency20165)
rm(efficiency20166)
rm(efficiency20167)
efficiency2016$PER16 <- efficiency2016$PER
efficiency2016$VA16 <- efficiency2016$VA
efficiency2016$EWA16 <- efficiency2016$EWA
efficiency2016$PER <- NULL
efficiency2016$VA <- NULL
efficiency2016$EWA <- NULL
t <- merge.data.frame(efficiency2019, efficiency2018, all = TRUE)
u <- merge.data.frame(efficiency2017, efficiency2016, all = TRUE)
efficiency <- merge.data.frame(t, u, all = TRUE)
rm(efficiency2019)
rm(efficiency2018)
rm(efficiency2017)
rm(efficiency2016)
fulldata <- merge.data.frame(contracts, efficiency, all = TRUE)
