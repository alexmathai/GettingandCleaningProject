GettingandCleaningProject
=========================

Repository containing all the files relevant to the Getting and Cleaning Project

There are 3 files in this repository

readme.md - this file. Contains details on the other files and their use as well as the code book describing the variables extracted in the run_analysis.R script and contained in the output file.
run_analysis.R - an R script that can be run to create the tidydata output as per the assignment instructions.
tidydata.txt - output file created using the run_analysis.R file.

What the Script Does
====================

The script follows the order given in the assignment instructions by going through 5 steps (these are labeled in the script).

1. Loads all the source files (provided that they are in the same working directory as the script), first combining the training and test sets of each file type (x,y, subject), and then combining them into one data set. [10,299 observations x 563 variables]

2. Extracts only the measurements that are means or standard deviations [10,299 x 81 variables]

3. Relabels the Activities from number identifiers to descriptive labels by using the terms found in activitylabels.txt

4. Cleans up the measurement descriptions (column names) by removing parentheses and dashes

5. Creates a separate tidy data set that gives the average of each of the measurements by Subject and Activity [180 x 81].

Final step - Write to a text file [tidydata.txt]. This isn't explicitly in the assignment instructions, but it is necessary to upload the output currently to the submission platform.

Code Book
=========

The set of variables to include was open to interpretation since the instructions for the assignment asked for: "Extracts only the measurements on the mean and standard deviation for each measurement." - which is slightly ambiguous. I chose to interpret this as openly as possible and therefore included some variables that could arguably be called calculations or derivatives based on the fact that they are not true "measurements" but transformations of other measurements.

This is a list of the 81 variables:

[1] "Subject" - the Subject ID, from 1 to 30
[2] "Activity" - the activity the subject was performing.  1 of 6 of: walking, walking up, walking down, standing, sitting or laying.

The rest of the variables are measurements, as described in the features_info.txt provided from the source files.  Below is a description of what they are:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

These are the variables found in the tidy data set:
[3]"tBodyAccmeanX"
[4] "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX"
[7] "tBodyAccstdY" "tBodyAccstdZ" "tGravityAccmeanX"
[10] "tGravityAccmeanY" "tGravityAccmeanZ" "tGravityAccstdX"
[13] "tGravityAccstdY" "tGravityAccstdZ" "tBodyAccJerkmeanX"
[16] "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyAccJerkstdX"
[19] "tBodyAccJerkstdY" "tBodyAccJerkstdZ" "tBodyGyromeanX"
[22] "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyrostdX"
[25] "tBodyGyrostdY" "tBodyGyrostdZ" "tBodyGyroJerkmeanX"
[28] "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyGyroJerkstdX"
[31] "tBodyGyroJerkstdY" "tBodyGyroJerkstdZ" "tBodyAccMagmean"
[34] "tBodyAccMagstd" "tGravityAccMagmean" "tGravityAccMagstd"
[37] "tBodyAccJerkMagmean" "tBodyAccJerkMagstd" "tBodyGyroMagmean"
[40] "tBodyGyroMagstd" "tBodyGyroJerkMagmean" "tBodyGyroJerkMagstd"
[43] "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ"
[46] "fBodyAccstdX" "fBodyAccstdY" "fBodyAccstdZ"
[49] "fBodyAccmeanFreqX" "fBodyAccmeanFreqY" "fBodyAccmeanFreqZ"
[52] "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ"
[55] "fBodyAccJerkstdX" "fBodyAccJerkstdY" "fBodyAccJerkstdZ"
[58] "fBodyAccJerkmeanFreqX" "fBodyAccJerkmeanFreqY" "fBodyAccJerkmeanFreqZ"
[61] "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ"
[64] "fBodyGyrostdX" "fBodyGyrostdY" "fBodyGyrostdZ"
[67] "fBodyGyromeanFreqX" "fBodyGyromeanFreqY" "fBodyGyromeanFreqZ"
[70] "fBodyAccMagmean" "fBodyAccMagstd" "fBodyAccMagmeanFreq"
[73] "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagstd" "fBodyBodyAccJerkMagmeanFreq" [76] "fBodyBodyGyroMagmean" "fBodyBodyGyroMagstd" "fBodyBodyGyroMagmeanFreq"
[79] "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd" "fBodyBodyGyroJerkMagmeanFreq"
