library(dplyr)


## Step One: Merges the training and the test sets by rbind() and cbind() 
## function, the output stored by data variable,the order: train above, test below

# Set file path
filepath <- ""

# read x, y, subject data
x_train <- read.table(paste(filepath, "X_train.txt", sep = ""))
x_test <- read.table(paste(filepath, "X_test.txt", sep = ""))
x_data <- rbind(x_train, x_test)

y_train <- read.table(paste(filepath, "y_train.txt", sep = ""), col.names = "activity")
y_test <- read.table(paste(filepath, "y_test.txt", sep = ""), col.names = "activity")

subject_train <- read.table(paste(filepath, "subject_train.txt", sep = ""), 
                            col.names = "subject")
subject_test <- read.table(paste(filepath, "subject_test.txt", sep = ""), 
                           col.names = "subject")

# Combine x, y, subject data
data <- cbind(x_data, rbind(y_train, y_test), rbind(subject_train, subject_test))

# Remove redundant variables
rm(x_train, x_test, x_data, y_train, y_test, subject_train, subject_test)


## Step Two: Extracts the measurements on the mean and standard deviation 
## for each measurement.

# Read feature.txt file and extract data by grep() function 
# by match "-mean()" and "-std()"
feature <- read.table("features.txt", colClasses = "character")
data <- select(data, grep("-mean\\(\\)|-std\\(\\)", feature[, 2]), activity, 
               subject)


## Step Three: Uses descriptive activity names to name the activities 
## in the data set

# convert the 'activity' column to factor and set levels 
# to descriptive activity names
data <- mutate(data, activity = factor(data$activity, 
                                       labels = c("Walking", "Walking_Upstairs", 
                                                  "Walking_Downstairs", "Sitting", 
                                                  "Standing", "Laying")))

## Step Four: Appropriately labels the data set with descriptive variable names

# Read original names from feature
name <- grep("-mean\\(\\)|-std\\(\\)", feature[, 2], value = TRUE)

# change the original names to make it more descriptive
name <- tolower(name)
name <- gsub("\\(\\)", "", name)
name <- gsub("acc", "acceleration", name)
name <- gsub("mag", "magnitude", name)
name <- gsub("gyro", "angularvelocity", name)
name <- gsub("std", "standarddeviation", name)

# Set column names
colnames(data)[1:length(name)] <- name


## Step Five: From the data set in step 4, creates a second, independent tidy 
## data set with the average of each variable for each activity and each subject

tidy_data <- data %>% group_by(activity, subject) %>% summarise_each(funs(mean))

write.table(tidy_data, "tidy_data.txt", sep = "\t", row.names = FALSE)

View(tidy_data)

