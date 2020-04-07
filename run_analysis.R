## Getting and Cleaning Data Peer-reviewed Project Johns Hopkins Coursera ##
## Author: Thomas Oliver ##

## create an R-script (This One) that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Create and set new working directory for data. ##
if(!file.exists("./Getting and Cleaning Data Assignment")){dir.create("./Getting and Cleaning Data Assignment")}
path <- getwd()
new_path <- paste(path, "/Getting and Cleaning Data Assignment", sep = "")
setwd(new_path)

## Install necessary r packagages ##
library(data.table)
library(reshape2)

## Download the data from URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ##
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "datafiles.zip", method = "curl")
unzip(zipfile = "datafiles.zip")

## Load the activity names and measurements ##
activitylabels <- fread(file.path(new_path, "UCI HAR Dataset/activity_labels.txt"), col.names = c("classLabels", "activityName"))
features <- fread(file.path(new_path, "UCI HAR Dataset/features.txt"), col.names = c("index", "featureNames"))
wanted_features <- grep("(mean|std)\\(\\)", features$featureNames)
measurements <- features[wanted_features, featureNames]
measurements  <- gsub("[()]", "", measurements)

## read test data into r ##
test <- fread(file.path(new_path, "UCI HAR Dataset/test/X_test.txt"))[, wanted_features, with = FALSE]
setnames(test, colnames(test), measurements)
test_activities <-fread(file.path(new_path, "UCI HAR Dataset/test/y_test.txt"), col.names = c("Activity"))
test_subjects <- fread(file.path(new_path, "UCI HAR Dataset/test/subject_test.txt"), col.names = c("SubjectNum"))
test <- cbind(test_subjects, test_activities, test)

## read train data into r ##
train <- fread(file.path(new_path, "UCI HAR Dataset/train/X_train.txt"))[, wanted_features, with = FALSE]
setnames(train, colnames(train), measurements)
train_activities <-fread(file.path(new_path, "UCI HAR Dataset/train/y_train.txt"), col.names = c("Activity"))
train_subjects <- fread(file.path(new_path, "UCI HAR Dataset/train/subject_train.txt"), col.names = c("SubjectNum"))
train <- cbind(train_subjects, train_activities, train)

## combine the two datasets ##
combined <- rbind(train, test)

## Convert classlabels to activityName ##
combined[["Activity"]] <- factor(combined[, Activity]
                                 , levels = activitylabels[["classLabels"]]
                                 , labels = activitylabels[["activityName"]])
combined[["SubjectNum"]] <- as.factor(combined[, SubjectNum])
combined <- melt(data = combined, id = c("SubjectNum", "Activity"))
combined <- dcast(data = combined, SubjectNum + Activity ~ variable, fun.aggregate = mean)

## Finally, export a clean CSV table and a text file ##
fwrite(x = combined, file = "activityData.csv", quote = FALSE)
write.table(combined, "tidyData.txt", row.names = FALSE)
