# ProgrammingAssignment3
Repository for Programming Assignment 3 for R Programming on Coursera

=========================================
This repository includes the following files:
=========================================
- 'README.txt'
- 'run_analysis.R': it's the R script that solves the assignment.

=========================================
How to execute:
=========================================
1) Download the source data from the following link and unzip it into your working directory: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2) Set your working directory. 
    Example: setwd("C:/Hernan/Kimberly/Data Science/Training/Coursera/Module 3/Course Project")

3) Run the code: source("run_analysis.R")

=========================================
Process description:
=========================================
1) Read the files "/test/X_test.txt", "/train/X_train.txt" and "features.txt" from "UCI HAR Dataset.
2) Rename column names from "X_test.txt" and "X_train.txt" using the names from "features.txt".
3) Merge the 2 datasets.
4) Keep only the columns related to "standard deviation" and "average" measures.
5) Create another dataset with the average of each resulting measure in step 4.
