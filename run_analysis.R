#
# Getting and Cleaning Data Course Assignment
#
# Ref: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#

setwd("E:\\Getting and Cleaning Data\\Project")
options(digits=4)

zipFile <- "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileUrl <- paste("http://d396qusza40orc.cloudfront.net/", zipFile, sep="")
download.file(fileUrl,destfile=zipFile,mode="wb")
unzip(zipFile)

# Merge Test and Training Data

dir.create("./UCI HAR Dataset/all", showWarnings = FALSE)

write.table( rbind(read.table("./UCI HAR Dataset/train/X_train.txt"), 
                   read.table("./UCI HAR Dataset/test/X_test.txt") ), 
             "./UCI HAR Dataset/all/X.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/subject_train.txt"), 
                   read.table("./UCI HAR Dataset/test/subject_test.txt") ), 
             "./UCI HAR Dataset/all/subject.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/y_train.txt"), 
                   read.table("./UCI HAR Dataset/test/y_test.txt") ), 
             "./UCI HAR Dataset/all/y.txt", sep="\t")

dir.create("./UCI HAR Dataset/all/Inertial Signals", showWarnings = FALSE)

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_acc_x.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_acc_y.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_acc_z.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_gyro_x.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_gyro_y.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/body_gyro_z.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/total_acc_x.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/total_acc_y.txt", sep="\t")

write.table( rbind(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"), 
                   read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt") ), 
             "./UCI HAR Dataset/all/Inertial Signals/total_acc_z.txt", sep="\t")

# Extract and Label Desired Data

desired_features <- c(
  "tBodyAcc-mean()-X",
  "tBodyAcc-mean()-Y",
  "tBodyAcc-mean()-Z",
  "tBodyAcc-std()-X",
  "tBodyAcc-std()-Y",
  "tBodyAcc-std()-Z",
  "tGravityAcc-mean()-X",
  "tGravityAcc-mean()-Y",
  "tGravityAcc-mean()-Z",
  "tGravityAcc-std()-X",
  "tGravityAcc-std()-Y",
  "tGravityAcc-std()-Z",
  "tBodyAccJerk-mean()-X",
  "tBodyAccJerk-mean()-Y",
  "tBodyAccJerk-mean()-Z",
  "tBodyAccJerk-std()-X",
  "tBodyAccJerk-std()-Y",
  "tBodyAccJerk-std()-Z",
  "tBodyGyro-mean()-X",
  "tBodyGyro-mean()-Y",
  "tBodyGyro-mean()-Z",
  "tBodyGyro-std()-X",
  "tBodyGyro-std()-Y",
  "tBodyGyro-std()-Z",
  "tBodyAccMag-mean()",
  "tBodyAccMag-std()",
  "tGravityAccMag-mean()",
  "tGravityAccMag-std()",
  "tBodyAccJerkMag-mean()",
  "tBodyAccJerkMag-std()",
  "tBodyGyroMag-mean()",
  "tBodyGyroMag-std()",
  "tBodyGyroJerkMag-mean()",
  "tBodyGyroJerkMag-std()",
  "fBodyAcc-mean()-X",
  "fBodyAcc-mean()-Y",
  "fBodyAcc-mean()-Z",
  "fBodyAcc-std()-X",
  "fBodyAcc-std()-Y",
  "fBodyAcc-std()-Z",
  "fBodyAccJerk-mean()-X",
  "fBodyAccJerk-mean()-Y",
  "fBodyAccJerk-mean()-Z",
  "fBodyAccJerk-std()-X",
  "fBodyAccJerk-std()-Y",
  "fBodyAccJerk-std()-Z",
  "fBodyGyro-mean()-X",
  "fBodyGyro-mean()-Y",
  "fBodyGyro-mean()-Z",
  "fBodyGyro-std()-X",
  "fBodyGyro-std()-Y",
  "fBodyGyro-std()-Z",
  "fBodyAccMag-mean()",
  "fBodyAccMag-std()",
  "fBodyBodyAccJerkMag-mean()",
  "fBodyBodyAccJerkMag-std()",
  "fBodyBodyGyroMag-mean()",
  "fBodyBodyGyroMag-std()",
  "fBodyBodyGyroJerkMag-mean()",
  "fBodyBodyGyroJerkMag-std()"
)

features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
X <- read.table("./UCI HAR Dataset/all/X.txt", stringsAsFactors=FALSE)
colnames(X) <- features[,2]
Xtract <- X[,desired_features]

subject <- read.table("./UCI HAR Dataset/all/subject.txt")
Xtract["Subject"] <- subject

y <- read.table("./UCI HAR Dataset/all/y.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
Xtract["Activity"] <- sapply(y, function(x) activity_labels[x,2])

# Tidy Dataset

tidyDS <- aggregate(Xtract[,desired_features], list(Activity = Xtract$Activity, Subject = Xtract$Subject), mean)
write.table( tidyDS, "./tidyDS.txt", sep=",", row.name = FALSE)
