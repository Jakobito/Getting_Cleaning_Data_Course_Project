********************************************
Getting and Cleaning Course Final Assignment
********************************************

This repositoty contains Peer-graded Assignment of the "Getting and Cleaning Data Course Project".

File "run_analysis.R" is a R script that does the following:

1. Downloads data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzips data into "./data" directory and read the data using "read.csv". Data frames for "subject", "X" and "Y", for each "test" and "train" data sets are created. 
3. Data frames are merged combining "test" and "train" datasets by using "rbind" and also Subject, Activity and Measurements by using "cbind". 
4. Column names are renamed giving meaningful names. Names "Subject" and "Activity" are fixed in code and other code names are renamed programmatically using the "features.txt" data set.
5. Activity ids are also renamed with IDs and names of activities from "activity_labels.txt" by using "factor". 
6. Filter column names containing "mean" or "std" by using "grepl". 
7. Independent tidy data set with the average of each variable for each activity and each subject is created by using "ddply" from "plyr" library and "colMeans" to calculate the means for all columns excluding Subject and Activity colums.
8. Clean and tidy dataset is written as txt file by using "write.table" in "./data/clean_data.txt".

