# This is the script creating the data set for the "Getting And Cleaning Data" course project

# This script assumes the input data is in the current working directory, bundled 
# in the subdirectory "UCI HAR Dataset" and preserving the original directory
# substructure in the provided zip file


## Step 1 : merge data and test set into one data set

#building training set: subjects (subject) + feature data (X) + activity labels (y)
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
samsungtrain <- cbind(subjecttrain, xtrain, ytrain)

#building test set: subjects (subject) + feature data (X) + activity labels (y)
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
samsungtest <- cbind(subjecttest, xtest, ytest)

#appending test and train to make one data set
samsungdata <- rbind(samsungtrain, samsungtest)

#resulting column sequence in the data: subject first, next all of the features, finally the label code

## Step 2 : extract only mean() and std()

features <- read.table("./UCI HAR Dataset/features.txt")

# since we need this later and it comes in handy here, I am already labeling the data as instructed in step 4
# this yields some duplicate column names due to errors in the provided features.txt (as discussed in the forums),
# but as the affected columns are all filtered out in the next step, I don't bother fixing that
# the order of the names (subject, features, label) is the same as in the data set (obviously)
names(samsungdata) <- c("subject", as.character(features$V2), "label_code")

# building a filter to extract columns with mean() or std() from the features$V2 data
# only the features with mean() or std() in the name (including the brackets) are relevant
# features with "mean" elsewhere in the name do not match how I interpret the assignment 
featurefilter <- grepl("mean()", as.character(features$V2), fixed=TRUE) | grepl("std()", as.character(features$V2), fixed=TRUE) 

# extending the above features filter to apply to the entire samsungdata column set (subject + features + label code), adding TRUE for the columns subject and label_code
extendedfilter <- c(TRUE, featurefilter, TRUE)

# applying the filter to the combined data set
filtereddata <- samsungdata[extendedfilter] 

## Step 3 : labeling the activities 

# reading activities decoding table
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activities) <- c("label_code","activity")

# replacing codes with descriptive names via merge with the decoding table
labeleddata <- merge(filtereddata, activities, by.x="label_code", by.y="label_code")


## Step 4 : labeling the feature columns in the data set (was already done as part of step 2)


## Step 5 : reshaping the data set

library(reshape2)
samsungmelt <- melt(labeleddata, id=c("subject","activity"),measure.vars=features$V2[featurefilter])
samsungsummary <- dcast(samsungmelt, subject + activity ~ variable, mean)

## (Step 6 : writing data set to text file)
write.table(samsungsummary, file = "tidydataset.txt", row.names = FALSE)