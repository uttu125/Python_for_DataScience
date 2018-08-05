install.packages('class',dependencies =TRUE)
library(class)
library(caret)

# reading data
ServiceTrain=read.csv("serviceTrainData.csv")
ServiceTest=read.csv("serviceTestData.csv")

# viewing data frame
View(ServiceTrain)
View(ServiceTest)

# variable and their data type 
str(ServiceTrain)
str(ServiceTest)

# 5 summary and their mean
summary(ServiceTrain)
summary(ServiceTest)

# applying knn algorithm on data
Predictedknn=knn(train=ServiceTrain[,-6],test=ServiceTest[,-6],
                 cl=ServiceTrain$Service,k=3)

# now see lebels of each data
Predictedknn

# confusion matrix using caret package
conf_matrix = confusionMatrix(data=Predictedknn,ServiceTest$Service)
conf_matrix
