GettingAndCleaningData
======================

Repository for the Coursera "Getting And Cleaning Data" course project 

The analysis script in this repo assumes the input data is in the current working directory, bundled in the subdirectory "UCI HAR Dataset" and preserving the original directory substructure in the provided zip file

The following steps have been executed to get from raw to tidy data:

## Step 1 : merge data and test set into one data set

* The training set is built by combining (in order) the columns of the raw data files subject_train.txt, X_train.txt and y_train.txt.
* The test set is built by combining (in order) the columns of the raw data files subject_test.txt, X_test.txt and y_test.txt.
* Training and test set are appended to create one set.
* Resulting column sequence in the data: first the subject, next all of the features, finally the label code


## Step 2 : extract only mean() and std()

* only the features with mean() or std() in the name have been retained, all other features are dropped

## Step 3 : labeling the activities 

* activities have been labeled according to the decoding table "activity_labels.txt"



## Step 4 : labeling the feature columns in the data set (was already done as part of step 2)

* feature columns are labeled with the names from features.txt


## Step 5 : reshaping the data set

* finally, we create the summarised data set with for each subject, activity and metric variable, the mean of all measurements of that metric for that subject and activity

