==================================================================
Human Activity Recognition Using Smartphones Dataset

Course Assignment: Getting and Cleaning Data
==================================================================

**Study Design**

This study creates a new dataset from the data produced by the original project described at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script run_analysis.R downloads and extracts the project data into e:\Getting and Cleaning Data\Project and then:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

**Code Book**

The generated file tidyDS.txt contains the follow data:

Variable			|Description
----------------------------------------|---------------------------------------------------------------------|
Subject				|Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
Activity			|Activity performed by the subject.  Values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
tBodyAcc-mean()-X		|Average value of variable
tBodyAcc-mean()-Y		|Average value of variable
tBodyAcc-mean()-Z		|Average value of variable
tBodyAcc-std()-X		|Average value of variable
tBodyAcc-std()-Y		|Average value of variable
tBodyAcc-std()-Z		|Average value of variable
tGravityAcc-mean()-X		|Average value of variable
tGravityAcc-mean()-Y		|Average value of variable
tGravityAcc-mean()-Z		|Average value of variable
tGravityAcc-std()-X		|Average value of variable
tGravityAcc-std()-Y		|Average value of variable
tGravityAcc-std()-Z		|Average value of variable
tBodyAccJerk-mean()-X		|Average value of variable
tBodyAccJerk-mean()-Y		|Average value of variable
tBodyAccJerk-mean()-Z		|Average value of variable
tBodyAccJerk-std()-X		|Average value of variable
tBodyAccJerk-std()-Y		|Average value of variable
tBodyAccJerk-std()-Z		|Average value of variable
tBodyGyro-mean()-X		|Average value of variable
tBodyGyro-mean()-Y		|Average value of variable
tBodyGyro-mean()-Z		|Average value of variable
tBodyGyro-std()-X		|Average value of variable
tBodyGyro-std()-Y		|Average value of variable
tBodyGyro-std()-Z		|Average value of variable
tBodyAccMag-mean()		|Average value of variable
tBodyAccMag-std()		|Average value of variable
tGravityAccMag-mean()		|Average value of variable
tGravityAccMag-std()		|Average value of variable
tBodyAccJerkMag-mean()		|Average value of variable
tBodyAccJerkMag-std()		|Average value of variable
tBodyGyroMag-mean()		|Average value of variable
tBodyGyroMag-std()		|Average value of variable
tBodyGyroJerkMag-mean()		|Average value of variable
tBodyGyroJerkMag-std()		|Average value of variable
fBodyAcc-mean()-X		|Average value of variable
fBodyAcc-mean()-Y		|Average value of variable
fBodyAcc-mean()-Z		|Average value of variable
fBodyAcc-std()-X		|Average value of variable
fBodyAcc-std()-Y		|Average value of variable
fBodyAcc-std()-Z		|Average value of variable
fBodyAccJerk-mean()-X		|Average value of variable
fBodyAccJerk-mean()-Y		|Average value of variable
fBodyAccJerk-mean()-Z		|Average value of variable
fBodyAccJerk-std()-X		|Average value of variable
fBodyAccJerk-std()-Y		|Average value of variable
fBodyAccJerk-std()-Z		|Average value of variable
fBodyGyro-mean()-X		|Average value of variable
fBodyGyro-mean()-Y		|Average value of variable
fBodyGyro-mean()-Z		|Average value of variable
fBodyGyro-std()-X		|Average value of variable
fBodyGyro-std()-Y		|Average value of variable
fBodyGyro-std()-Z		|Average value of variable
fBodyAccMag-mean()		|Average value of variable
fBodyAccMag-std()		|Average value of variable
fBodyBodyAccJerkMag-mean()	|Average value of variable
fBodyBodyAccJerkMag-std()	|Average value of variable
fBodyBodyGyroMag-mean()		|Average value of variable
fBodyBodyGyroMag-std()		|Average value of variable
fBodyBodyGyroJerkMag-mean()	|Average value of variable
fBodyBodyGyroJerkMag-std()	|Average value of variable

