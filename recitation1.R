#USDA.csv import required
str(USDA)
summary(USDA)
nrow(USDA)
names(USDA)
USDA$Description[which.max(USDA$Sodium)]
high_sodium = subset(USDA,Sodium>10000)
high_sodium$Description
USDA$Sodium[match('CAVIAR',USDA$Description)]
summary(USDA$Sodium)
sd(USDA$Sodium, na.rm = TRUE)
plot(USDA$Protein,USDA$TotalFat)
