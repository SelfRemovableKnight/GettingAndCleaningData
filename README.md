GettingAndCleaningData
======================

Repository for the Coursera "Getting And Cleaning Data" course project 

The analysis script in this repo assumes the input data is in the current working directory, bundled in the subdirectory "UCI HAR Dataset" and preserving the original directory substructure in the provided zip file

The following steps have been executed to get from raw to tidy data. For the precise code, please refer to the file "run_analysis.R" in this repo.

## Step 1 : merge data and test set into one data set

* The training set is built by combining the columns of the raw data files subject_train.txt, X_train.txt and y_train.txt, in that order.
* The test set is built by combining (in order) the columns of the raw data files subject_test.txt, X_test.txt and y_test.txt, in that order.
* Training and test set are appended to create one set.
* Resulting column sequence in the data: first the subject, next all of the features in the same order they were in in the raw data, finally the label code


## Step 2 : extract only mean() and std()

* only the features with mean() or std() in their names (in the raw data file "features.txt") have been retained, all other features are dropped
* please refer to the code book in this repo ("codebook.md") for a full list of features


## Step 3 : labeling the activities 

* the activity names have been generated from the label codes, according to the decoding table "activity_labels.txt" in the raw data



## Step 4 : labeling the feature columns in the data set 

* All feature columns have been labeled with the corresponding names from "features.txt" in the raw data


## Step 5 : reshaping the data set

* finally, we created a summarized data set with for each subject, activity and measurement variable, the mean of all measurements of that variable for that subject and activity in the raw data

