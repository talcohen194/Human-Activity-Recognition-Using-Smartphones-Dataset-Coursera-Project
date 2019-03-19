## i manually unzip the file by moving the inside file to another file.
##set working directory to where the files are saved in my computer.
library(dplyr)
setwd("C:/Users/ User/Desktop/talco/tat miun/coursera/3. getting and cleaning data/week_4/project/UCI HAR Dataset")

##loading the test and training data into R
x.test <- read.table(file = "test/X_test.txt")
y.test <- read.table(file = "test/Y_test.txt")
subject.test <- read.table(file = "test/subject_test.txt")

x.train <- read.table(file = "train/X_train.txt")
y.train <- read.table(file = "train/Y_train.txt")
subject.train <- read.table(file = "train/subject_train.txt")

#prepering the variables names
feature.txt <- read.table(file = "./features.txt")
names <- feature.txt$V2

##adding the variables headers 
names(x.test) <- names
names(x.train) <- names
names(y.test) <- "activity labels"
names(y.train) <- "activity labels"
names(subject.test) <- "subject label"
names(subject.train) <- "subject label"

##merging test/training data
xyS.test <- cbind(x.test,y.test,subject.test)
xyS.train <- cbind(x.train,y.train,subject.train)
data.merge <- rbind(xyS.test,xyS.train)

##making the activity column more intuitive
activity.labesls.txt <- read.table(file = "./activity_labels.txt")
activity.names <- activity.labesls.txt$V2
data.merge$`activity labels` <- gsub("1",activity.names[1],data.merge$`activity labels` )
data.merge$`activity labels` <- gsub("2",activity.names[2],data.merge$`activity labels` )
data.merge$`activity labels` <- gsub("3",activity.names[3],data.merge$`activity labels` )
data.merge$`activity labels` <- gsub("4",activity.names[4],data.merge$`activity labels` )
data.merge$`activity labels` <- gsub("5",activity.names[5],data.merge$`activity labels` )
data.merge$`activity labels` <- gsub("6",activity.names[6],data.merge$`activity labels` )

##extract the mean and std measurements.
std.mean.data <- data.merge[,grep("mean()|std()|label", colnames(data.merge))]

##sorting the data by groups (activity and then subject) and run the mean function.
std.mean.data <- rename(std.mean.data, activity = "activity labels" , subject = "subject label" )
grouped.data <- group_by(std.mean.data, activity, subject)
final.data <- summarize_each(grouped.data, mean)

##Write into a text file the final tidy dataset. 
write.table(final.data ,row.name = FALSE, file = "tidy.data.set.txt") 
