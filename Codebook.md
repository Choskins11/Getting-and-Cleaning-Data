#Final project Getting and Cleaning Data

subject
		Integer representing the individual participating in the study
		There were a total of 30 participants (1 - 30) in the study
		
activity
		Description of what the study participants were doing during each measurement
		Six activities were perfomed during the study which include
			1. walking
			2. walking_upstairs
			3. walking_downstairs
			4. sitting
			5. standing
			6. laying

Mean and standard deviation values of the body and gravity acceleration signals obtained from the accelerometer and gyroscope X, Y and Z-axis raw signals
are the following variables
			
tBodyAccMeanX               
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ

The mean and standard deviation of the body linear acceleration and angular velocity for the X, Y and Z-axis were derived in time to obtain Jerk signals are the group
of variable below
 
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
yBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ

The mean and standard deviation of the magnitude of body linear acceleration and angular velocity for the X, Y and Z-axis signals were calculated using the Euclidean norm
are the group of variable below
		
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd

Fast Fourier Transform (FFT) was applied to the body and gravity acceleration signals obtained from the accelerometer
and gyroscope X, Y and Z-axis raw signals to create the following group of variables for mean, standard deviation, acceleration frequency, jerk and magnitude of jerk

fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdY
fBodyAccStdZ
fBodyAccMMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq

#According to the documentation found in with the original dataset:

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap
128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window,
a vector of features was obtained by calculating variables from the time and frequency domain.

Features are normalized and bounded within [-1,1].

#Link to original dataset can be found in the MEADME.md file.
