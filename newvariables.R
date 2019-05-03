library(Ecdat)
fulldata$RealSalInc19 <- (0.998*fulldata$SALARY19 - fulldata$SALARY18) / fulldata$SALARY18
fulldata$RealSalInc18 <- (0.976*fulldata$SALARY18 - fulldata$SALARY17) / fulldata$SALARY17
fulldata$RealSalInc17 <- (0.979*fulldata$SALARY17 - fulldata$SALARY16) / fulldata$SALARY16
fulldata$RealSalInc <- (0.941*fulldata$SALARY19 - fulldata$SALARY16) / fulldata$SALARY16
fulldata$PERInc19 <- (fulldata$PER19 - fulldata$PER18)/ fulldata$PER18
fulldata$PERInc18 <- (fulldata$PER18 - fulldata$PER17)/ fulldata$PER17
fulldata$PERInc17 <- (fulldata$PER17 - fulldata$PER16)/ fulldata$PER16
fulldata$PERInc <- (fulldata$PER19 - fulldata$PER16)/ fulldata$PER16
fulldata$natester <- NA
fulldata$raise19 <- ifelse(fulldata$RealSalInc19 > 0, 1, 0)
fulldata$raise18 <- ifelse(fulldata$RealSalInc18 > 0, 1, 0)
fulldata$raise17 <- ifelse(fulldata$RealSalInc17 > 0, 1, 0)
fulldata$raise <- ifelse(fulldata$RealSalInc > 0, 1, 0)
fulldata$VAInc19 <- (fulldata$VA19 - fulldata$VA18)/ fulldata$VA18
fulldata$VAInc18 <- (fulldata$VA18 - fulldata$VA17)/ fulldata$VA17
fulldata$VAInc17 <- (fulldata$VA17 - fulldata$VA16)/ fulldata$VA16
fulldata$VAInc <- (fulldata$VA19 - fulldata$VA16)/ fulldata$VA16
