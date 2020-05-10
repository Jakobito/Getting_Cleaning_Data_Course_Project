## Getting and Cleaning Data Course Project

## Download file to the data directory. Check if directory exists and create if needed
if(!file.exists("./data")) {
    dir.create("./data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
tempFile <- tempfile()
download.file(fileUrl, tempFile)
## Unzip file
unzip(tempFile, exdir = "./data")

## Read the data sets in different data frames
testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = F, stringsAsFactors = F, fill = T)
testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = F, stringsAsFactors = F, fill = T)
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = F, stringsAsFactors = F, fill = T)
trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = F, stringsAsFactors = F, fill = T)
trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = F, stringsAsFactors = F, fill = T)
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = F, stringsAsFactors = F, fill = T)
## Merge all the data sets in one
data_merge <- cbind(rbind(testSubject, trainSubject),rbind(testY, trainY), rbind(testX, trainX))

## Read names of the variables from "features.txt"
features <- read.table("./data/UCI HAR Dataset/features.txt", header = F, stringsAsFactors = F, fill = T)

## Read activity names from "activity_labels.txt"
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = F, stringsAsFactors = F, fill = T)

## Rename first columns with Subject and Activity
colnames(data_merge)[1:2] <- c("Subject", "Activity")
## Rename the other columns with features data frame names
colnames(data_merge)[3:563] <- features[, 2]

## Subsetting  of all columns including"mean", "std", "Activity" or "Subject" 
data_merge <- data_merge[, grepl("mean()|std()|Activity|Subject", colnames(data_merge)) & !grepl("meanFreq", colnames(data_merge))]

## Rename the activity codes with the labels read previously
data_merge$Activity <- factor(data_merge$Activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

## An independent tidy data set with the average of each variable for each activity and each subject is created
## Load library dplyr
library(plyr)
## Create data set calculating the mean values except first and second columns
CleanData <- ddply(data_merge, .(Subject, Activity), .fun=function(x) { colMeans(x[ ,-c(1:2)]) })
## Write resulting dataset in a .txt file
write.table(CleanData, "./data/clean_data.txt", row.names = FALSE)