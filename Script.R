#library(rpart)
#library(caret)
#library(rpart.plot)
#library(randomForest)
#library(dplyr) #Para usar select
#library(fpc) #Para la gráfica 
#library(plyr)

#setwd("~/Documents/Mineria/Regresion-Lineal")
#houses <- read.csv("train.csv")

#housesFilter <-select(houses, LotFrontage, LotArea, YearBuilt, YearRemodAdd, MasVnrArea, BsmtFinSF1,BsmtFinSF2,BsmtUnfSF,TotalBsmtSF,X1stFlrSF,X2ndFlrSF,LowQualFinSF,GrLivArea,TotRmsAbvGrd,Fireplaces,GarageYrBlt,GarageCars,GarageArea,WoodDeckSF,OpenPorchSF,EnclosedPorch,ScreenPorch,PoolArea,MoSold,SalePrice,YrSold)

#Data cleanup
#housesFilter <- na.omit(housesFilter)
#cluster <- housesFilter
#km<-kmeans(housesFilter,3)
#housesFilter$grupo<-km$cluster
#housesFiltertree <- select(housesFilter,X1stFlrSF,X2ndFlrSF,GrLivArea,GarageCars,GarageYrBlt, SalePrice, grupo)

#housesFiltertree

#porciento <- 70/100
#set.seed(123)
#trainRowsNumber<-sample(1:nrow(housesFiltertree),porciento*nrow(housesFiltertree))
#train<-housesFiltertree[trainRowsNumber,]
#test<-housesFiltertree[-trainRowsNumber,]
#nrow(train)
#nrow(test)
#Regresion Tree
#train$grupo <- mapvalues(train$grupo, c(1,2,3), c("Intermedio","Bajo","Caro"))
#dt_model<-rpart(train$SalePrice~.,train,method = "anova")
#rpart.plot(dt_model)

#head(test)
#prediccion <- predict(dt_model, newdata = test[1:5])
#View(prediccion)
#plot(test$SalePrice, col='blue')
#points(prediccion, col='green')

#RMSE(test$SalePrice, prediccion)

