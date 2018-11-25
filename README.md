# Tidied Data from the Human Activity Recognition Using Smartphones Dataset #

This project uses data of the experiment measuring accelerometers data from the Samsung Galaxy S smartphone while subjects are performing different activities. More details about methods and each measurement can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## run_analysis.R

The script performs following steps:
1. Reads relevant data and loads necessary libraries
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in the previous step, creates a final tidy data set with an average of each variable for each activity and each subject (dataset_final.txt).

Required libraries:
* plyr
* dplyr

For more detailed steps see the comments to the run_analysis.R.

## dataset_final.txt

The final dataset is produced as a result of running run_analysis.R script in R version 3.5.1 (2018-07-02).

The data is in "wide" format as described in an article by [Hadley Wickham](http://vita.had.co.nz/papers/tidy-data.pdf); there is a single row for each subject/activity pair, and a single column for each measurement.

Dataset can be read into R with: 

```read.table("dataset_final.txt", header = TRUE)```

## CodeBook.md

Contains detailed description of the format of the dataset_final.txt file
