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
plot(USDA$Protein,USDA$TotalFat, xlab="Protein",ylab="Fat",col="red")
hist(USDA$VitaminC,xlab="Vitamin C, mg", main="Vitamin C",xlim=c(0,100),breaks=1000)
boxplot(USDA$Sugar,ylab="Sugar, gr")
USDA$High_Sodium =as.numeric(USDA$Sodium > mean(USDA$Sodium,na.rm = TRUE))
USDA$High_Fat =as.numeric(USDA$TotalFat > mean(USDA$TotalFat,na.rm = TRUE))
USDA$High_Protein =as.numeric(USDA$Protein > mean(USDA$Protein,na.rm = TRUE))
USDA$High_Carbs =as.numeric(USDA$Carbohydrate > mean(USDA$Carbohydrate,na.rm = TRUE))
table(USDA$High_Sodium,USDA$High_Fat)
#compute avg of Iron sorted by protein
tapply(USDA$Iron,USDA$High_Protein,mean, na.rm=TRUE)
tapply(USDA$VitaminC,USDA$High_Carbs,max, na.rm=TRUE)
