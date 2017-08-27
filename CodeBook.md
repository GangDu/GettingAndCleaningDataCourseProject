
## Code Book

### Data Sources

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

### Features selection

The features selected for this database come from the accelerationelerometer and angularvelocityscope 3-axial raw signals tacceleration-xyz and tangularvelocity-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the accelerationelerationeleration signal was then separated into body and gravity accelerationeleration signals (tbodyacceleration-xyz and tGravityacceleration-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear accelerationeleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccelerationjerk-xyz and tbodyangularvelocityjerk-xyz). Also the magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccelerationmagnitude, tgravityaccelerationmagnitude, tbodyaccelerationjerkmagnitude, tbodyangularvelocitymagnitude, tbodyangularvelocityjerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacceleration-xyz, fbodyaccelerationjerk-xyz, fbodyangularvelocity-xyz, fbodyaccelerationjerkmagnitude, fbodyangularvelocitymagnitude, fbodyangularvelocityjerkmagnitude. (Note the 'f' to indicate frequency domain signals). 

### Variable Name And Description

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

* tbodyacceleration-xyz
* tgravityacceleration-xyz
* tbodyaccelerationjerk-xyz
* tbodyangularvelocity-xyz
* tbodyangularvelocityjerk-xyz
* tbodyaccelerationmagnitude
* tgravityaccelerationmagnitude
* tbodyaccelerationjerkmagnitude
* tbodyangularvelocitymagnitude
* tbodyangularvelocityjerkmagnitude
* fbodyacceleration-xyz
* fbodyaccelerationjerk-xyz
* fbodyangularvelocity-xyz
* fbodyaccelerationmagnitude
* fbodyaccelerationjerkmagnitude
* fbodyangularvelocitymagnitude
* fbodyangularvelocityjerkmagnitude

The set of variables that were estimated from these signals are: 

* mean: Mean value
* standarddeviation: Standard deviation

### The Process Of Cleaning Up The Data

1 Merges the data from X_train.txt, X_test.txt, y_train.txt, y_test.txt, subject_train.txt, subject_test.txt 
  to create one data set.

2 Extracts only the measurements on the mean and standard deviation for each measurement.

3 Use descriptive activity names("Walking", "Walking_Upstairs",  "Walking_Downstairs", "Sitting", "Standing", "Laying") 
  to name the activities in the data set

4 Use changed names from Features.txt set variable names.

5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.