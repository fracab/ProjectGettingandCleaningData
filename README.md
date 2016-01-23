#Introduction

The data in the present dataset have been elaborated in the context of the final project of the Coursera MOOC on Getting and cleaning data organized by John Hopkins university (January 2016 session).

The features selected for this database are derived from the data elaborated by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto of Smartlab (www.smartlab.ws), available at the website https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The details about the original dataset are detailed by the in the section below (copied from the original codebook).
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

==================================================================

The present dataset merges the two original sets and gives the mean of the the measurements of the mean and standard deviation of each signal of each subject doing a singular activity. 
Further details are available in the CodeBook.md file. 


The dataset includes the following files:
=========================================

-"README.txt"
-"Codebook.md": Shows information about the transformation on the original dataset and the variables used.
- "MeansAvStDDataset.txt": A dataset with the mean values of the mean and standard deviation of each signal for each subject doing each activity. 

