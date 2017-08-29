# Code Book

## Data Sources

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

## Data preprocessing

The features selected for this database come from the accelerationelerometer and gyroscope 3-axial raw signals tacceleration-xyz and tangularvelocity-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the accelerationelerationeleration signal was then separated into body and gravity accelerationeleration signals (tbodyacceleration-xyz and tGravityacceleration-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear accelerationeleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccelerationjerk-xyz and tbodyangularvelocityjerk-xyz). Also the magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccelerationmagnitude, tgravityaccelerationmagnitude, tbodyaccelerationjerkmagnitude, tbodyangularvelocitymagnitude, tbodyangularvelocityjerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacceleration-xyz, fbodyaccelerationjerk-xyz, fbodyangularvelocity-xyz, fbodyaccelerationjerkmagnitude, fbodyangularvelocitymagnitude, fbodyangularvelocityjerkmagnitude. (Note the 'f' to indicate frequency domain signals). 

## Variable Name And Description

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.

- tbodyacceleration-mean-xyz
    - time domain body acceleration mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyacceleration-standarddeviation-xyz
    - time domain body acceleration standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tgravityacceleration-mean-xyz
    - time domain gravity acceleration mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tgravityacceleration-standarddeviation-xyz
    - time domain gravity acceleration standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyaccelerationjerk-mean-xyz
    - time domain body acceleration Jerk signals mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyaccelerationjerk-standarddeviation-xyz
    - time domain body acceleration Jerk signals standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyangularvelocity-mean-xyz
    - time domain body angular velocity mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyangularvelocity-standarddeviation-xyz
    - time domain body angular velocity standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyangularvelocityjerk-mean-xyz
    - time domain body angular velocity Jerk signals mean in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyangularvelocityjerk-standarddeviation-xyz
    - time domain body angular velocity Jerk signals standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- tbodyaccelerationmagnitude-mean
    - time domain body acceleration magnitude mean value
    - Value Range: [-1,1], no unit.
- tbodyaccelerationmagnitude-standarddeviation
    - time domain body acceleration magnitude standard deviation
    - Value Range: [-1,1], no unit.
- tgravityaccelerationmagnitude-mean
    - time domain gravity acceleration magnitude mean value
    - Value Range: [-1,1], no unit.
- tgravityaccelerationmagnitude-standarddeviation
    - time domain gravity acceleration magnitude standard deviation
    - Value Range: [-1,1], no unit.
- tbodyaccelerationjerkmagnitude-mean
    - time domain body acceleration Jerk signals magnitude mean value
    - Value Range: [-1,1], no unit.
- tbodyaccelerationjerkmagnitude-standarddeviation
    - time domain body acceleration Jerk signals magnitude standard deviation
    - Value Range: [-1,1], no unit.
- tbodyangularvelocitymagnitude-mean
    - time domain body angular velocity magnitude mean value
    - Value Range: [-1,1], no unit.
- tbodyangularvelocitymagnitude-standarddeviation
    - time domain body angular velocity magnitude standard deviation
    - Value Range: [-1,1], no unit.
- tbodyangularvelocityjerkmagnitude-mean
    - time domain body angular velocity Jerk signals magnitude mean value
    - Value Range: [-1,1], no unit.
- tbodyangularvelocityjerkmagnitude-standarddeviation
    - time domain body angular velocity Jerk signals magnitude standard deviation
    - Value Range: [-1,1], no unit.
- fbodyacceleration-mean-xyz
    - frequency domain body acceleration mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyacceleration-standarddeviation-xyz
    - frequency domain body acceleration standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyaccelerationjerk-mean-xyz
    - frequency domain body acceleration Jerk signals mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyaccelerationjerk-standarddeviation-xyz
    - frequency domain body acceleration mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyangularvelocity-mean-xyz
    - frequency domain body angular velocity mean value in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyangularvelocity-standard deviation-xyz
    - frequency domain body acceleration standard deviation in X, Y and Z directions
    - Value Range: [-1,1], no unit.
- fbodyaccelerationmagnitude-mean
    - frequency domain body acceleration magnitude mean value
    - Value Range: [-1,1], no unit.
- fbodyaccelerationmagnitude-standarddeviation
    - frequency domain body acceleration magnitude standard deviation
    - Value Range: [-1,1], no unit.
- fbodyaccelerationjerkmagnitude-mean
    - frequency domain body acceleration Jerk signals magnitude mean value
    - Value Range: [-1,1], no unit.
- fbodyaccelerationjerkmagnitude-standarddeviation
    - frequency domain body acceleration Jerk signals standard deviation
    - Value Range: [-1,1], no unit.
- fbodyangularvelocitymagnitude-mean
    - frequency domain angular velocity magnitude mean value
    - Value Range: [-1,1], no unit.
- fbodyangularvelocitymagnitude-standarddeviation
    - frequency domain body angular velocity magnitude standard deviation
    - Value Range: [-1,1], no unit.
- fbodyangularvelocityjerkmagnitude-mean
    - frequency domain body angular velocity Jerk signals magnitude mean value
    - Value Range: [-1,1], no unit.
- fbodyangularvelocityjerkmagnitude-standarddeviation
    - frequency domain body angular velocity Jerk signals magnitude standard deviation
    - Value Range: [-1,1], no unit.

## The Process Of Cleaning Up The Data

1 Merges the data from X_train.txt, X_test.txt, y_train.txt, y_test.txt, subject_train.txt, subject_test.txt 
  to create one data set.

2 Extracts only the measurements on the mean and standard deviation for each measurement.

3 Uses descriptive activity names("Walking", "Walking_Upstairs",  "Walking_Downstairs", "Sitting", "Standing", "Laying") 
  to name the activities in the data set

4 Uses changed names from 'Features.txt' file set variable names.

5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each   subject.

## Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
