#Set working directory
#setwd("C:/Hernan/Kimberly/Data Science/Training/Coursera/Module 3/Course Project")

#Read files
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
features <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE, stringsAsFactors = FALSE)
labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)

# Populate activity names in labels files
labels_test <- merge(y_test, labels, by = "V1")
labels_train <- merge(y_train, labels, by = "V1")

# Combine labels and features files for test and train
test <- data.frame(c(labels_test, subject_test, X_test))
train <- data.frame(c(labels_train, subject_train, X_train))

# Rename columns
names(test) <- c("ActivityID","ActivityName", "Subject", features[,2])
names(train) <- c("ActivityID","ActivityName", "Subject", features[,2])

# Merge datasets
df_merge <- rbind(train, test)

# Check number of rows after merger
nrow(test) + nrow(train)
nrow(df_merge)

# Extract column names for Standard deviation measures
features_std <- grep("std",features[,2], value = TRUE)

# Extract column names for mean measures
features_mean <- grep("mean",features[,2], value = TRUE)

# Filter dataset with standard deviation and mean measures columns
df_merge_filtered <- df_merge[,c("ActivityName", "Subject", features_std, features_mean)]

# Create another dataset with the average of each variable for each activity and each subject
df_merge_mean <- aggregate(df_merge_filtered[,-c(1:2)], by = df_merge_filtered[,c(1:2)], mean)
write.table(df_merge_mean,"Averages.txt",sep="\t",row.names=FALSE)