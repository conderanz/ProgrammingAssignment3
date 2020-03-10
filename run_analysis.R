#Read files
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
features <- read.csv("UCI HAR Dataset/features.txt", sep = "", header = FALSE)

# Check number of columns and names
ncol(X_test)
ncol(X_train)
nrow(features)

# Rename columns
names(X_test) <- features[,2]
names(X_train) <- features[,2]

# Merge datasets
X_merge <- rbind(X_train, X_test)

# Check number of rows after merger
nrow(X_test) + nrow(X_train)
nrow(X_merge)

# Extract column names for Standard deviation measures
features_std <- grep("std",features[,2], value = TRUE)

# Extract column names for mean measures
features_mean <- grep("mean",features[,2], value = TRUE)

# Filter dataset with standard deviation and mean measures columns
X_merge_filtered <- X_merge[,c(features_std,features_mean)]

# Create another dataset with the average of each variable for each activity and each subject
X_merge_mean <- as.data.frame(colMeans(X_merge_filtered))
write.table(X_merge_mean,"Averages.txt",sep="\t",row.names=TRUE, col.names = FALSE)
