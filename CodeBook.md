# Code Book

This project uses data of the experiment measuring accelerometers data from the Samsung Galaxy S smartphone while subjects are performing different activities. More details about methods and each measurement can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data is then tidied up according to the following format:

## Subject and Activity

__subject__: integer; subject ID as assigned in original experiment.

__activity__: string; one of the following activity names:
* Walking
* Walking Upstairs
* Walking Downstairs
* Sitting
* Standing
* Laying

## Measurements Means

### Naming

The basic naming convention is:

```Mean{Time|Frequency}{<measurement>}{Mean|StdDev}{XYZ}```

Where {time|Frequency} indicates whether the measurement comes from the time or frequency domain, measurement is one of the original measurement features, {Mean|StdDev} indicates whether the measurement was a mean or standard deviation variable, and {XYZ} is X, Y, or Z, indicating the axis along which the measurement was taken, or nothing, for magnitude measurements.

### Units

All variables are the mean of a selected measurement for each subject and activity pair. All values are numeric and normalised (bounded within [-1,1]).

* Acceleration measurements (variables containing "Acc") were made in g's (9.81 m.s⁻²) 
* Gyroscope measurements (variables containing "Gyro") were made in radians per second (rad.s⁻¹).
* Magnitudes of three-dimensional signals (variables containing "Mag") were calculated using the Euclidean norm.

### Variables

Time domain body acceleration mean along X, Y, and Z:

* __MeanTimeBodyAccMeanX__
* __MeanTimeBodyAccMeanY__
* __MeanTimeBodyAccMeanZ__

Time domain body acceleration standard deviation along X, Y, and Z:

* __MeanTimeBodyAccStdDevX__
* __MeanTimeBodyAccStdDevY__
* __MeanTimeBodyAccStdDevZ__

Time domain gravity acceleration mean along X, Y, and Z:

* __MeanTimeGravityAccMeanX__
* __MeanTimeGravityAccMeanY__
* __MeanTimeGravityAccMeanZ__

Time domain gravity acceleration standard deviation along X, Y, and Z:

* __MeanTimeGravityAccStdDevX__
* __MeanTimeGravityAccStdDevY__
* __MeanTimeGravityAccStdDevZ__

Time domain body jerk mean along X, Y, and Z:

* __MeanTimeBodyAccJerkMeanX__
* __MeanTimeBodyAccJerkMeanY__
* __MeanTimeBodyAccJerkMeanZ__

Time domain body jerk standard deviation along X, Y, and Z:

* __MeanTimeBodyAccJerkStdDevX__
* __MeanTimeBodyAccJerkStdDevY__
* __MeanTimeBodyAccJerkStdDevZ__

Time domain gyroscope mean along X, Y, and Z:

* __MeanTimeBodyGyroMeanX__
* __MeanTimeBodyGyroMeanY__
* __MeanTimeBodyGyroMeanZ__

Time domain gyroscope standard deviation along X, Y, and Z:

* __MeanTimeBodyGyroStdDevX__
* __MeanTimeBodyGyroStdDevY__
* __MeanTimeBodyGyroStdDevZ__

Time domain gyroscope jerk mean along X, Y, and Z:

* __MeanTimeBodyGyroJerkMeanX__
* __MeanTimeBodyGyroJerkMeanY__
* __MeanTimeBodyGyroJerkMeanZ__

Time domain gyroscope jerk standard deviation along X, Y, and Z:

* __MeanTimeBodyGyroJerkStdDevX__
* __MeanTimeBodyGyroJerkStdDevY__
* __MeanTimeBodyGyroJerkStdDevZ__

Time domain body acceleration magnitude mean:

* __MeanTimeBodyAccMagMean__

Time domain body acceleration magnitude standard deviation:

* __MeanTimeBodyAccMagStdDev__

Time domain gravity acceleration magnitude mean:

* __MeanTimeGravityAccMagMean__

Time domain gravity acceleration magnitude standard deviation:

* __MeanTimeGravityAccMagStdDev__

Time domain body jerk magnitude mean:

* __MeanTimeBodyAccJerkMagMean__

Time domain body jerk magnitude standard deviation:

* __MeanTimeBodyAccJerkMagStdDev__

Time domain gyroscope magnitude mean:

* __MeanTimeBodyGyroMagMean__

Time domain gyroscope magnitude standard deviation:

* __MeanTimeBodyGyroMagStdDev__

Time domain gyroscope jerk magnitude mean:

* __MeanTimeBodyGyroJerkMagMean__

Time domain gyroscope jerk magnitude standard deviation:

* __MeanTimeBodyGyroJerkMagStdDev__

Frequency domain body acceleration mean along X, Y, and Z:

* __MeanFrequencyBodyAccMeanX__
* __MeanFrequencyBodyAccMeanY__
* __MeanFrequencyBodyAccMeanZ__

Frequency domain body acceleration standard deviation along X, Y, and Z:

* __MeanFrequencyBodyAccStdDevX__
* __MeanFrequencyBodyAccStdDevY__
* __MeanFrequencyBodyAccStdDevZ__

Frequency domain body jerk mean along X, Y, and Z:

* __MeanFrequencyBodyAccJerkMeanX__
* __MeanFrequencyBodyAccJerkMeanY__
* __MeanFrequencyBodyAccJerkMeanZ__

Frequency domain body jerk standard deviation along X, Y, and Z:

* __MeanFrequencyBodyAccJerkStdDevX__
* __MeanFrequencyBodyAccJerkStdDevY__
* __MeanFrequencyBodyAccJerkStdDevZ__

Frequency domain gyroscope mean along X, Y, and Z:

* __MeanFrequencyBodyGyroMeanX__
* __MeanFrequencyBodyGyroMeanY__
* __MeanFrequencyBodyGyroMeanZ__

Frequency domain gyroscope standard deviation along X, Y, and Z:

* __MeanFrequencyBodyGyroStdDevX__
* __MeanFrequencyBodyGyroStdDevY__
* __MeanFrequencyBodyGyroStdDevZ__

Frequency domain body acceleration magnitude mean:

* __MeanFrequencyBodyAccMagMean__

Frequency domain body acceleration magnitude standard deviation:

* __MeanFrequencyBodyAccMagStdDev__

Frequency domain body jerk magnitude mean:

* __MeanFrequencyBodyAccJerkMagMean__

Frequency domain body jerk magnitude standard deviation:

* __MeanFrequencyBodyAccJerkMagStdDev__

Frequency domain gyroscope magnitude mean:

* __MeanFrequencyBodyGyroMagMean__

Frequency domain gyroscope magnitude standard deviation:

* __MeanFrequencyBodyGyroMagStdDev__

Frequency domain gyroscope jerk magnitude mean:

* __MeanFrequencyBodyGyroJerkMagMean__

Frequency domain gyroscope jerk magnitude standard deviation:

* __MeanFrequencyBodyGyroJerkMagStdDev__
