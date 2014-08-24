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

Loads all the source files (provided that they are in the same working directory as the script), first combining the training and test sets of each file type (x,y, subject), and then combining them into one data set. [10,299 observations x 563 variables]

Extracts only the measurements that are means or standard deviations [10,299 x 81 variables]

Relabels the Activities from number identifiers to descriptive labels by using the terms found in activitylabels.txt

Cleans up the measurement descriptions (column names) by removing parentheses and dashes

Creates a separate tidy data set that gives the average of each of the measurements by Subject and Activity [180 x 81].

Final step - Write to a text file [tidydata.txt]. This isn't explicitly in the assignment instructions, but it is necessary to upload the output currently to the submission platform.

Code Book
=========

The set of variables to include was open to interpretation since the instructions for the assignment asked for: "Extracts only the measurements on the mean and standard deviation for each measurement." - which is slightly ambiguous. I chose to interpret this as openly as possible and therefore included some variables that could arguably be called calculations or derivatives based on the fact that they are not true "measurements" but transformations of other measurements.

This is a list of the 81 variables:

[1] "Subject" "Activity" "tBodyAccmeanX"
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
