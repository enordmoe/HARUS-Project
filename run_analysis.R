# This file creates a tidy dataset containing the means for each subject and
# activity variable It is assumed that the file 
# "getdata-projectfiles-UCI HAR Dataset.zip" is in the current working 
# directory.

# 
# The following code unzips and reads the training and test text data files of
# interest. The data files are automatically extracted into subfolders of the
# working directory.
# 
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

#
# Get the variable names and colum numbers
#
myinput<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/features.txt",sep=" ",stringsAsFactors = FALSE)
# Extract names from 2nd column
AllFeatureNames<-myinput[,2]
#  Determine which rows contain the required means and standard deviations; 
#  these will correspond to the column numbers to be extracted. Need to escape
#  special characters using "\\"
columnstoextract<-grep("mean\\(\\)|std\\(\\)",AllFeatureNames)
# Get the Feature Names of interest
FeatureNames<-grep("mean\\(\\)|std\\(\\)",AllFeatureNames,value=TRUE)
# Use String Functions to clean up the variable names
#Get rid of dashes and parentheses
FeatureNames<-gsub("\\-|\\(\\)","",FeatureNames)
#Fix Duplicated BodyBody names
FeatureNames<-gsub("BodyBody","Body",FeatureNames)
#Capitalize measure: mean to Mean and std to Std for readability
FeatureNames<-gsub("mean","Mean",FeatureNames)
FeatureNames<-gsub("std","Std",FeatureNames)

# Replace "t" at beginning with "Time" and "f" at beginning with "FFT"
FeatureNames<-gsub("^t","Time",FeatureNames)
FeatureNames<-gsub("^f","Freq",FeatureNames)
#Put Mean or Std at end for ease of use
FeatureNames<-gsub("(Mean)(X|Y|Z)$","\\2\\1",FeatureNames)
FeatureNames<-gsub("(Std)(X|Y|Z)$","\\2\\1",FeatureNames)


#
# Read and extract the features data for both training and test samples
#

Xtrain<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/train/X_train.txt")
Xtraindata<-Xtrain[,columnstoextract]
names(Xtraindata)<-FeatureNames
Xtest<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/test/X_test.txt")
Xtestdata<-Xtest[,columnstoextract]
names(Xtestdata)<-FeatureNames

# Read the subject id data into data frames and name column
testids<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/test/subject_test.txt")
names(testids)<-c("SubjectID")
trainids<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/train/subject_train.txt")
names(trainids)<-c("SubjectID")


# Read the activity data into data frames and assign column names
trainactivity<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/train/y_train.txt")
names(trainactivity)<-c("Activity")
testactivity<-read.table(file="~/Documents/coursera/Getting_and_cleaning_data/UCI HAR Dataset/test/y_test.txt")
names(testactivity)<-c("Activity")
# Create activity labels and assign to Activity factor variable
actlabels<-c("Walking","Walking_Upstairs","Walking_Downstairs","Sitting","Standing","Laying")
trainactivity$Activity<-factor(trainactivity$Activity,labels=actlabels)
testactivity$Activity<-factor(testactivity$Activity,labels=actlabels)

## Assemble the component pieces of the data frame 
# First, use rbind() to combine the training and test 
# features,subject, and activity data
featdata<-rbind(Xtraindata,Xtestdata)
subjectids<-rbind(trainids,testids)
activities<-rbind(trainactivity,testactivity)
# Now use cbind() to glue the data frames  together side by side
fulldata<-cbind(subjectids,activities,featdata)
# Use aggregate() function to compute means of all feature variables for each
# subject-acitivty combination
aggdata<-aggregate(.~SubjectID+Activity,data=fulldata,mean)
# Use arrange() to sort the data by Activity within Subject ID
library(plyr)
tidydata<-arrange(aggdata,SubjectID,Activity)
# Write the data to tidydata.txt
write.table(tidydata,file="tidydata.txt",row.names=FALSE,quote=FALSE)
