# ProgrammingAssignment3
Repository for Programming Assignment 3 for R Programming on Coursera

# This repository includes the following files:
- 'README.md'
- 'run_analysis.R': R script that solves the assignment.
- 'CodeBook.md': Code book for the assignment.

# How to execute:
1) Set your working directory.
    Example: setwd("C:/Hernan/Kimberly/Data Science/Training/Coursera/Module 3/Course Project")
2) Run the code: source("run_analysis.R")

# Process description:
1) Download the source data from the following link and unzip it into your working directory: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2) Set your working directory.
3) Read the following files:
	../UCI HAR Dataset/activity_labels.txt
	../UCI HAR Dataset/features.txt
	../UCI HAR Dataset/test/X_test.txt
	../UCI HAR Dataset/test/y_test.txt
	../UCI HAR Dataset/test/subject_test.txt
	../UCI HAR Dataset/train/X_train.txt
	../UCI HAR Dataset/train/y_train.txt
	../UCI HAR Dataset/train/subject_train.txt
4) Add the Activity Name from the "activity_labels.txt" to "y_train.txt" and "y_test.txt".
5) Add the subject from "subject_train.txt" and "subject_test.txt" to the "X_train.txt" and "X_test.txt" respectively.
6) Combine the results from step 4 and 5 into one single dataset (df_merge).
7) Rename the measure columns from results dataset in step 6 using the names in "features.txt".
8) Select the measure columns that belongs to "standard deviation" and "average".
9) Create another dataset with the average of each resulting measure from step 8 by Subject and Activity Name.
