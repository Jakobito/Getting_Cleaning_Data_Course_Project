## Description (extracted from README.txt included in the dataset)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Data has been processed as follows:

	- Data sets merging in a single data set, including Measurements, Activity identificators and Subject identificators.
	- Rename of the column names according to "features.txt" data set.
	- Data subsetting to include measurements of the mean and standard deviation for each measurement. 
	- Activity names are also included instead of Activity IDs as indicated in "activity_labels.txt" data set.
	- Clean data set ("./data/clean_data.txt") contains means of each variable for each activity and each subject.

### Description of variables
Subject                    : integer       
Activity                   : character
tBodyAcc-mean()-X          : numerical
tGravityAcc-std()-X        : numerical
tBodyAcc-mean()-Y          : numerical
tBodyAcc-mean()-Z          : numerical
tBodyAcc-std()-X           : numerical
tBodyAcc-std()-Y           : numerical
tBodyAcc-std()-Z           : numerical
tGravityAcc-mean()-X       : numerical
tGravityAcc-mean()-Y       : numerical
tGravityAcc-mean()-Z       : numerical
tGravityAcc-std()-Y        : numerical
tGravityAcc-std()-Z        : numerical
tBodyAccJerk-mean()-X      : numerical
tBodyAccJerk-mean()-Y      : numerical
tBodyAccJerk-mean()-Z      : numerical
tBodyAccJerk-std()-X       : numerical
tBodyAccJerk-std()-Y       : numerical
tBodyAccJerk-std()-Z       : numerical
tBodyGyro-mean()-X         : numerical
tBodyGyro-mean()-Y         : numerical
tBodyGyro-mean()-Z         : numerical
tBodyGyro-std()-X          : numerical
tBodyGyro-std()-Y          : numerical
tBodyGyro-std()-Z          : numerical
tBodyGyroJerk-mean()-X     : numerical
tBodyGyroJerk-mean()-Y     : numerical
tBodyGyroJerk-mean()-Z     : numerical
tBodyGyroJerk-std()-X      : numerical
tBodyGyroJerk-std()-Y      : numerical
tBodyGyroJerk-std()-Z      : numerical
tBodyAccMag-mean()         : numerical
tBodyAccMag-std()          : numerical
tGravityAccMag-mean()      : numerical
tGravityAccMag-std()       : numerical
tBodyAccJerkMag-mean()     : numerical
tBodyAccJerkMag-std()      : numerical
tBodyGyroMag-mean()        : numerical
tBodyGyroMag-std()         : numerical
tBodyGyroJerkMag-mean()    : numerical
tBodyGyroJerkMag-std()     : numerical
fBodyAcc-mean()-X          : numerical
fBodyAcc-mean()-Y          : numerical
fBodyAcc-mean()-Z          : numerical
fBodyAcc-std()-X           : numerical
fBodyAcc-std()-Y           : numerical
fBodyAcc-std()-Z           : numerical
fBodyAccJerk-mean()-X      : numerical
fBodyAccJerk-mean()-Y      : numerical
fBodyAccJerk-mean()-Z      : numerical
fBodyAccJerk-std()-X       : numerical
fBodyAccJerk-std()-Y       : numerical
fBodyAccJerk-std()-Z       : numerical
fBodyGyro-mean()-X         : numerical
fBodyGyro-mean()-Y         : numerical
fBodyGyro-mean()-Z         : numerical
fBodyGyro-std()-X          : numerical
fBodyGyro-std()-Y          : numerical
fBodyGyro-std()-Z          : numerical
fBodyAccMag-mean()         : numerical
fBodyAccMag-std()          : numerical
fBodyBodyAccJerkMag-mean() : numerical
fBodyBodyAccJerkMag-std()  : numerical
fBodyBodyGyroMag-mean()    : numerical
fBodyBodyGyroMag-std()     : numerical
fBodyBodyGyroJerkMag-mean(): numerical
fBodyBodyGyroJerkMag-std() : numerical