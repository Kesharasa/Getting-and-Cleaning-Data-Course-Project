# Getting-and-Cleaning-Data-Course-Project


## Introduction 
******
This project is an assignment for  "Getting and Cleaning Data" , a MOOC in Coursera . The aim here is demonstrate our ability to collect, work with and clean a data set. 


## About the Data 
******
The data in concern here, is a result of an experiment carried out with a group of 30 volunteers. When a person performed any six activities i.e walking, walking_upstairs, walking_downstairs, sitting, standing, laying, data about  3-axial linear acceleration and 3-axial angular velocity were recorded. Data collection was done  with the aid of a smart phone tied to the waist of a  volunteer.  

Data was dowloaded  from the URL :- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Requirements of the Project
******
1) To merge the training and test sets to create one data set.
2) To extract only the measurements on the mean and standard deviation for each measurement.
3) To use descriptive activity names to name the activities in the data set.
4) To appropriately label the data set with descriptive variable names.
5) To create a second, independent tidy data set with the average of each variable for each activity    and each subject.

## The working of "run_analysis.R" file     
******
Working directory has to be set in advance.Data set has to be downloaded in the working directory.It is to be noted that the data set is downloaded automatically by the script if it is  not present in the working directory. 

The script takes data from "X_train.txt" ,"Y_train.txt" and "X_test.txt" , "Y_test.txt" files present in the "test" and "train" directories. 

It then combines all of them to get one data set. From that data set , only column names having the strings "mean" and "std" is extracted to another variable. In this new data set, the variable names are cleaned and renamed with descriptive names. 

The resulting final data is written to a text file and saved with the name "tidy.txt".

There are comments present at various parts of the script to provide more clarity.

## The "Codebook.md" file     
******
This file contains  the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

