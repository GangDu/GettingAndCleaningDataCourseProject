# GettingAndCleaningDataCourseProject

## Required Files

* X_train.txt
* X_test.txt
* y_train.txt
* y_test.txt
* subject_train.txt
* subject_test.txt
* features.txt

You can download these files from this web site:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip    
This is a zip file, you should unzip it and extract required files, the file name is shown above.

## How to use run_analysis.R script

1. Place the required files and run_analysis.R in the same folder.

2. Open the run_analysis.R by RStudio, do not forget setting Working Directory to the location of run_analysis.R.

3. Run the run_analysis.R by source() function.

4. The outcome will be display in RStudio by View() function and the 'tidy_data.txt' file will be save in the same folder as the 
  run_analys.R.

## The Process Of Cleaning Up The Data

1. Merges the data from X_train.txt, X_test.txt, y_train.txt, y_test.txt, subject_train.txt, subject_test.txt 
  to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names("Walking", "Walking_Upstairs",  "Walking_Downstairs", "Sitting", "Standing", "Laying") 
  to name the activities in the data set.

4. Uses changed names from 'Features.txt' file set variable names.
    + chage include: lower the letters; remove parentheses; translate the abbreviation.
    
5. From the data set in step 4, creates a second, independent tidy data set with the average of variable for each activity and each subject.

## Note

* The location of the required files can be change, but you need to change the 'filepath' variable value on the run_analysis.R.
  The defult location of reading file is the location of 'run_analysis.R', that mean that you should 
  place the required files and run_analysis.R in the same folder.
