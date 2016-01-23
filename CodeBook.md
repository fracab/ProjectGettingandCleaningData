#Features


The original dataset was divided into two different datasets (train and test) that were merged for the purpose of the present analysis (the original dataset has been recorded).   

Information about the original dataset are copied below:

=========================================
The features selected for this gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
================================================

In the original dataset, a number of measurement were available for each signal. Of these, only the variables of the mean and standard deviation were kept for each signal were kept for this analysis, and were calculated the mean values of these for each subject doing an activity. Each record therefore represents the mean values of a singular subject doing a singular activity, calculated on the basis of a number of observation. 

For each record is therefore provided:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Subject
Identifier of the subject who carried out the experiment.

##Description
Description of the activity carried out by the subject.
- Mean value of mean of 

##tBodyAcc.mean...XYZ
Mean value of the mean body acceleration signal in the time domain for the subject doing the activity.

##tBodyAcc.std...XYZ
Mean value of the standard deviation of the body acceleration signal in the time domain for the subject doing the activity.

##tGravityAcc.mean...XYZ
Mean value of the mean gravity acceleration signal in the time domain for the subject doing the activity.

##tGravityAcc.std...XYZ
Mean value of the standard deviation of the gravity acceleration signal in the time domain for the subject doing the activity.

##tBodyAccJerk.mean...XYZ
Mean value of the mean Jerk signals for the body linear acceleration in the time domain for the subject doing the activity.

##tBodyAccJerk.std...XYZ
Mean value of the standard deviation of the Jerk signals for the body linear acceleration in the time domain for the subject doing the activity.

##tBodyGyro.mean...XYZ
Mean value of the mean angular velocity signal in the time domain for the subject doing the activity.

##tBodyGyro.std...XYZ
Mean value of the standard deviation of angular velocity signal in the time domain for the subject doing the activity.

##tBodyGyroJerk.mean...XYZ
Mean value of the mean Jerk signals of the angular velocity of the subject doing the activity.

##tBodyGyroJerk.std...XYZ
Mean value of the standard deviation of the Jerk signal for the angular velocity of the subject doing the activity.

##tBodyAccMag.mean..
Mean value of the mean magnitude of the body acceleration signal in the time domain for the subject doing the activity.

##tBodyAccMag.std..
Mean value of the standard deviation of the magnitude of the body acceleration signal in the time domain for the subject doing the activity.

##tGravityAccMag.mean..
Mean value of the mean magnitude of the gravity acceleration signal in the time domain for the subject doing the activity.

##tGravityAccMag.std..
Mean value of the stadard deviation of the magnitude of the gravity acceleration signal in the time domain for the subject doing the activity.

##tBodyAccJerkMag.mean..
Mean value of the mean magnitude of the Jerk signals for the body linear acceleration in the time domain for the subject doing the activity

##tBodyAccJerkMag.std..
Mean value of the standard deviation of the magnitude of the Jerk signals for the body linear acceleration in the time domain for the subject doing the activity

##tBodyGyroMag.mean..
Mean value of the mean magnitude of the angular velocity for the body linear acceleration in the time domain for the subject doing the activity.

##tBodyGyroMag.std..
Mean value of the standard deviation of the magnitude of the angular velocity for the body linear acceleration in the time domain for the subject doing the activity.

##tBodyGyroJerkMag.mean..
Mean value of the standard deviation of the magnitude of the Jerk signal for the angular velocity in the time domain of the subject doing the activity.

##tBodyGyroJerkMag.std..
Mean value of the standard deviation of the magnitude of the Jerk signal for the angular velocity in the time domain of the subject doing the activity.

##fBodyAcc.mean...XYZ
Mean value of the mean body acceleration signal in the frequency domain for the subject doing the activity.

##fBodyAcc.std...XYZ
Mean value of the standard deviation of the body acceleration signal in the frequency domain for the subject doing the activity.

##fBodyAccJerk.mean...XYZ
Mean value of the mean Jerk signals for the body linear acceleration in the frequency domain for the subject doing the activity.

##fBodyAccJerk.std...XYZ
Mean value of the standard deviation of the Jerk signals for the body linear in the frequency domain acceleration for the subject doing the activity.

##fBodyGyro.mean...XYZ
Mean value of the mean angular velocity signal in the frequency domain for the subject doing the activity.

##tBodyGyro.std...XYZ
Mean value of the standard deviation of angular velocity signal in the frequencydomain for the subject doing the activity.

##tBodyAccMag.mean..
Mean value of the mean magnitude of the body acceleration signal in the frequencydomain for the subject doing the activity.

##tBodyAccMag.std..
Mean value of the standard deviation of the magnitude of the body acceleration signal in the frequency domain for the subject doing the activity.

##fBodyBodyAccJerkMag.mean..
Mean value of the mean magnitude of the Jerk signals for the body linear acceleration in the frequency domain for the subject doing the activity

##fBodyBodyAccJerkMag.std..
Mean value of the standard deviation of the magnitude of the Jerk signals for the body linear acceleration in the frequency domain for the subject doing the activity

##fBodyBodyGyroMag.mean..
Mean value of the mean magnitude of the angular velocity for the body linear acceleration in the time domain for the subject doing the activity.

##fBodyBodyGyroMag.std..
Mean value of the standard deviation of the magnitude of the angular velocity for the body linear acceleration in the time domain for the subject doing the activity.

##fBodyGyroJerkMag.mean..
Mean value of the standard deviation of the magnitude of the Jerk signal for the angular velocity in the frequency domain of the subject doing the activity.

##fBodyGyroJerkMag.std..
Mean value of the standard deviation of the magnitude of the Jerk signal for the angular velocity in the frequency domain of the subject doing the activity.

##label
Numeric label of the activity.

##origin
Original dataset the subject was assigned to (train/test).

##nobs
Number of observation for each activity of each subject.

##ID
Univoque ID for each row, indicating the number of the subject and the description.

Notes: 
======
- Features are normalized and bounded within [-1,1].