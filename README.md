HARUS-Project
=============

Files for Getting and Cleaning Data Class Project

## Overview

This file describes the process of extracting a creating a tidy data set for use in subsequent analysis. Starting with the compressed data set https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, component files are unzipped and the relevant components are extracted and combined to create a tidy data set. Details are provided below. 

## Contents of this Repository

This repository includes  files related to the Getting and Cleaning Data class project:

1. `README.md` this file.
2. `run_analysis.R` An R script that (1) merges the training and test sets to create one data set, (2) extracts only the measurements on the mean and standard deviation for each measurement, (3) uses descriptive activity names to name the activities in the data set, (4) creates the file `tidydata.txt` which containts the average of each variable for each activity and each subject in the study.
3. `tidydata.txt` The dataset derived created by the `run_analysis.R` script containing the average of each of 66 feature variable means and standard deviations for 180 subject-activity combinations formed from the 30 subjects and 6 activities.
4. `CodeBook.md` a codebook that describes the variables and data in the tidy data set.


## Aim of the Project

The thirty participants in the Human Activity Recognition Using Smartphones study were assigned to either a Training or Test sample. As such, two groups of data sets with identical variables are available. For the purpose of this project, we are only interested in the mean and standard deviation of the features. The files in the `train/Inertial Signals` and `test/Inertial Signals` sub-folders of the `UCI HAR Dataset` folder are irrelevant for this purpose and are ignored for the project.

## Contents of the Raw Data Sets

Details about the data set are provided in the `README.txt` file found in the  zip file. In the interest of brevity, that information is not duplicated here. Instead, we note that the zipped file containts files for identifying tha subject and activity corresponding to each feature record vector. The activities labels in the `activites_labels.txt` file and the comprehensive list of features in the `feactures.txt` enable the construction of the required tidy data set.

## Constructing the Data Set

1. For both training and test samples, read the feature data sets, `X_test.txt` and `X_training.txt`. Use the features data set `features.txt` to determine the columns to be extracted and to assign names to the variables using the R text string functions. 
2. Clean up the feature variable names before attaching them to the features data frame.
3. For both training and test samples, read from the `subject_train.txt` and  `subject_test.txt` files respectively the participant ids corresponding to each row of the feature data sets. 
4. For both training and test samples, read from the `y_train.txt` and `y_test.txt` files the activity numbers corresponding to each row of the features records. Change the activity variables from numeric to factor and attach descriptive labels to the factor levels using codes from the `activity_labels.txt` file. 
5. Use the `rbind()` and `cbind()` functions of R to combine the data sets as illustrated by Community TA David Hood in the figure below from the class discussion forum (https://class.coursera.org/getdata-005/forum/thread?thread_id=23#comment-789).
![tidy data illustration](https://coursera-forum-screenshots.s3.amazonaws.com/a8/6ea6e0117411e4b5dbdb3bb11a3c05/Slide2.png)
6. Create the tidy data set by using the `aggregate()` function in R to compute averages for each variable "for each activity and each subject." Here, the quoted phrase is interpreted to mean the arithmetic mean for each activity-subject combination. 
7. Use the `arrange()` function from the plyr library to sort the data set by activity within subject id.

## Explanatory notes

At several points in the process, judgement calls are required. The most important of these are described with rationale below:

* **Selection of features**: Step 2 of the the assignment instructs us to extra only measurements on the mean and standard deviation for each measurement. I consider that not all of the features that contain the string `mean` (upper or lower case) are actually means of measurements as intended. Instead, I use only those measurements that contain either "mean()" or "std()".

* **Variable names**: Rather than adhere strictly to the "all lower case" convention suggested in the video lecture, I used CamelCase capitalization and appropriate abbreviations for clarity and brevity. Variable names are assigned to columns before binding data frames together using `cbind()` and `rbind()`.





## Source

Details of the study from which these data arise are found in the following paper. I thank the authors for making their data available for further study. 

[1]: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine." International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

