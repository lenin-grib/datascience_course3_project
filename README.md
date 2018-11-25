# Tidied Data from the Human Activity Recognition Using Smartphones Dataset #

This project uses data of the experiment measuring accelerometers data from the Samsung Galaxy S smartphone while subjects are performing different activities. More details about methods and each measurement can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The script performs following steps:
1. Reads relevant data and loads necessary libraries
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data is in "wide" format as described in an article by [Hadley Wickham](http://vita.had.co.nz/papers/tidy-data.pdf); there is a single row for each subject/activity pair, and a single column for each measurement.

The final data set can be found in the dataset_final.txt file, which can be read into R with read.table("dataset_final.txt", header = TRUE). A detailed description of the variables can be found in CodeBook.md. 
